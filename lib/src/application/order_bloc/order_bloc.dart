import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/src/domain/models/cash_settlement_model/cash_settlement_model.dart';
import 'package:spinners_driver/src/domain/models/order_details_response_model/order_details_response_model.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart' hide OrderedServices;






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
    on<_MoveBag>(_onMoveBag);
     on<_GetMyOrders>(_onGetMyOrders);
       on<_paginateMyOrdersList>(_onPaginateMyOrdersList);
    on<_GetCashSettlments>(_onGetCashSettlments);
    on<_PaginateCashSettlmentsList>(_onPaginateCashSettlmentsList);
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
      log('Adding bag: orderItemId=${event.orderItemId}, bagId=${event.bagId}', name: "OrderBloc");
      emit(state.copyWith(
        addBagStatus: Status.loading(),
      ));
      await orderRepository.addBag(event.orderItemId, event.bagId);
      emit(state.copyWith(
        addBagStatus: Status.success(),
      ));
      
      // Refresh order details after successful bag addition
      await _refreshOrderDetails(emit);
    } catch (e) {
      log('Error adding bag: $e', name: "OrderBloc");
      emit(state.copyWith(
        addBagStatus: Status.failure(e.toString()),
      ));
    }
  }

  FutureOr<void> _onCreateNewBag(_CreateNewBag event, Emitter<OrderState> emit) async {
    try {
      log('Creating new bag: bagId=${event.bagId}, orderId=${event.orderId}, serviceId=${event.serviceId}', name: "OrderBloc");
      emit(state.copyWith(
        createNewBagStatus: Status.loading(),
      ));
      await orderRepository.createNewBag(event.bagId, event.orderId, event.serviceId);
      emit(state.copyWith(
        createNewBagStatus: Status.success(),
      ));
      
      // Refresh order details after successful new bag creation
      await _refreshOrderDetails(emit);
    } catch (e) {
      log('Error creating new bag: $e', name: "OrderBloc");
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
             final bool hasMoreItems =  response.orderList.length < response.totalCount;
        
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
          
              final bool hasMoreItems = newList.length < response.totalCount;
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
      var response = await orderRepository.getServices(event.limit, event.skip,event.serviceMenuId);
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
      final updatedOrderedItems = state.orderDetails.orderedServices.map((service) {
        if (service.id == event.orderItemId) {
          return service.copyWith(
            // service: item.service.copyWith(
              bags: [...service.bags, newBag],
            // ),
          );
        }
        return service;
      }).toList();

      // Update the order details with the new ordered items
      final updatedOrderDetails = state.orderDetails.copyWith(
        orderedServices: updatedOrderedItems,
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
      final updatedOrderedItems = state.orderDetails.orderedServices.map((service) {
        if (service.service.id == event.serviceId) {
          return service.copyWith(
            // service: service.service.copyWith(
            bags: [...service.bags, newBag.copyWith(orderServiceId: service.id)],
            // ),
          );
        }
        return service;
      }).toList();

      // Update the order details with the new ordered items
      final updatedOrderDetails = state.orderDetails.copyWith(
        orderedServices: updatedOrderedItems,
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
      
      // Refresh order details after successful bag removal
      await _refreshOrderDetails(emit);
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
      final updatedOrderedItems = state.orderDetails.orderedServices.map((service) {
        // Filter out the bag with the specified id
        final updatedScannedBags = service.bags.where((bag) => bag.id != event.id).toList();
        return service.copyWith(
          // service: item.service.copyWith(
            bags: updatedScannedBags,
          // ),
        );
      }).toList();

      // Update the order details with the new ordered items
      final updatedOrderDetails = state.orderDetails.copyWith(
        orderedServices: updatedOrderedItems,
      );

      emit(state.copyWith(
        orderDetails: updatedOrderDetails,
      ));
    } catch (e) {
      log('Error removing bag locally: $e', name: "OrderBloc");
    }
  }

  FutureOr<void> _onMoveBag(_MoveBag event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        moveBagStatus: Status.loading(),
      ));

      log('Moving bag ${event.bagId} from scanned bag ID ${event.fromScannedBagId} to service ${event.toServiceId}', name: "OrderBloc");
      
      // First remove the bag from the old service
      log('Removing bag from old service...', name: "OrderBloc");
      await orderRepository.removeBag(event.fromScannedBagId);
      log('Bag removed from old service successfully', name: "OrderBloc");

      // Then add the bag to the new service
      if (event.isQuickOrder) {
        log('Adding bag to new service for quick order...', name: "OrderBloc");
        await orderRepository.createNewBag(event.bagId, event.orderId, event.toServiceId);
        log('Bag added to new service for quick order successfully', name: "OrderBloc");
      } else {
        log('Adding bag to new service for normal order...', name: "OrderBloc");
        await orderRepository.addBag(event.toOrderItemId, event.bagId);
        log('Bag added to new service for normal order successfully', name: "OrderBloc");
      }

      emit(state.copyWith(
        moveBagStatus: Status.success(),
      ));
      
      // Refresh order details after successful bag move
      log('Move bag operation successful, refreshing order details...', name: "OrderBloc");
      await _refreshOrderDetails(emit);
      log('Order details refreshed after move bag operation', name: "OrderBloc");
    } catch (e) {
      emit(state.copyWith(
        moveBagStatus: Status.failure(e.toString()),
      ));
    }
  }

  /// Helper method to refresh order details from the server
  Future<void> _refreshOrderDetails(Emitter<OrderState> emit) async {
    try {

      // Only refresh if we have an order ID
      if (state.orderDetails.id.isNotEmpty) {
         emit(state.copyWith(getOrderDetailStatus: Status.loading()));
        log('Refreshing order details for order ID: ${state.orderDetails.id}', name: "OrderBloc");
        final response = await orderRepository.getOrdersDetail(state.orderDetails.id);
        
        // For now, use the server response directly to ensure we get the most up-to-date state
        // The server should have the correct state after the move operation
        final updatedOrderDetails = response;
        
        // Log the bag counts for debugging
        log('Server response bag counts:', name: "OrderBloc");
        for (final item in response.orderedServices) {
          log('Service ${item.service.name} (${item.service.id}): ${item.bags.length} bags', name: "OrderBloc");
        }
        
        log('Emitting updated order details with ${updatedOrderDetails.orderedServices.length} ordered items', name: "OrderBloc");
        
        // Log the current state before update
        log('Current state has ${state.orderDetails.orderedServices.length} ordered items', name: "OrderBloc");
        
        emit(state.copyWith(orderDetails: updatedOrderDetails,getOrderDetailStatus: Status.success()));
        
        // Log the new state after update
        log('New state has ${updatedOrderDetails.orderedServices.length} ordered items', name: "OrderBloc");
        log('State updated successfully', name: "OrderBloc");
      }
    } catch (e) {
      log('Error refreshing order details: $e', name: "OrderBloc");
      // Don't emit error state here as it might interfere with the success state of the main operation
    }
  }

  /// Helper method to preserve services for normal orders even if they have no bags
  OrderDetailsResponseModel _preserveServicesForNormalOrders(OrderDetailsResponseModel serverResponse) {
    // Check if this is a normal order (not a quick order)
    // Quick orders typically have a different structure or flag
    final isQuickOrder = serverResponse.type.toLowerCase().contains('oneTapOrder') || 
                        serverResponse.expressService;
    
    if (isQuickOrder) {
      // For quick orders, use the server response as is
      return serverResponse;
    }
    
    // For normal orders, preserve all services from the original state
    // that might have been removed by the server when they became empty
    final originalServices = state.orderDetails.orderedServices;
    final serverServices = serverResponse.orderedServices;
    
    // Create a map of server services by service ID for quick lookup
    final serverServicesMap = <String, OrderedServices>{};
    for (final service in serverServices) {
      serverServicesMap[service.service.id] = service;
    }
    
    // Merge original services with server services
    final preservedServices = <OrderedServices>[];
    for (final originalService in originalServices) {
      final serviceId = originalService.service.id;
      final serverService = serverServicesMap[serviceId];
      
      if (serverService != null) {
        // Service exists in server response, use server data (with updated bag counts)
        // This ensures we get the most up-to-date information from the server
        preservedServices.add(serverService);
        
        // Log the bag count change for debugging
        final originalBagCount = originalService.bags.length;
        final newBagCount = serverService.bags.length;
        if (originalBagCount != newBagCount) {
          log('Service ${serverService.service.name} bag count changed: $originalBagCount -> $newBagCount', name: "OrderBloc");
        }
      } else {
        // Service was removed by server (probably because it has no bags)
        // Preserve it with empty scanned bags list
        preservedServices.add(originalService.copyWith(
          bags: []
          // service: originalService.service.copyWith(
          //   scannedBags: [],
          // ),
        ));
        
        log('Service ${originalService.service.name} preserved with empty bags (removed by server)', name: "OrderBloc");
      }
    }
    
    // Add any new services that might have been added by the server
    for (final serverService in serverServices) {
      final serviceId = serverService.service.id;
      final existsInOriginal = originalServices.any((service) => service.service.id == serviceId);
      
      if (!existsInOriginal) {
        preservedServices.add(serverService);
        log('New service ${serverService.service.name} added by server with ${serverService.bags.length} bags', name: "OrderBloc");
      }
    }
    
    // Log the preservation process for debugging
    log('Preserving services: Original=${originalServices.length}, Server=${serverServices.length}, Final=${preservedServices.length}', name: "OrderBloc");
    
    return serverResponse.copyWith(
      orderedServices: preservedServices,
    );
  }

