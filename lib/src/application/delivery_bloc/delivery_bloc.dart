import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/respositories/delivery_repository.dart';
part 'delivery_event.dart';
part 'delivery_state.dart';
part 'delivery_bloc.freezed.dart';

@injectable
class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  DeliveryRepository deliveryRepository;

  DeliveryBloc(
    this.deliveryRepository,
  ) : super(DeliveryState.initial()) {
    on<_GetOrderDetails>(_onGetOrderDetails);
    on<_ConfirmDelivery>(_onConfirmDelivery);
  }

  FutureOr<void> _onGetOrderDetails(
      _GetOrderDetails event, Emitter<DeliveryState> emit) async {
    try {
      emit(state.copyWith(
        getOrderDetailStatus: Status.loading(),
        orderDetails: const OrderResponse(),
      ));
      var response = await deliveryRepository.getOrdersDetail(event.orderId);
      emit(state.copyWith(
          getOrderDetailStatus: Status.success(), orderDetails: response));
    } catch (e) {
      emit(state.copyWith(getOrderDetailStatus: Status.failure(e.toString())));
    }
  }

  FutureOr<void> _onConfirmDelivery(
      _ConfirmDelivery event, Emitter<DeliveryState> emit) async {
    try {
      emit(state.copyWith(
        confirmDeliveryStatus: Status.loading(),
      ));
      var response = await deliveryRepository.confirmDelivery(event.id,event.paymentMethod,event.receivedAmount);
      emit(state.copyWith(
          confirmDeliveryStatus: Status.success()));
    } catch (e) {
      emit(state.copyWith(confirmDeliveryStatus: Status.failure(e.toString())));
    }
  }
}
