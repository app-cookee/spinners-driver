part of 'delivery_bloc.dart';

@freezed
abstract class DeliveryState with _$DeliveryState {
  factory DeliveryState({
    required Status getOrderDetailStatus,
    required OrderResponse orderDetails,
  }) = _DeliveryState;
  factory DeliveryState.initial() => DeliveryState(
      getOrderDetailStatus: Status.initial(),
      orderDetails: const OrderResponse(),
      );
}
