import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/src/domain/models/order_details_response_model/order_details_response_model.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/models/service_list_datamodel/service_list_datamodel.dart';
import 'package:spinners_driver/src/domain/respositories/order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderRepository orderRepository;
  OrderBloc(
    this.orderRepository,
  ) : super(OrderState.initial()) {
    on<_GetOrdersList>(_onGetOrdersList);
    on<_PaginateOrdersList>(_onPaginateOrdersList);
    on<_GetOrderDetails>(_onGetOrderDetails);
    on<_ConfirmPickup>(_onConfirmPickup);
    on<_AddBag>(_onAddBag);
    on<_CreateNewBag>(_onCreateNewBag);
    on<_GetServicesList>(_onGetServicesList);
    on<_UpdateScannedBagsLocally>(_onUpdateScannedBagsLocally);
    on<_UpdateScannedBagsForNewBag>(_onUpdateScannedBagsForNewBag);
    on<_RemoveBag>(_onRemoveBag);
    on<_RemoveBagLocally>(_onRemoveBagLocally);
  }
  
  FutureOr<void> _onGetOrderDetails(event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        getOrderDetailStatus: Status.loading(),
      ));
      var response = await orderRepository.getOrdersDetail(event.orderId);
      emit(state.copyWith(getOrderDetailStatus: Status.success(), orderDetails: response));
    } catch (e) {
      emit(state.copyWith(getOrderDetailStatus: Status.failure(e.toString())));
    }
  }

  FutureOr<void> _onConfirmPickup(_ConfirmPickup event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        confirmPickupStatus: Status.loading(),
      ));
      await orderRepository.pickupOrder(event.orderId, event.driverNotes);
      emit(state.copyWith(
        confirmPickupStatus: Status.success(),
      ));
    } catch (e) {
      emit(state.copyWith(
        confirmPickupStatus: Status.failure(e.toString()),
      ));
    }
  }

  FutureOr<void> _onAddBag(_AddBag event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        addBagStatus: Status.loading(),
      ));
      await orderRepository.addBag(event.orderItemId, event.bagId);
      emit(state.copyWith(
        addBagStatus: Status.success(),
      ));
    } catch (e) {
      emit(state.copyWith(
        addBagStatus: Status.failure(e.toString()),
      ));
    }
  }

  FutureOr<void> _onCreateNewBag(_CreateNewBag event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        createNewBagStatus: Status.loading(),
      ));
      await orderRepository.createNewBag(event.bagId, event.orderId, event.serviceId);
      emit(state.copyWith(
        createNewBagStatus: Status.success(),
      ));
    } catch (e) {
      emit(state.copyWith(
        createNewBagStatus: Status.failure(e.toString()),
      ));
    }
  }
  
 FutureOr<void> _onGetOrdersList(
      _GetOrdersList event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        getOrderListStatus: Status.loading(),
      ));
         var response = await orderRepository.getOrdersList(event.limit,event.skip,event.filter,event.expressOnly,event.latitude,event.longitude,event.searchText);
        final bool hasMoreItems = response.orderList.length == event.limit;
        emit(state.copyWith(
          getOrderListStatus: Status.success(), ordersList: response.orderList,   totalCount: response.totalCount,
      hasMore: hasMoreItems, // Add this line!
      isLoadingMore: false));
    } catch (e) {
      emit(state.copyWith(
        getOrderListStatus: Status.failure(
          e.toString(),
        ),
      ));
    }
  }



  FutureOr<void> _onPaginateOrdersList(_PaginateOrdersList event, Emitter<OrderState> emit) async{
    try{
      log("paginating");
              emit(state.copyWith(
      isLoadingMore: true
    ));
      var response = await orderRepository.getOrdersList(event.limit,event.skip,event.filter,event.expressOnly,event.latitude,event.longitude,event.searchText);
       final newList = [...state.ordersList, ...response.orderList];
           final bool hasMoreItems = response.orderList.length >= event.limit;
              emit(state.copyWith(
       ordersList : newList,
        totalCount: response.totalCount,
        
        hasMore: hasMoreItems,
        isLoadingMore: false,
      ));
    }
    catch (e) {
      log("notpaginating");
      emit(state.copyWith(
       isLoadingMore: false
      ));
    }
  }
  FutureOr<void> _onGetServicesList(_GetServicesList event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        getServicesListStatus: Status.loading(),
      ));
      var response = await orderRepository.getServices(event.limit, event.skip);
      emit(state.copyWith(
        getServicesListStatus: Status.success(),
        servicesList: response,
      ));
    } catch (e) {
      log('Error getting services list: $e', name: "OrderBloc");
      emit(state.copyWith(
        getServicesListStatus: Status.failure(
          e.toString(),
        ),
      ));
    }
  }

  FutureOr<void> _onUpdateScannedBagsLocally(_UpdateScannedBagsLocally event, Emitter<OrderState> emit) async {
    try {
      // Create a new bag entry
      final newBag = ScannedBags(
        id: DateTime.now().millisecondsSinceEpoch.toString(), // Temporary ID
        orderServiceId: event.orderItemId,
        bagId: event.bagId,
      );

      // Update the ordered items list with the new bag
      final updatedOrderedItems = state.orderDetails.orderedItems.map((item) {
        if (item.id == event.orderItemId) {
          return item.copyWith(
            scannedBags: [...item.scannedBags, newBag],
          );
        }
        return item;
      }).toList();

      // Update the order details with the new ordered items
      final updatedOrderDetails = state.orderDetails.copyWith(
        orderedItems: updatedOrderedItems,
      );

      emit(state.copyWith(
        orderDetails: updatedOrderDetails,
      ));
    } catch (e) {
      log('Error updating scanned bags locally: $e', name: "OrderBloc");
    }
  }

  FutureOr<void> _onUpdateScannedBagsForNewBag(_UpdateScannedBagsForNewBag event, Emitter<OrderState> emit) async {
    try {
      // Create a new bag entry
      final newBag = ScannedBags(
        id: DateTime.now().millisecondsSinceEpoch.toString(), // Temporary ID
        orderServiceId: '', // Will be set when the order item is found
        bagId: event.bagId,
      );

      // Find the ordered item for this service and update it
      final updatedOrderedItems = state.orderDetails.orderedItems.map((item) {
        if (item.service.id == event.serviceId) {
          return item.copyWith(
            scannedBags: [...item.scannedBags, newBag.copyWith(orderServiceId: item.id)],
          );
        }
        return item;
      }).toList();

      // Update the order details with the new ordered items
      final updatedOrderDetails = state.orderDetails.copyWith(
        orderedItems: updatedOrderedItems,
      );

      emit(state.copyWith(
        orderDetails: updatedOrderDetails,
      ));
    } catch (e) {
      log('Error updating scanned bags for new bag: $e', name: "OrderBloc");
    }
  }


  FutureOr<void> _onRemoveBag(_RemoveBag event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        removeBagStatus: Status.loading(),
      ));
      await orderRepository.removeBag(event.id);
      emit(state.copyWith(
        removeBagStatus: Status.success(),
      ));
    } catch (e) {
      emit(state.copyWith(
        removeBagStatus: Status.failure(
          e.toString(),
        ),
      ));
    }
  }

  FutureOr<void> _onRemoveBagLocally(_RemoveBagLocally event, Emitter<OrderState> emit) async {
    try {
      // Remove the bag from the local state by scanned bag id
      final updatedOrderedItems = state.orderDetails.orderedItems.map((item) {
        // Filter out the bag with the specified id
        final updatedScannedBags = item.scannedBags.where((bag) => bag.id != event.id).toList();
        return item.copyWith(
          scannedBags: updatedScannedBags,
        );
      }).toList();

      // Update the order details with the new ordered items
      final updatedOrderDetails = state.orderDetails.copyWith(
        orderedItems: updatedOrderedItems,
      );

      emit(state.copyWith(
        orderDetails: updatedOrderDetails,
      ));
    } catch (e) {
      log('Error removing bag locally: $e', name: "OrderBloc");
    }
  }
}
