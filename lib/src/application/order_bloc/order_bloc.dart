import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
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
}
