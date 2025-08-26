part of 'delivery_bloc.dart';

@freezed
abstract class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.getOrderDetails({required String orderId}) = _GetOrderDetails;
}