FutureOr<void> _onGetMyOrders(_GetMyOrders event, Emitter<OrderState> emit) async {
   try {
      emit(state.copyWith(
        getMyOrderListStatus: Status.loading(),
      ));
         var response = await orderRepository.getMyOrdersList(event.limit,event.skip,event.filter,event.searchText,event.from,event.to);
             final bool hasMoreItems =  response.orderList.length < response.totalCount;
        
        emit(state.copyWith(getMyOrderListStatus: Status.success(), 
      myordersList: response.orderList,   myOrdersCount: response.totalCount,
      myOrdershasMore: hasMoreItems, // Add this line!
      myOrdersisLoadingMore: false));
    } catch (e) {
      emit(state.copyWith(
       getMyOrderListStatus: Status.failure(
          e.toString(),
        ),
      ));
    }
  }


  FutureOr<void> _onPaginateMyOrdersList(_paginateMyOrdersList event, Emitter<OrderState> emit)async {
        try{
      log("paginating pick and dropoff history");
              emit(state.copyWith(
      myOrdersisLoadingMore: true
    ));
      var response = await orderRepository.getMyOrdersList(event.limit,event.skip,event.filter,event.searchText,event.from,event.to);
       final newList = [...state.myordersList, ...response.orderList];

           final bool hasMoreItems = newList.length < response.totalCount;

              emit(state.copyWith(
       myordersList : newList,
        myOrdersCount: response.totalCount,
        
        myOrdershasMore: hasMoreItems,
        myOrdersisLoadingMore: false,
      ));
    }
    catch (e) {
      log("error in paginating pick and dropoff history");
      emit(state.copyWith(
       myOrdersisLoadingMore: false
      ));
    }
  }
  

  FutureOr<void> _onGetCashSettlments(_GetCashSettlments event, Emitter<OrderState> emit) async {
    try {
      emit(state.copyWith(
        getCashSettlmentListStatus: Status.loading(),
      ));
         var response = await orderRepository.getCashSettlmentsList(event.limit,event.skip,event.from,event.to);
          
        final bool hasMoreItems = response.cashSettlementList.length < response.totalCount;
        emit(state.copyWith(getCashSettlmentListStatus: Status.success(), 
      cashSettlmentsList: response.cashSettlementList,   cashSettlmentsCount: response.totalCount,
      cashSettlmentshasMore: hasMoreItems,
      cashSettlmentsisLoadingMore: false));
    } catch (e) {
      emit(state.copyWith(
       getCashSettlmentListStatus: Status.failure(
          e.toString(),
        ),
      ));
    }
  }

  FutureOr<void> _onPaginateCashSettlmentsList(_PaginateCashSettlmentsList event, Emitter<OrderState> emit) async {
    try{
      log("paginating pick and cash settlement history");
              emit(state.copyWith(
      cashSettlmentsisLoadingMore: true
    ));
      var response = await orderRepository.getCashSettlmentsList(event.limit,event.skip,event.from,event.to);
       final newList = [...state.cashSettlmentsList, ...response.cashSettlementList];
             final bool hasMoreItems = newList.length < response.totalCount;
              emit(state.copyWith(
       cashSettlmentsList : newList,
        cashSettlmentsCount: response.totalCount,
        
        cashSettlmentshasMore: hasMoreItems,
        cashSettlmentsisLoadingMore: false,
      ));
    }
    catch (e) {
      log("error in paginating cash settlement history");
      emit(state.copyWith(
       cashSettlmentsisLoadingMore: false
      ));
    }
  }
}


