import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/respositories/order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
   OrderRepository orderRepository;
  OrderBloc(this.orderRepository,) : super(OrderState.initial()) {
 on<_GetOrdersList>(_onGetOrdersList);
  }
    FutureOr<void> _onGetOrdersList(_GetOrdersList event, Emitter<OrderState> emit) async{
        try {

    } catch (e) {
     
         emit(state.copyWith(getOrderListStatus: Status.failure(e.toString(),),));
    }
  }

}
