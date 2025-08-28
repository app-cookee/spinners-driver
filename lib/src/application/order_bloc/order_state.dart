part of 'order_bloc.dart';

@freezed
abstract class OrderState with _$OrderState {
  const factory OrderState({
    required Status getOrderListStatus,
    required List<OrderResponse> ordersList,
    required int totalCount,
    required bool hasMore,
    required bool isLoadingMore,
    required Status paginationStatus,
    required Status getOrderDetailStatus,
    required OrderDetailsResponseModel orderDetails,
    required Status confirmPickupStatus,
    required Status addBagStatus,
    required Status createNewBagStatus,
    required Status getServicesListStatus,
    required Status removeBagStatus,
    required List<ServiceListDatamodel> servicesList,
  }) = _OrderState;
  factory OrderState.initial() => OrderState(
        getOrderListStatus: Status.initial(),
        ordersList: [],
        hasMore: true,
        isLoadingMore: false,
        paginationStatus: Status.initial(),
        totalCount: 0,
        getOrderDetailStatus: Status.initial(),
        orderDetails:const OrderDetailsResponseModel(),
        confirmPickupStatus: Status.initial(),
        addBagStatus: Status.initial(),
        createNewBagStatus: Status.initial(),
        getServicesListStatus: Status.initial(),
        servicesList: [],
        removeBagStatus: Status.initial(),
      );
}
