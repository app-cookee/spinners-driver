part of 'order_bloc.dart';

@freezed
abstract class OrderEvent with _$OrderEvent {
     const factory OrderEvent.getOrdersList({required int limit,required int skip,required String filter,required bool expressOnly, double? latitude, double? longitude, String? searchText}) = _GetOrdersList;
}