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
    on<_GetOrderDetails>(_onGetOrderDetails);
    on<_ConfirmPickup>(_onConfirmPickup);
    on<_AddBag>(_onAddBag);
    on<_CreateNewBag>(_onCreateNewBag);
    on<_GetServicesList>(_onGetServicesList);
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
         var response = await orderRepository.getOrdersList(event.limit,event.skip,event.filter,event.expressOnly,event.latitude,event.longitude);
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
}