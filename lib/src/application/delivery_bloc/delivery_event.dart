part of 'delivery_bloc.dart';

@freezed
abstract class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.getOrderDetails({required String orderId}) = _GetOrderDetails;
  const factory DeliveryEvent.confirmDelivery({required String id,required String paymentMethod,required double receivedAmount}) = _ConfirmDelivery;
}
