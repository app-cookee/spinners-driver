part of 'order_bloc.dart';

@freezed
abstract class OrderEvent with _$OrderEvent {
     const factory OrderEvent.getOrdersList({required int limit,required int skip,required String filter,required bool expressOnly, double? latitude, double? longitude, String? searchText}) = _GetOrdersList;
       const factory OrderEvent.paginateOrdersList({required int skip, required int limit,required String filter,required bool expressOnly, double? latitude, double? longitude, String? searchText}) = _PaginateOrdersList;
  const factory OrderEvent.getOrderDetails({required String orderId}) = _GetOrderDetails;
  const factory OrderEvent.confirmPickup({required String orderId, required String driverNotes}) = _ConfirmPickup;
  const factory OrderEvent.addBag({required String orderItemId, required String bagId}) = _AddBag;
  const factory OrderEvent.createNewBag({required String bagId, required String orderId, required String serviceId}) = _CreateNewBag;
  const factory OrderEvent.getServicesList({required int limit, required int skip}) = _GetServicesList;
  const factory OrderEvent.updateScannedBagsLocally({required String orderItemId, required String bagId}) = _UpdateScannedBagsLocally;
  const factory OrderEvent.updateScannedBagsForNewBag({required String serviceId, required String bagId}) = _UpdateScannedBagsForNewBag;
  const factory OrderEvent.removeBag({required String id}) = _RemoveBag;
  const factory OrderEvent.removeBagLocally({required String id}) = _RemoveBagLocally;
  const factory OrderEvent.moveBag({required String bagId, required String fromScannedBagId, required String toOrderItemId, required String toServiceId, required String orderId, required bool isQuickOrder}) = _MoveBag;
    const factory OrderEvent.getMyOrders({required int limit,required int skip,required String filter, String? searchText,String? from,String? to}) = _GetMyOrders;
        const factory OrderEvent.paginateMyOrdersList({required int skip, required int limit,required String filter, String? searchText,String? from,String? to}) = _paginateMyOrdersList;
  const factory OrderEvent.getCashSettlments({required int limit,required int skip,String? from,String? to}) = _GetCashSettlments;
  const factory OrderEvent.paginateCashSettlmentsList({required int skip, required int limit,String? from,String? to}) = _PaginateCashSettlmentsList;

}

