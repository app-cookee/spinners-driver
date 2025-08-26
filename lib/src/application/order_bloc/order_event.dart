part of 'order_bloc.dart';

@freezed
abstract class OrderEvent with _$OrderEvent {
  // const factory OrderEvent.getOrdersList({required int limit, required int skip, required String filter}) = _GetOrdersList;
  const factory OrderEvent.getOrderDetails({required String orderId}) = _GetOrderDetails;
  const factory OrderEvent.confirmPickup({required String orderId, required String driverNotes}) = _ConfirmPickup;
  const factory OrderEvent.addBag({required String orderItemId, required String bagId}) = _AddBag;
  const factory OrderEvent.createNewBag({required String bagId, required String orderId, required String serviceId}) = _CreateNewBag;
// }
     const factory OrderEvent.getOrdersList({required int limit,required int skip,required String filter,required bool expressOnly,required double? latitude,required double? longitude,required String searchText}) = _GetOrdersList;
}
