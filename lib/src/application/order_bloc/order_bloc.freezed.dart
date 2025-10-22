// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderEvent()';
  }
}

/// @nodoc
class $OrderEventCopyWith<$Res> {
  $OrderEventCopyWith(OrderEvent _, $Res Function(OrderEvent) __);
}

/// Adds pattern-matching-related methods to [OrderEvent].
extension OrderEventPatterns on OrderEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrdersList value)? getOrdersList,
    TResult Function(_PaginateOrdersList value)? paginateOrdersList,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_ConfirmPickup value)? confirmPickup,
    TResult Function(_AddBag value)? addBag,
    TResult Function(_CreateNewBag value)? createNewBag,
    TResult Function(_GetServicesList value)? getServicesList,
    TResult Function(_UpdateScannedBagsLocally value)? updateScannedBagsLocally,
    TResult Function(_UpdateScannedBagsForNewBag value)?
        updateScannedBagsForNewBag,
    TResult Function(_RemoveBag value)? removeBag,
    TResult Function(_RemoveBagLocally value)? removeBagLocally,
    TResult Function(_MoveBag value)? moveBag,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_paginateMyOrdersList value)? paginateMyOrdersList,
    TResult Function(_GetCashSettlments value)? getCashSettlments,
    TResult Function(_PaginateCashSettlmentsList value)?
        paginateCashSettlmentsList,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that);
      case _PaginateOrdersList() when paginateOrdersList != null:
        return paginateOrdersList(_that);
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that);
      case _ConfirmPickup() when confirmPickup != null:
        return confirmPickup(_that);
      case _AddBag() when addBag != null:
        return addBag(_that);
      case _CreateNewBag() when createNewBag != null:
        return createNewBag(_that);
      case _GetServicesList() when getServicesList != null:
        return getServicesList(_that);
      case _UpdateScannedBagsLocally() when updateScannedBagsLocally != null:
        return updateScannedBagsLocally(_that);
      case _UpdateScannedBagsForNewBag()
          when updateScannedBagsForNewBag != null:
        return updateScannedBagsForNewBag(_that);
      case _RemoveBag() when removeBag != null:
        return removeBag(_that);
      case _RemoveBagLocally() when removeBagLocally != null:
        return removeBagLocally(_that);
      case _MoveBag() when moveBag != null:
        return moveBag(_that);
      case _GetMyOrders() when getMyOrders != null:
        return getMyOrders(_that);
      case _paginateMyOrdersList() when paginateMyOrdersList != null:
        return paginateMyOrdersList(_that);
      case _GetCashSettlments() when getCashSettlments != null:
        return getCashSettlments(_that);
      case _PaginateCashSettlmentsList()
          when paginateCashSettlmentsList != null:
        return paginateCashSettlmentsList(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrdersList value) getOrdersList,
    required TResult Function(_PaginateOrdersList value) paginateOrdersList,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_ConfirmPickup value) confirmPickup,
    required TResult Function(_AddBag value) addBag,
    required TResult Function(_CreateNewBag value) createNewBag,
    required TResult Function(_GetServicesList value) getServicesList,
    required TResult Function(_UpdateScannedBagsLocally value)
        updateScannedBagsLocally,
    required TResult Function(_UpdateScannedBagsForNewBag value)
        updateScannedBagsForNewBag,
    required TResult Function(_RemoveBag value) removeBag,
    required TResult Function(_RemoveBagLocally value) removeBagLocally,
    required TResult Function(_MoveBag value) moveBag,
    required TResult Function(_GetMyOrders value) getMyOrders,
    required TResult Function(_paginateMyOrdersList value) paginateMyOrdersList,
    required TResult Function(_GetCashSettlments value) getCashSettlments,
    required TResult Function(_PaginateCashSettlmentsList value)
        paginateCashSettlmentsList,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList():
        return getOrdersList(_that);
      case _PaginateOrdersList():
        return paginateOrdersList(_that);
      case _GetOrderDetails():
        return getOrderDetails(_that);
      case _ConfirmPickup():
        return confirmPickup(_that);
      case _AddBag():
        return addBag(_that);
      case _CreateNewBag():
        return createNewBag(_that);
      case _GetServicesList():
        return getServicesList(_that);
      case _UpdateScannedBagsLocally():
        return updateScannedBagsLocally(_that);
      case _UpdateScannedBagsForNewBag():
        return updateScannedBagsForNewBag(_that);
      case _RemoveBag():
        return removeBag(_that);
      case _RemoveBagLocally():
        return removeBagLocally(_that);
      case _MoveBag():
        return moveBag(_that);
      case _GetMyOrders():
        return getMyOrders(_that);
      case _paginateMyOrdersList():
        return paginateMyOrdersList(_that);
      case _GetCashSettlments():
        return getCashSettlments(_that);
      case _PaginateCashSettlmentsList():
        return paginateCashSettlmentsList(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrdersList value)? getOrdersList,
    TResult? Function(_PaginateOrdersList value)? paginateOrdersList,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_ConfirmPickup value)? confirmPickup,
    TResult? Function(_AddBag value)? addBag,
    TResult? Function(_CreateNewBag value)? createNewBag,
    TResult? Function(_GetServicesList value)? getServicesList,
    TResult? Function(_UpdateScannedBagsLocally value)?
        updateScannedBagsLocally,
    TResult? Function(_UpdateScannedBagsForNewBag value)?
        updateScannedBagsForNewBag,
    TResult? Function(_RemoveBag value)? removeBag,
    TResult? Function(_RemoveBagLocally value)? removeBagLocally,
    TResult? Function(_MoveBag value)? moveBag,
    TResult? Function(_GetMyOrders value)? getMyOrders,
    TResult? Function(_paginateMyOrdersList value)? paginateMyOrdersList,
    TResult? Function(_GetCashSettlments value)? getCashSettlments,
    TResult? Function(_PaginateCashSettlmentsList value)?
        paginateCashSettlmentsList,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that);
      case _PaginateOrdersList() when paginateOrdersList != null:
        return paginateOrdersList(_that);
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that);
      case _ConfirmPickup() when confirmPickup != null:
        return confirmPickup(_that);
      case _AddBag() when addBag != null:
        return addBag(_that);
      case _CreateNewBag() when createNewBag != null:
        return createNewBag(_that);
      case _GetServicesList() when getServicesList != null:
        return getServicesList(_that);
      case _UpdateScannedBagsLocally() when updateScannedBagsLocally != null:
        return updateScannedBagsLocally(_that);
      case _UpdateScannedBagsForNewBag()
          when updateScannedBagsForNewBag != null:
        return updateScannedBagsForNewBag(_that);
      case _RemoveBag() when removeBag != null:
        return removeBag(_that);
      case _RemoveBagLocally() when removeBagLocally != null:
        return removeBagLocally(_that);
      case _MoveBag() when moveBag != null:
        return moveBag(_that);
      case _GetMyOrders() when getMyOrders != null:
        return getMyOrders(_that);
      case _paginateMyOrdersList() when paginateMyOrdersList != null:
        return paginateMyOrdersList(_that);
      case _GetCashSettlments() when getCashSettlments != null:
        return getCashSettlments(_that);
      case _PaginateCashSettlmentsList()
          when paginateCashSettlmentsList != null:
        return paginateCashSettlmentsList(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int limit,
            int skip,
            String filter,
            bool expressOnly,
            double? latitude,
            double? longitude,
            String? searchText,
            String? pickupTo,
            String? deliveryTo)?
        getOrdersList,
    TResult Function(
            int skip,
            int limit,
            String filter,
            bool expressOnly,
            double? latitude,
            double? longitude,
            String? searchText,
            String pickupTo,
            String deliveryTo)?
        paginateOrdersList,
    TResult Function(String orderId)? getOrderDetails,
    TResult Function(String orderId, String driverNotes)? confirmPickup,
    TResult Function(String orderItemId, String bagId)? addBag,
    TResult Function(String bagId, String orderId, String serviceId)?
        createNewBag,
    TResult Function(int limit, int skip, String? serviceMenuId)?
        getServicesList,
    TResult Function(String orderItemId, String bagId)?
        updateScannedBagsLocally,
    TResult Function(String serviceId, String bagId)?
        updateScannedBagsForNewBag,
    TResult Function(String id)? removeBag,
    TResult Function(String id)? removeBagLocally,
    TResult Function(
            String bagId,
            String fromScannedBagId,
            String toOrderItemId,
            String toServiceId,
            String orderId,
            bool isQuickOrder)?
        moveBag,
    TResult Function(int limit, int skip, String filter, String? searchText,
            String? from, String? to)?
        getMyOrders,
    TResult Function(int skip, int limit, String filter, String? searchText,
            String? from, String? to)?
        paginateMyOrdersList,
    TResult Function(int limit, int skip, String? from, String? to)?
        getCashSettlments,
    TResult Function(int skip, int limit, String? from, String? to)?
        paginateCashSettlmentsList,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(
            _that.limit,
            _that.skip,
            _that.filter,
            _that.expressOnly,
            _that.latitude,
            _that.longitude,
            _that.searchText,
            _that.pickupTo,
            _that.deliveryTo);
      case _PaginateOrdersList() when paginateOrdersList != null:
        return paginateOrdersList(
            _that.skip,
            _that.limit,
            _that.filter,
            _that.expressOnly,
            _that.latitude,
            _that.longitude,
            _that.searchText,
            _that.pickupTo,
            _that.deliveryTo);
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that.orderId);
      case _ConfirmPickup() when confirmPickup != null:
        return confirmPickup(_that.orderId, _that.driverNotes);
      case _AddBag() when addBag != null:
        return addBag(_that.orderItemId, _that.bagId);
      case _CreateNewBag() when createNewBag != null:
        return createNewBag(_that.bagId, _that.orderId, _that.serviceId);
      case _GetServicesList() when getServicesList != null:
        return getServicesList(_that.limit, _that.skip, _that.serviceMenuId);
      case _UpdateScannedBagsLocally() when updateScannedBagsLocally != null:
        return updateScannedBagsLocally(_that.orderItemId, _that.bagId);
      case _UpdateScannedBagsForNewBag()
          when updateScannedBagsForNewBag != null:
        return updateScannedBagsForNewBag(_that.serviceId, _that.bagId);
      case _RemoveBag() when removeBag != null:
        return removeBag(_that.id);
      case _RemoveBagLocally() when removeBagLocally != null:
        return removeBagLocally(_that.id);
      case _MoveBag() when moveBag != null:
        return moveBag(_that.bagId, _that.fromScannedBagId, _that.toOrderItemId,
            _that.toServiceId, _that.orderId, _that.isQuickOrder);
      case _GetMyOrders() when getMyOrders != null:
        return getMyOrders(_that.limit, _that.skip, _that.filter,
            _that.searchText, _that.from, _that.to);
      case _paginateMyOrdersList() when paginateMyOrdersList != null:
        return paginateMyOrdersList(_that.skip, _that.limit, _that.filter,
            _that.searchText, _that.from, _that.to);
      case _GetCashSettlments() when getCashSettlments != null:
        return getCashSettlments(_that.limit, _that.skip, _that.from, _that.to);
      case _PaginateCashSettlmentsList()
          when paginateCashSettlmentsList != null:
        return paginateCashSettlmentsList(
            _that.skip, _that.limit, _that.from, _that.to);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int limit,
            int skip,
            String filter,
            bool expressOnly,
            double? latitude,
            double? longitude,
            String? searchText,
            String? pickupTo,
            String? deliveryTo)
        getOrdersList,
    required TResult Function(
            int skip,
            int limit,
            String filter,
            bool expressOnly,
            double? latitude,
            double? longitude,
            String? searchText,
            String pickupTo,
            String deliveryTo)
        paginateOrdersList,
    required TResult Function(String orderId) getOrderDetails,
    required TResult Function(String orderId, String driverNotes) confirmPickup,
    required TResult Function(String orderItemId, String bagId) addBag,
    required TResult Function(String bagId, String orderId, String serviceId)
        createNewBag,
    required TResult Function(int limit, int skip, String? serviceMenuId)
        getServicesList,
    required TResult Function(String orderItemId, String bagId)
        updateScannedBagsLocally,
    required TResult Function(String serviceId, String bagId)
        updateScannedBagsForNewBag,
    required TResult Function(String id) removeBag,
    required TResult Function(String id) removeBagLocally,
    required TResult Function(
            String bagId,
            String fromScannedBagId,
            String toOrderItemId,
            String toServiceId,
            String orderId,
            bool isQuickOrder)
        moveBag,
    required TResult Function(int limit, int skip, String filter,
            String? searchText, String? from, String? to)
        getMyOrders,
    required TResult Function(int skip, int limit, String filter,
            String? searchText, String? from, String? to)
        paginateMyOrdersList,
    required TResult Function(int limit, int skip, String? from, String? to)
        getCashSettlments,
    required TResult Function(int skip, int limit, String? from, String? to)
        paginateCashSettlmentsList,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList():
        return getOrdersList(
            _that.limit,
            _that.skip,
            _that.filter,
            _that.expressOnly,
            _that.latitude,
            _that.longitude,
            _that.searchText,
            _that.pickupTo,
            _that.deliveryTo);
      case _PaginateOrdersList():
        return paginateOrdersList(
            _that.skip,
            _that.limit,
            _that.filter,
            _that.expressOnly,
            _that.latitude,
            _that.longitude,
            _that.searchText,
            _that.pickupTo,
            _that.deliveryTo);
      case _GetOrderDetails():
        return getOrderDetails(_that.orderId);
      case _ConfirmPickup():
        return confirmPickup(_that.orderId, _that.driverNotes);
      case _AddBag():
        return addBag(_that.orderItemId, _that.bagId);
      case _CreateNewBag():
        return createNewBag(_that.bagId, _that.orderId, _that.serviceId);
      case _GetServicesList():
        return getServicesList(_that.limit, _that.skip, _that.serviceMenuId);
      case _UpdateScannedBagsLocally():
        return updateScannedBagsLocally(_that.orderItemId, _that.bagId);
      case _UpdateScannedBagsForNewBag():
        return updateScannedBagsForNewBag(_that.serviceId, _that.bagId);
      case _RemoveBag():
        return removeBag(_that.id);
      case _RemoveBagLocally():
        return removeBagLocally(_that.id);
      case _MoveBag():
        return moveBag(_that.bagId, _that.fromScannedBagId, _that.toOrderItemId,
            _that.toServiceId, _that.orderId, _that.isQuickOrder);
      case _GetMyOrders():
        return getMyOrders(_that.limit, _that.skip, _that.filter,
            _that.searchText, _that.from, _that.to);
      case _paginateMyOrdersList():
        return paginateMyOrdersList(_that.skip, _that.limit, _that.filter,
            _that.searchText, _that.from, _that.to);
      case _GetCashSettlments():
        return getCashSettlments(_that.limit, _that.skip, _that.from, _that.to);
      case _PaginateCashSettlmentsList():
        return paginateCashSettlmentsList(
            _that.skip, _that.limit, _that.from, _that.to);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int limit,
            int skip,
            String filter,
            bool expressOnly,
            double? latitude,
            double? longitude,
            String? searchText,
            String? pickupTo,
            String? deliveryTo)?
        getOrdersList,
    TResult? Function(
            int skip,
            int limit,
            String filter,
            bool expressOnly,
            double? latitude,
            double? longitude,
            String? searchText,
            String pickupTo,
            String deliveryTo)?
        paginateOrdersList,
    TResult? Function(String orderId)? getOrderDetails,
    TResult? Function(String orderId, String driverNotes)? confirmPickup,
    TResult? Function(String orderItemId, String bagId)? addBag,
    TResult? Function(String bagId, String orderId, String serviceId)?
        createNewBag,
    TResult? Function(int limit, int skip, String? serviceMenuId)?
        getServicesList,
    TResult? Function(String orderItemId, String bagId)?
        updateScannedBagsLocally,
    TResult? Function(String serviceId, String bagId)?
        updateScannedBagsForNewBag,
    TResult? Function(String id)? removeBag,
    TResult? Function(String id)? removeBagLocally,
    TResult? Function(
            String bagId,
            String fromScannedBagId,
            String toOrderItemId,
            String toServiceId,
            String orderId,
            bool isQuickOrder)?
        moveBag,
    TResult? Function(int limit, int skip, String filter, String? searchText,
            String? from, String? to)?
        getMyOrders,
    TResult? Function(int skip, int limit, String filter, String? searchText,
            String? from, String? to)?
        paginateMyOrdersList,
    TResult? Function(int limit, int skip, String? from, String? to)?
        getCashSettlments,
    TResult? Function(int skip, int limit, String? from, String? to)?
        paginateCashSettlmentsList,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(
            _that.limit,
            _that.skip,
            _that.filter,
            _that.expressOnly,
            _that.latitude,
            _that.longitude,
            _that.searchText,
            _that.pickupTo,
            _that.deliveryTo);
      case _PaginateOrdersList() when paginateOrdersList != null:
        return paginateOrdersList(
            _that.skip,
            _that.limit,
            _that.filter,
            _that.expressOnly,
            _that.latitude,
            _that.longitude,
            _that.searchText,
            _that.pickupTo,
            _that.deliveryTo);
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that.orderId);
      case _ConfirmPickup() when confirmPickup != null:
        return confirmPickup(_that.orderId, _that.driverNotes);
      case _AddBag() when addBag != null:
        return addBag(_that.orderItemId, _that.bagId);
      case _CreateNewBag() when createNewBag != null:
        return createNewBag(_that.bagId, _that.orderId, _that.serviceId);
      case _GetServicesList() when getServicesList != null:
        return getServicesList(_that.limit, _that.skip, _that.serviceMenuId);
      case _UpdateScannedBagsLocally() when updateScannedBagsLocally != null:
        return updateScannedBagsLocally(_that.orderItemId, _that.bagId);
      case _UpdateScannedBagsForNewBag()
          when updateScannedBagsForNewBag != null:
        return updateScannedBagsForNewBag(_that.serviceId, _that.bagId);
      case _RemoveBag() when removeBag != null:
        return removeBag(_that.id);
      case _RemoveBagLocally() when removeBagLocally != null:
        return removeBagLocally(_that.id);
      case _MoveBag() when moveBag != null:
        return moveBag(_that.bagId, _that.fromScannedBagId, _that.toOrderItemId,
            _that.toServiceId, _that.orderId, _that.isQuickOrder);
      case _GetMyOrders() when getMyOrders != null:
        return getMyOrders(_that.limit, _that.skip, _that.filter,
            _that.searchText, _that.from, _that.to);
      case _paginateMyOrdersList() when paginateMyOrdersList != null:
        return paginateMyOrdersList(_that.skip, _that.limit, _that.filter,
            _that.searchText, _that.from, _that.to);
      case _GetCashSettlments() when getCashSettlments != null:
        return getCashSettlments(_that.limit, _that.skip, _that.from, _that.to);
      case _PaginateCashSettlmentsList()
          when paginateCashSettlmentsList != null:
        return paginateCashSettlmentsList(
            _that.skip, _that.limit, _that.from, _that.to);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetOrdersList implements OrderEvent {
  const _GetOrdersList(
      {required this.limit,
      required this.skip,
      required this.filter,
      required this.expressOnly,
      this.latitude,
      this.longitude,
      this.searchText,
      this.pickupTo,
      this.deliveryTo});

  final int limit;
  final int skip;
  final String filter;
  final bool expressOnly;
  final double? latitude;
  final double? longitude;
  final String? searchText;
  final String? pickupTo;
  final String? deliveryTo;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetOrdersListCopyWith<_GetOrdersList> get copyWith =>
      __$GetOrdersListCopyWithImpl<_GetOrdersList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetOrdersList &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.expressOnly, expressOnly) ||
                other.expressOnly == expressOnly) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.pickupTo, pickupTo) ||
                other.pickupTo == pickupTo) &&
            (identical(other.deliveryTo, deliveryTo) ||
                other.deliveryTo == deliveryTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, skip, filter, expressOnly,
      latitude, longitude, searchText, pickupTo, deliveryTo);

  @override
  String toString() {
    return 'OrderEvent.getOrdersList(limit: $limit, skip: $skip, filter: $filter, expressOnly: $expressOnly, latitude: $latitude, longitude: $longitude, searchText: $searchText, pickupTo: $pickupTo, deliveryTo: $deliveryTo)';
  }
}

/// @nodoc
abstract mixin class _$GetOrdersListCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$GetOrdersListCopyWith(
          _GetOrdersList value, $Res Function(_GetOrdersList) _then) =
      __$GetOrdersListCopyWithImpl;
  @useResult
  $Res call(
      {int limit,
      int skip,
      String filter,
      bool expressOnly,
      double? latitude,
      double? longitude,
      String? searchText,
      String? pickupTo,
      String? deliveryTo});
}

/// @nodoc
class __$GetOrdersListCopyWithImpl<$Res>
    implements _$GetOrdersListCopyWith<$Res> {
  __$GetOrdersListCopyWithImpl(this._self, this._then);

  final _GetOrdersList _self;
  final $Res Function(_GetOrdersList) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
    Object? skip = null,
    Object? filter = null,
    Object? expressOnly = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? searchText = freezed,
    Object? pickupTo = freezed,
    Object? deliveryTo = freezed,
  }) {
    return _then(_GetOrdersList(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      expressOnly: null == expressOnly
          ? _self.expressOnly
          : expressOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      searchText: freezed == searchText
          ? _self.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupTo: freezed == pickupTo
          ? _self.pickupTo
          : pickupTo // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTo: freezed == deliveryTo
          ? _self.deliveryTo
          : deliveryTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _PaginateOrdersList implements OrderEvent {
  const _PaginateOrdersList(
      {required this.skip,
      required this.limit,
      required this.filter,
      required this.expressOnly,
      this.latitude,
      this.longitude,
      this.searchText,
      required this.pickupTo,
      required this.deliveryTo});

  final int skip;
  final int limit;
  final String filter;
  final bool expressOnly;
  final double? latitude;
  final double? longitude;
  final String? searchText;
  final String pickupTo;
  final String deliveryTo;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginateOrdersListCopyWith<_PaginateOrdersList> get copyWith =>
      __$PaginateOrdersListCopyWithImpl<_PaginateOrdersList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginateOrdersList &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.expressOnly, expressOnly) ||
                other.expressOnly == expressOnly) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.pickupTo, pickupTo) ||
                other.pickupTo == pickupTo) &&
            (identical(other.deliveryTo, deliveryTo) ||
                other.deliveryTo == deliveryTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip, limit, filter, expressOnly,
      latitude, longitude, searchText, pickupTo, deliveryTo);

  @override
  String toString() {
    return 'OrderEvent.paginateOrdersList(skip: $skip, limit: $limit, filter: $filter, expressOnly: $expressOnly, latitude: $latitude, longitude: $longitude, searchText: $searchText, pickupTo: $pickupTo, deliveryTo: $deliveryTo)';
  }
}

/// @nodoc
abstract mixin class _$PaginateOrdersListCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$PaginateOrdersListCopyWith(
          _PaginateOrdersList value, $Res Function(_PaginateOrdersList) _then) =
      __$PaginateOrdersListCopyWithImpl;
  @useResult
  $Res call(
      {int skip,
      int limit,
      String filter,
      bool expressOnly,
      double? latitude,
      double? longitude,
      String? searchText,
      String pickupTo,
      String deliveryTo});
}

/// @nodoc
class __$PaginateOrdersListCopyWithImpl<$Res>
    implements _$PaginateOrdersListCopyWith<$Res> {
  __$PaginateOrdersListCopyWithImpl(this._self, this._then);

  final _PaginateOrdersList _self;
  final $Res Function(_PaginateOrdersList) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? skip = null,
    Object? limit = null,
    Object? filter = null,
    Object? expressOnly = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? searchText = freezed,
    Object? pickupTo = null,
    Object? deliveryTo = null,
  }) {
    return _then(_PaginateOrdersList(
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      expressOnly: null == expressOnly
          ? _self.expressOnly
          : expressOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      searchText: freezed == searchText
          ? _self.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupTo: null == pickupTo
          ? _self.pickupTo
          : pickupTo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTo: null == deliveryTo
          ? _self.deliveryTo
          : deliveryTo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetOrderDetails implements OrderEvent {
  const _GetOrderDetails({required this.orderId});

  final String orderId;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetOrderDetailsCopyWith<_GetOrderDetails> get copyWith =>
      __$GetOrderDetailsCopyWithImpl<_GetOrderDetails>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetOrderDetails &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'OrderEvent.getOrderDetails(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class _$GetOrderDetailsCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$GetOrderDetailsCopyWith(
          _GetOrderDetails value, $Res Function(_GetOrderDetails) _then) =
      __$GetOrderDetailsCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$GetOrderDetailsCopyWithImpl<$Res>
    implements _$GetOrderDetailsCopyWith<$Res> {
  __$GetOrderDetailsCopyWithImpl(this._self, this._then);

  final _GetOrderDetails _self;
  final $Res Function(_GetOrderDetails) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_GetOrderDetails(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ConfirmPickup implements OrderEvent {
  const _ConfirmPickup({required this.orderId, required this.driverNotes});

  final String orderId;
  final String driverNotes;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConfirmPickupCopyWith<_ConfirmPickup> get copyWith =>
      __$ConfirmPickupCopyWithImpl<_ConfirmPickup>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmPickup &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.driverNotes, driverNotes) ||
                other.driverNotes == driverNotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, driverNotes);

  @override
  String toString() {
    return 'OrderEvent.confirmPickup(orderId: $orderId, driverNotes: $driverNotes)';
  }
}

/// @nodoc
abstract mixin class _$ConfirmPickupCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$ConfirmPickupCopyWith(
          _ConfirmPickup value, $Res Function(_ConfirmPickup) _then) =
      __$ConfirmPickupCopyWithImpl;
  @useResult
  $Res call({String orderId, String driverNotes});
}

/// @nodoc
class __$ConfirmPickupCopyWithImpl<$Res>
    implements _$ConfirmPickupCopyWith<$Res> {
  __$ConfirmPickupCopyWithImpl(this._self, this._then);

  final _ConfirmPickup _self;
  final $Res Function(_ConfirmPickup) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? driverNotes = null,
  }) {
    return _then(_ConfirmPickup(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      driverNotes: null == driverNotes
          ? _self.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _AddBag implements OrderEvent {
  const _AddBag({required this.orderItemId, required this.bagId});

  final String orderItemId;
  final String bagId;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddBagCopyWith<_AddBag> get copyWith =>
      __$AddBagCopyWithImpl<_AddBag>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddBag &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId) &&
            (identical(other.bagId, bagId) || other.bagId == bagId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderItemId, bagId);

  @override
  String toString() {
    return 'OrderEvent.addBag(orderItemId: $orderItemId, bagId: $bagId)';
  }
}

/// @nodoc
abstract mixin class _$AddBagCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$AddBagCopyWith(_AddBag value, $Res Function(_AddBag) _then) =
      __$AddBagCopyWithImpl;
  @useResult
  $Res call({String orderItemId, String bagId});
}

/// @nodoc
class __$AddBagCopyWithImpl<$Res> implements _$AddBagCopyWith<$Res> {
  __$AddBagCopyWithImpl(this._self, this._then);

  final _AddBag _self;
  final $Res Function(_AddBag) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderItemId = null,
    Object? bagId = null,
  }) {
    return _then(_AddBag(
      orderItemId: null == orderItemId
          ? _self.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      bagId: null == bagId
          ? _self.bagId
          : bagId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CreateNewBag implements OrderEvent {
  const _CreateNewBag(
      {required this.bagId, required this.orderId, required this.serviceId});

  final String bagId;
  final String orderId;
  final String serviceId;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateNewBagCopyWith<_CreateNewBag> get copyWith =>
      __$CreateNewBagCopyWithImpl<_CreateNewBag>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateNewBag &&
            (identical(other.bagId, bagId) || other.bagId == bagId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bagId, orderId, serviceId);

  @override
  String toString() {
    return 'OrderEvent.createNewBag(bagId: $bagId, orderId: $orderId, serviceId: $serviceId)';
  }
}

/// @nodoc
abstract mixin class _$CreateNewBagCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$CreateNewBagCopyWith(
          _CreateNewBag value, $Res Function(_CreateNewBag) _then) =
      __$CreateNewBagCopyWithImpl;
  @useResult
  $Res call({String bagId, String orderId, String serviceId});
}

/// @nodoc
class __$CreateNewBagCopyWithImpl<$Res>
    implements _$CreateNewBagCopyWith<$Res> {
  __$CreateNewBagCopyWithImpl(this._self, this._then);

  final _CreateNewBag _self;
  final $Res Function(_CreateNewBag) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bagId = null,
    Object? orderId = null,
    Object? serviceId = null,
  }) {
    return _then(_CreateNewBag(
      bagId: null == bagId
          ? _self.bagId
          : bagId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _self.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetServicesList implements OrderEvent {
  const _GetServicesList(
      {required this.limit, required this.skip, this.serviceMenuId});

  final int limit;
  final int skip;
  final String? serviceMenuId;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetServicesListCopyWith<_GetServicesList> get copyWith =>
      __$GetServicesListCopyWithImpl<_GetServicesList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetServicesList &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.serviceMenuId, serviceMenuId) ||
                other.serviceMenuId == serviceMenuId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, skip, serviceMenuId);

  @override
  String toString() {
    return 'OrderEvent.getServicesList(limit: $limit, skip: $skip, serviceMenuId: $serviceMenuId)';
  }
}

/// @nodoc
abstract mixin class _$GetServicesListCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$GetServicesListCopyWith(
          _GetServicesList value, $Res Function(_GetServicesList) _then) =
      __$GetServicesListCopyWithImpl;
  @useResult
  $Res call({int limit, int skip, String? serviceMenuId});
}

/// @nodoc
class __$GetServicesListCopyWithImpl<$Res>
    implements _$GetServicesListCopyWith<$Res> {
  __$GetServicesListCopyWithImpl(this._self, this._then);

  final _GetServicesList _self;
  final $Res Function(_GetServicesList) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
    Object? skip = null,
    Object? serviceMenuId = freezed,
  }) {
    return _then(_GetServicesList(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      serviceMenuId: freezed == serviceMenuId
          ? _self.serviceMenuId
          : serviceMenuId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _UpdateScannedBagsLocally implements OrderEvent {
  const _UpdateScannedBagsLocally(
      {required this.orderItemId, required this.bagId});

  final String orderItemId;
  final String bagId;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateScannedBagsLocallyCopyWith<_UpdateScannedBagsLocally> get copyWith =>
      __$UpdateScannedBagsLocallyCopyWithImpl<_UpdateScannedBagsLocally>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateScannedBagsLocally &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId) &&
            (identical(other.bagId, bagId) || other.bagId == bagId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderItemId, bagId);

  @override
  String toString() {
    return 'OrderEvent.updateScannedBagsLocally(orderItemId: $orderItemId, bagId: $bagId)';
  }
}

/// @nodoc
abstract mixin class _$UpdateScannedBagsLocallyCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$UpdateScannedBagsLocallyCopyWith(_UpdateScannedBagsLocally value,
          $Res Function(_UpdateScannedBagsLocally) _then) =
      __$UpdateScannedBagsLocallyCopyWithImpl;
  @useResult
  $Res call({String orderItemId, String bagId});
}

/// @nodoc
class __$UpdateScannedBagsLocallyCopyWithImpl<$Res>
    implements _$UpdateScannedBagsLocallyCopyWith<$Res> {
  __$UpdateScannedBagsLocallyCopyWithImpl(this._self, this._then);

  final _UpdateScannedBagsLocally _self;
  final $Res Function(_UpdateScannedBagsLocally) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderItemId = null,
    Object? bagId = null,
  }) {
    return _then(_UpdateScannedBagsLocally(
      orderItemId: null == orderItemId
          ? _self.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      bagId: null == bagId
          ? _self.bagId
          : bagId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UpdateScannedBagsForNewBag implements OrderEvent {
  const _UpdateScannedBagsForNewBag(
      {required this.serviceId, required this.bagId});

  final String serviceId;
  final String bagId;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateScannedBagsForNewBagCopyWith<_UpdateScannedBagsForNewBag>
      get copyWith => __$UpdateScannedBagsForNewBagCopyWithImpl<
          _UpdateScannedBagsForNewBag>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateScannedBagsForNewBag &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.bagId, bagId) || other.bagId == bagId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceId, bagId);

  @override
  String toString() {
    return 'OrderEvent.updateScannedBagsForNewBag(serviceId: $serviceId, bagId: $bagId)';
  }
}

/// @nodoc
abstract mixin class _$UpdateScannedBagsForNewBagCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$UpdateScannedBagsForNewBagCopyWith(
          _UpdateScannedBagsForNewBag value,
          $Res Function(_UpdateScannedBagsForNewBag) _then) =
      __$UpdateScannedBagsForNewBagCopyWithImpl;
  @useResult
  $Res call({String serviceId, String bagId});
}

/// @nodoc
class __$UpdateScannedBagsForNewBagCopyWithImpl<$Res>
    implements _$UpdateScannedBagsForNewBagCopyWith<$Res> {
  __$UpdateScannedBagsForNewBagCopyWithImpl(this._self, this._then);

  final _UpdateScannedBagsForNewBag _self;
  final $Res Function(_UpdateScannedBagsForNewBag) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? serviceId = null,
    Object? bagId = null,
  }) {
    return _then(_UpdateScannedBagsForNewBag(
      serviceId: null == serviceId
          ? _self.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      bagId: null == bagId
          ? _self.bagId
          : bagId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RemoveBag implements OrderEvent {
  const _RemoveBag({required this.id});

  final String id;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoveBagCopyWith<_RemoveBag> get copyWith =>
      __$RemoveBagCopyWithImpl<_RemoveBag>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveBag &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'OrderEvent.removeBag(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$RemoveBagCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$RemoveBagCopyWith(
          _RemoveBag value, $Res Function(_RemoveBag) _then) =
      __$RemoveBagCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$RemoveBagCopyWithImpl<$Res> implements _$RemoveBagCopyWith<$Res> {
  __$RemoveBagCopyWithImpl(this._self, this._then);

  final _RemoveBag _self;
  final $Res Function(_RemoveBag) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_RemoveBag(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RemoveBagLocally implements OrderEvent {
  const _RemoveBagLocally({required this.id});

  final String id;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoveBagLocallyCopyWith<_RemoveBagLocally> get copyWith =>
      __$RemoveBagLocallyCopyWithImpl<_RemoveBagLocally>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveBagLocally &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'OrderEvent.removeBagLocally(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$RemoveBagLocallyCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$RemoveBagLocallyCopyWith(
          _RemoveBagLocally value, $Res Function(_RemoveBagLocally) _then) =
      __$RemoveBagLocallyCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$RemoveBagLocallyCopyWithImpl<$Res>
    implements _$RemoveBagLocallyCopyWith<$Res> {
  __$RemoveBagLocallyCopyWithImpl(this._self, this._then);

  final _RemoveBagLocally _self;
  final $Res Function(_RemoveBagLocally) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_RemoveBagLocally(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _MoveBag implements OrderEvent {
  const _MoveBag(
      {required this.bagId,
      required this.fromScannedBagId,
      required this.toOrderItemId,
      required this.toServiceId,
      required this.orderId,
      required this.isQuickOrder});

  final String bagId;
  final String fromScannedBagId;
  final String toOrderItemId;
  final String toServiceId;
  final String orderId;
  final bool isQuickOrder;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MoveBagCopyWith<_MoveBag> get copyWith =>
      __$MoveBagCopyWithImpl<_MoveBag>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoveBag &&
            (identical(other.bagId, bagId) || other.bagId == bagId) &&
            (identical(other.fromScannedBagId, fromScannedBagId) ||
                other.fromScannedBagId == fromScannedBagId) &&
            (identical(other.toOrderItemId, toOrderItemId) ||
                other.toOrderItemId == toOrderItemId) &&
            (identical(other.toServiceId, toServiceId) ||
                other.toServiceId == toServiceId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.isQuickOrder, isQuickOrder) ||
                other.isQuickOrder == isQuickOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bagId, fromScannedBagId,
      toOrderItemId, toServiceId, orderId, isQuickOrder);

  @override
  String toString() {
    return 'OrderEvent.moveBag(bagId: $bagId, fromScannedBagId: $fromScannedBagId, toOrderItemId: $toOrderItemId, toServiceId: $toServiceId, orderId: $orderId, isQuickOrder: $isQuickOrder)';
  }
}

/// @nodoc
abstract mixin class _$MoveBagCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$MoveBagCopyWith(_MoveBag value, $Res Function(_MoveBag) _then) =
      __$MoveBagCopyWithImpl;
  @useResult
  $Res call(
      {String bagId,
      String fromScannedBagId,
      String toOrderItemId,
      String toServiceId,
      String orderId,
      bool isQuickOrder});
}

/// @nodoc
class __$MoveBagCopyWithImpl<$Res> implements _$MoveBagCopyWith<$Res> {
  __$MoveBagCopyWithImpl(this._self, this._then);

  final _MoveBag _self;
  final $Res Function(_MoveBag) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bagId = null,
    Object? fromScannedBagId = null,
    Object? toOrderItemId = null,
    Object? toServiceId = null,
    Object? orderId = null,
    Object? isQuickOrder = null,
  }) {
    return _then(_MoveBag(
      bagId: null == bagId
          ? _self.bagId
          : bagId // ignore: cast_nullable_to_non_nullable
              as String,
      fromScannedBagId: null == fromScannedBagId
          ? _self.fromScannedBagId
          : fromScannedBagId // ignore: cast_nullable_to_non_nullable
              as String,
      toOrderItemId: null == toOrderItemId
          ? _self.toOrderItemId
          : toOrderItemId // ignore: cast_nullable_to_non_nullable
              as String,
      toServiceId: null == toServiceId
          ? _self.toServiceId
          : toServiceId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      isQuickOrder: null == isQuickOrder
          ? _self.isQuickOrder
          : isQuickOrder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _GetMyOrders implements OrderEvent {
  const _GetMyOrders(
      {required this.limit,
      required this.skip,
      required this.filter,
      this.searchText,
      this.from,
      this.to});

  final int limit;
  final int skip;
  final String filter;
  final String? searchText;
  final String? from;
  final String? to;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetMyOrdersCopyWith<_GetMyOrders> get copyWith =>
      __$GetMyOrdersCopyWithImpl<_GetMyOrders>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetMyOrders &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, limit, skip, filter, searchText, from, to);

  @override
  String toString() {
    return 'OrderEvent.getMyOrders(limit: $limit, skip: $skip, filter: $filter, searchText: $searchText, from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class _$GetMyOrdersCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$GetMyOrdersCopyWith(
          _GetMyOrders value, $Res Function(_GetMyOrders) _then) =
      __$GetMyOrdersCopyWithImpl;
  @useResult
  $Res call(
      {int limit,
      int skip,
      String filter,
      String? searchText,
      String? from,
      String? to});
}

/// @nodoc
class __$GetMyOrdersCopyWithImpl<$Res> implements _$GetMyOrdersCopyWith<$Res> {
  __$GetMyOrdersCopyWithImpl(this._self, this._then);

  final _GetMyOrders _self;
  final $Res Function(_GetMyOrders) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
    Object? skip = null,
    Object? filter = null,
    Object? searchText = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_GetMyOrders(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      searchText: freezed == searchText
          ? _self.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _paginateMyOrdersList implements OrderEvent {
  const _paginateMyOrdersList(
      {required this.skip,
      required this.limit,
      required this.filter,
      this.searchText,
      this.from,
      this.to});

  final int skip;
  final int limit;
  final String filter;
  final String? searchText;
  final String? from;
  final String? to;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$paginateMyOrdersListCopyWith<_paginateMyOrdersList> get copyWith =>
      __$paginateMyOrdersListCopyWithImpl<_paginateMyOrdersList>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _paginateMyOrdersList &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, skip, limit, filter, searchText, from, to);

  @override
  String toString() {
    return 'OrderEvent.paginateMyOrdersList(skip: $skip, limit: $limit, filter: $filter, searchText: $searchText, from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class _$paginateMyOrdersListCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$paginateMyOrdersListCopyWith(_paginateMyOrdersList value,
          $Res Function(_paginateMyOrdersList) _then) =
      __$paginateMyOrdersListCopyWithImpl;
  @useResult
  $Res call(
      {int skip,
      int limit,
      String filter,
      String? searchText,
      String? from,
      String? to});
}

/// @nodoc
class __$paginateMyOrdersListCopyWithImpl<$Res>
    implements _$paginateMyOrdersListCopyWith<$Res> {
  __$paginateMyOrdersListCopyWithImpl(this._self, this._then);

  final _paginateMyOrdersList _self;
  final $Res Function(_paginateMyOrdersList) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? skip = null,
    Object? limit = null,
    Object? filter = null,
    Object? searchText = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_paginateMyOrdersList(
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      searchText: freezed == searchText
          ? _self.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _GetCashSettlments implements OrderEvent {
  const _GetCashSettlments(
      {required this.limit, required this.skip, this.from, this.to});

  final int limit;
  final int skip;
  final String? from;
  final String? to;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetCashSettlmentsCopyWith<_GetCashSettlments> get copyWith =>
      __$GetCashSettlmentsCopyWithImpl<_GetCashSettlments>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCashSettlments &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, skip, from, to);

  @override
  String toString() {
    return 'OrderEvent.getCashSettlments(limit: $limit, skip: $skip, from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class _$GetCashSettlmentsCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$GetCashSettlmentsCopyWith(
          _GetCashSettlments value, $Res Function(_GetCashSettlments) _then) =
      __$GetCashSettlmentsCopyWithImpl;
  @useResult
  $Res call({int limit, int skip, String? from, String? to});
}

/// @nodoc
class __$GetCashSettlmentsCopyWithImpl<$Res>
    implements _$GetCashSettlmentsCopyWith<$Res> {
  __$GetCashSettlmentsCopyWithImpl(this._self, this._then);

  final _GetCashSettlments _self;
  final $Res Function(_GetCashSettlments) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
    Object? skip = null,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_GetCashSettlments(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      from: freezed == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _PaginateCashSettlmentsList implements OrderEvent {
  const _PaginateCashSettlmentsList(
      {required this.skip, required this.limit, this.from, this.to});

  final int skip;
  final int limit;
  final String? from;
  final String? to;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginateCashSettlmentsListCopyWith<_PaginateCashSettlmentsList>
      get copyWith => __$PaginateCashSettlmentsListCopyWithImpl<
          _PaginateCashSettlmentsList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginateCashSettlmentsList &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip, limit, from, to);

  @override
  String toString() {
    return 'OrderEvent.paginateCashSettlmentsList(skip: $skip, limit: $limit, from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class _$PaginateCashSettlmentsListCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$PaginateCashSettlmentsListCopyWith(
          _PaginateCashSettlmentsList value,
          $Res Function(_PaginateCashSettlmentsList) _then) =
      __$PaginateCashSettlmentsListCopyWithImpl;
  @useResult
  $Res call({int skip, int limit, String? from, String? to});
}

/// @nodoc
class __$PaginateCashSettlmentsListCopyWithImpl<$Res>
    implements _$PaginateCashSettlmentsListCopyWith<$Res> {
  __$PaginateCashSettlmentsListCopyWithImpl(this._self, this._then);

  final _PaginateCashSettlmentsList _self;
  final $Res Function(_PaginateCashSettlmentsList) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? skip = null,
    Object? limit = null,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_PaginateCashSettlmentsList(
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      from: freezed == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$OrderState {
  Status get getOrderListStatus;
  List<OrderResponse> get ordersList;
  int get totalCount;
  bool get hasMore;
  bool get isLoadingMore;
  Status get paginationStatus;
  Status get getOrderDetailStatus;
  OrderDetailsResponseModel get orderDetails;
  Status get confirmPickupStatus;
  Status get addBagStatus;
  Status get createNewBagStatus;
  Status get getServicesListStatus;
  Status get removeBagStatus;
  Status get moveBagStatus;
  List<ServiceListDatamodel> get servicesList;
  Status get getMyOrderListStatus;
  List<OrderResponse> get myordersList;
  int get myOrdersCount;
  bool get myOrdershasMore;
  bool get myOrdersisLoadingMore;
  Status get myOrderspaginationStatus;
  Status get getCashSettlmentListStatus;
  List<CashSettlementResponse> get cashSettlmentsList;
  int get cashSettlmentsCount;
  bool get cashSettlmentshasMore;
  bool get cashSettlmentsisLoadingMore;
  Status get cashSettlmentspaginationStatus;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderStateCopyWith<OrderState> get copyWith =>
      _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderState &&
            (identical(other.getOrderListStatus, getOrderListStatus) ||
                other.getOrderListStatus == getOrderListStatus) &&
            const DeepCollectionEquality()
                .equals(other.ordersList, ordersList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.paginationStatus, paginationStatus) ||
                other.paginationStatus == paginationStatus) &&
            (identical(other.getOrderDetailStatus, getOrderDetailStatus) ||
                other.getOrderDetailStatus == getOrderDetailStatus) &&
            (identical(other.orderDetails, orderDetails) ||
                other.orderDetails == orderDetails) &&
            (identical(other.confirmPickupStatus, confirmPickupStatus) ||
                other.confirmPickupStatus == confirmPickupStatus) &&
            (identical(other.addBagStatus, addBagStatus) ||
                other.addBagStatus == addBagStatus) &&
            (identical(other.createNewBagStatus, createNewBagStatus) ||
                other.createNewBagStatus == createNewBagStatus) &&
            (identical(other.getServicesListStatus, getServicesListStatus) ||
                other.getServicesListStatus == getServicesListStatus) &&
            (identical(other.removeBagStatus, removeBagStatus) ||
                other.removeBagStatus == removeBagStatus) &&
            (identical(other.moveBagStatus, moveBagStatus) ||
                other.moveBagStatus == moveBagStatus) &&
            const DeepCollectionEquality()
                .equals(other.servicesList, servicesList) &&
            (identical(other.getMyOrderListStatus, getMyOrderListStatus) ||
                other.getMyOrderListStatus == getMyOrderListStatus) &&
            const DeepCollectionEquality()
                .equals(other.myordersList, myordersList) &&
            (identical(other.myOrdersCount, myOrdersCount) ||
                other.myOrdersCount == myOrdersCount) &&
            (identical(other.myOrdershasMore, myOrdershasMore) ||
                other.myOrdershasMore == myOrdershasMore) &&
            (identical(other.myOrdersisLoadingMore, myOrdersisLoadingMore) ||
                other.myOrdersisLoadingMore == myOrdersisLoadingMore) &&
            (identical(other.myOrderspaginationStatus, myOrderspaginationStatus) ||
                other.myOrderspaginationStatus == myOrderspaginationStatus) &&
            (identical(other.getCashSettlmentListStatus,
                    getCashSettlmentListStatus) ||
                other.getCashSettlmentListStatus ==
                    getCashSettlmentListStatus) &&
            const DeepCollectionEquality()
                .equals(other.cashSettlmentsList, cashSettlmentsList) &&
            (identical(other.cashSettlmentsCount, cashSettlmentsCount) ||
                other.cashSettlmentsCount == cashSettlmentsCount) &&
            (identical(other.cashSettlmentshasMore, cashSettlmentshasMore) ||
                other.cashSettlmentshasMore == cashSettlmentshasMore) &&
            (identical(other.cashSettlmentsisLoadingMore,
                    cashSettlmentsisLoadingMore) ||
                other.cashSettlmentsisLoadingMore ==
                    cashSettlmentsisLoadingMore) &&
            (identical(other.cashSettlmentspaginationStatus,
                    cashSettlmentspaginationStatus) ||
                other.cashSettlmentspaginationStatus ==
                    cashSettlmentspaginationStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        getOrderListStatus,
        const DeepCollectionEquality().hash(ordersList),
        totalCount,
        hasMore,
        isLoadingMore,
        paginationStatus,
        getOrderDetailStatus,
        orderDetails,
        confirmPickupStatus,
        addBagStatus,
        createNewBagStatus,
        getServicesListStatus,
        removeBagStatus,
        moveBagStatus,
        const DeepCollectionEquality().hash(servicesList),
        getMyOrderListStatus,
        const DeepCollectionEquality().hash(myordersList),
        myOrdersCount,
        myOrdershasMore,
        myOrdersisLoadingMore,
        myOrderspaginationStatus,
        getCashSettlmentListStatus,
        const DeepCollectionEquality().hash(cashSettlmentsList),
        cashSettlmentsCount,
        cashSettlmentshasMore,
        cashSettlmentsisLoadingMore,
        cashSettlmentspaginationStatus
      ]);

  @override
  String toString() {
    return 'OrderState(getOrderListStatus: $getOrderListStatus, ordersList: $ordersList, totalCount: $totalCount, hasMore: $hasMore, isLoadingMore: $isLoadingMore, paginationStatus: $paginationStatus, getOrderDetailStatus: $getOrderDetailStatus, orderDetails: $orderDetails, confirmPickupStatus: $confirmPickupStatus, addBagStatus: $addBagStatus, createNewBagStatus: $createNewBagStatus, getServicesListStatus: $getServicesListStatus, removeBagStatus: $removeBagStatus, moveBagStatus: $moveBagStatus, servicesList: $servicesList, getMyOrderListStatus: $getMyOrderListStatus, myordersList: $myordersList, myOrdersCount: $myOrdersCount, myOrdershasMore: $myOrdershasMore, myOrdersisLoadingMore: $myOrdersisLoadingMore, myOrderspaginationStatus: $myOrderspaginationStatus, getCashSettlmentListStatus: $getCashSettlmentListStatus, cashSettlmentsList: $cashSettlmentsList, cashSettlmentsCount: $cashSettlmentsCount, cashSettlmentshasMore: $cashSettlmentshasMore, cashSettlmentsisLoadingMore: $cashSettlmentsisLoadingMore, cashSettlmentspaginationStatus: $cashSettlmentspaginationStatus)';
  }
}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) _then) =
      _$OrderStateCopyWithImpl;
  @useResult
  $Res call(
      {Status getOrderListStatus,
      List<OrderResponse> ordersList,
      int totalCount,
      bool hasMore,
      bool isLoadingMore,
      Status paginationStatus,
      Status getOrderDetailStatus,
      OrderDetailsResponseModel orderDetails,
      Status confirmPickupStatus,
      Status addBagStatus,
      Status createNewBagStatus,
      Status getServicesListStatus,
      Status removeBagStatus,
      Status moveBagStatus,
      List<ServiceListDatamodel> servicesList,
      Status getMyOrderListStatus,
      List<OrderResponse> myordersList,
      int myOrdersCount,
      bool myOrdershasMore,
      bool myOrdersisLoadingMore,
      Status myOrderspaginationStatus,
      Status getCashSettlmentListStatus,
      List<CashSettlementResponse> cashSettlmentsList,
      int cashSettlmentsCount,
      bool cashSettlmentshasMore,
      bool cashSettlmentsisLoadingMore,
      Status cashSettlmentspaginationStatus});

  $StatusCopyWith<$Res> get getOrderListStatus;
  $StatusCopyWith<$Res> get paginationStatus;
  $StatusCopyWith<$Res> get getOrderDetailStatus;
  $OrderDetailsResponseModelCopyWith<$Res> get orderDetails;
  $StatusCopyWith<$Res> get confirmPickupStatus;
  $StatusCopyWith<$Res> get addBagStatus;
  $StatusCopyWith<$Res> get createNewBagStatus;
  $StatusCopyWith<$Res> get getServicesListStatus;
  $StatusCopyWith<$Res> get removeBagStatus;
  $StatusCopyWith<$Res> get moveBagStatus;
  $StatusCopyWith<$Res> get getMyOrderListStatus;
  $StatusCopyWith<$Res> get myOrderspaginationStatus;
  $StatusCopyWith<$Res> get getCashSettlmentListStatus;
  $StatusCopyWith<$Res> get cashSettlmentspaginationStatus;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOrderListStatus = null,
    Object? ordersList = null,
    Object? totalCount = null,
    Object? hasMore = null,
    Object? isLoadingMore = null,
    Object? paginationStatus = null,
    Object? getOrderDetailStatus = null,
    Object? orderDetails = null,
    Object? confirmPickupStatus = null,
    Object? addBagStatus = null,
    Object? createNewBagStatus = null,
    Object? getServicesListStatus = null,
    Object? removeBagStatus = null,
    Object? moveBagStatus = null,
    Object? servicesList = null,
    Object? getMyOrderListStatus = null,
    Object? myordersList = null,
    Object? myOrdersCount = null,
    Object? myOrdershasMore = null,
    Object? myOrdersisLoadingMore = null,
    Object? myOrderspaginationStatus = null,
    Object? getCashSettlmentListStatus = null,
    Object? cashSettlmentsList = null,
    Object? cashSettlmentsCount = null,
    Object? cashSettlmentshasMore = null,
    Object? cashSettlmentsisLoadingMore = null,
    Object? cashSettlmentspaginationStatus = null,
  }) {
    return _then(_self.copyWith(
      getOrderListStatus: null == getOrderListStatus
          ? _self.getOrderListStatus
          : getOrderListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      ordersList: null == ordersList
          ? _self.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>,
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _self.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      paginationStatus: null == paginationStatus
          ? _self.paginationStatus
          : paginationStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getOrderDetailStatus: null == getOrderDetailStatus
          ? _self.getOrderDetailStatus
          : getOrderDetailStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      orderDetails: null == orderDetails
          ? _self.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as OrderDetailsResponseModel,
      confirmPickupStatus: null == confirmPickupStatus
          ? _self.confirmPickupStatus
          : confirmPickupStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addBagStatus: null == addBagStatus
          ? _self.addBagStatus
          : addBagStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      createNewBagStatus: null == createNewBagStatus
          ? _self.createNewBagStatus
          : createNewBagStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getServicesListStatus: null == getServicesListStatus
          ? _self.getServicesListStatus
          : getServicesListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      removeBagStatus: null == removeBagStatus
          ? _self.removeBagStatus
          : removeBagStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      moveBagStatus: null == moveBagStatus
          ? _self.moveBagStatus
          : moveBagStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      servicesList: null == servicesList
          ? _self.servicesList
          : servicesList // ignore: cast_nullable_to_non_nullable
              as List<ServiceListDatamodel>,
      getMyOrderListStatus: null == getMyOrderListStatus
          ? _self.getMyOrderListStatus
          : getMyOrderListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      myordersList: null == myordersList
          ? _self.myordersList
          : myordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>,
      myOrdersCount: null == myOrdersCount
          ? _self.myOrdersCount
          : myOrdersCount // ignore: cast_nullable_to_non_nullable
              as int,
      myOrdershasMore: null == myOrdershasMore
          ? _self.myOrdershasMore
          : myOrdershasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      myOrdersisLoadingMore: null == myOrdersisLoadingMore
          ? _self.myOrdersisLoadingMore
          : myOrdersisLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      myOrderspaginationStatus: null == myOrderspaginationStatus
          ? _self.myOrderspaginationStatus
          : myOrderspaginationStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getCashSettlmentListStatus: null == getCashSettlmentListStatus
          ? _self.getCashSettlmentListStatus
          : getCashSettlmentListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      cashSettlmentsList: null == cashSettlmentsList
          ? _self.cashSettlmentsList
          : cashSettlmentsList // ignore: cast_nullable_to_non_nullable
              as List<CashSettlementResponse>,
      cashSettlmentsCount: null == cashSettlmentsCount
          ? _self.cashSettlmentsCount
          : cashSettlmentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      cashSettlmentshasMore: null == cashSettlmentshasMore
          ? _self.cashSettlmentshasMore
          : cashSettlmentshasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cashSettlmentsisLoadingMore: null == cashSettlmentsisLoadingMore
          ? _self.cashSettlmentsisLoadingMore
          : cashSettlmentsisLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cashSettlmentspaginationStatus: null == cashSettlmentspaginationStatus
          ? _self.cashSettlmentspaginationStatus
          : cashSettlmentspaginationStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getOrderListStatus {
    return $StatusCopyWith<$Res>(_self.getOrderListStatus, (value) {
      return _then(_self.copyWith(getOrderListStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get paginationStatus {
    return $StatusCopyWith<$Res>(_self.paginationStatus, (value) {
      return _then(_self.copyWith(paginationStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getOrderDetailStatus {
    return $StatusCopyWith<$Res>(_self.getOrderDetailStatus, (value) {
      return _then(_self.copyWith(getOrderDetailStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsResponseModelCopyWith<$Res> get orderDetails {
    return $OrderDetailsResponseModelCopyWith<$Res>(_self.orderDetails,
        (value) {
      return _then(_self.copyWith(orderDetails: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get confirmPickupStatus {
    return $StatusCopyWith<$Res>(_self.confirmPickupStatus, (value) {
      return _then(_self.copyWith(confirmPickupStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get addBagStatus {
    return $StatusCopyWith<$Res>(_self.addBagStatus, (value) {
      return _then(_self.copyWith(addBagStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get createNewBagStatus {
    return $StatusCopyWith<$Res>(_self.createNewBagStatus, (value) {
      return _then(_self.copyWith(createNewBagStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getServicesListStatus {
    return $StatusCopyWith<$Res>(_self.getServicesListStatus, (value) {
      return _then(_self.copyWith(getServicesListStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get removeBagStatus {
    return $StatusCopyWith<$Res>(_self.removeBagStatus, (value) {
      return _then(_self.copyWith(removeBagStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get moveBagStatus {
    return $StatusCopyWith<$Res>(_self.moveBagStatus, (value) {
      return _then(_self.copyWith(moveBagStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getMyOrderListStatus {
    return $StatusCopyWith<$Res>(_self.getMyOrderListStatus, (value) {
      return _then(_self.copyWith(getMyOrderListStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get myOrderspaginationStatus {
    return $StatusCopyWith<$Res>(_self.myOrderspaginationStatus, (value) {
      return _then(_self.copyWith(myOrderspaginationStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getCashSettlmentListStatus {
    return $StatusCopyWith<$Res>(_self.getCashSettlmentListStatus, (value) {
      return _then(_self.copyWith(getCashSettlmentListStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get cashSettlmentspaginationStatus {
    return $StatusCopyWith<$Res>(_self.cashSettlmentspaginationStatus, (value) {
      return _then(_self.copyWith(cashSettlmentspaginationStatus: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns on OrderState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Status getOrderListStatus,
            List<OrderResponse> ordersList,
            int totalCount,
            bool hasMore,
            bool isLoadingMore,
            Status paginationStatus,
            Status getOrderDetailStatus,
            OrderDetailsResponseModel orderDetails,
            Status confirmPickupStatus,
            Status addBagStatus,
            Status createNewBagStatus,
            Status getServicesListStatus,
            Status removeBagStatus,
            Status moveBagStatus,
            List<ServiceListDatamodel> servicesList,
            Status getMyOrderListStatus,
            List<OrderResponse> myordersList,
            int myOrdersCount,
            bool myOrdershasMore,
            bool myOrdersisLoadingMore,
            Status myOrderspaginationStatus,
            Status getCashSettlmentListStatus,
            List<CashSettlementResponse> cashSettlmentsList,
            int cashSettlmentsCount,
            bool cashSettlmentshasMore,
            bool cashSettlmentsisLoadingMore,
            Status cashSettlmentspaginationStatus)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderState() when $default != null:
        return $default(
            _that.getOrderListStatus,
            _that.ordersList,
            _that.totalCount,
            _that.hasMore,
            _that.isLoadingMore,
            _that.paginationStatus,
            _that.getOrderDetailStatus,
            _that.orderDetails,
            _that.confirmPickupStatus,
            _that.addBagStatus,
            _that.createNewBagStatus,
            _that.getServicesListStatus,
            _that.removeBagStatus,
            _that.moveBagStatus,
            _that.servicesList,
            _that.getMyOrderListStatus,
            _that.myordersList,
            _that.myOrdersCount,
            _that.myOrdershasMore,
            _that.myOrdersisLoadingMore,
            _that.myOrderspaginationStatus,
            _that.getCashSettlmentListStatus,
            _that.cashSettlmentsList,
            _that.cashSettlmentsCount,
            _that.cashSettlmentshasMore,
            _that.cashSettlmentsisLoadingMore,
            _that.cashSettlmentspaginationStatus);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Status getOrderListStatus,
            List<OrderResponse> ordersList,
            int totalCount,
            bool hasMore,
            bool isLoadingMore,
            Status paginationStatus,
            Status getOrderDetailStatus,
            OrderDetailsResponseModel orderDetails,
            Status confirmPickupStatus,
            Status addBagStatus,
            Status createNewBagStatus,
            Status getServicesListStatus,
            Status removeBagStatus,
            Status moveBagStatus,
            List<ServiceListDatamodel> servicesList,
            Status getMyOrderListStatus,
            List<OrderResponse> myordersList,
            int myOrdersCount,
            bool myOrdershasMore,
            bool myOrdersisLoadingMore,
            Status myOrderspaginationStatus,
            Status getCashSettlmentListStatus,
            List<CashSettlementResponse> cashSettlmentsList,
            int cashSettlmentsCount,
            bool cashSettlmentshasMore,
            bool cashSettlmentsisLoadingMore,
            Status cashSettlmentspaginationStatus)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderState():
        return $default(
            _that.getOrderListStatus,
            _that.ordersList,
            _that.totalCount,
            _that.hasMore,
            _that.isLoadingMore,
            _that.paginationStatus,
            _that.getOrderDetailStatus,
            _that.orderDetails,
            _that.confirmPickupStatus,
            _that.addBagStatus,
            _that.createNewBagStatus,
            _that.getServicesListStatus,
            _that.removeBagStatus,
            _that.moveBagStatus,
            _that.servicesList,
            _that.getMyOrderListStatus,
            _that.myordersList,
            _that.myOrdersCount,
            _that.myOrdershasMore,
            _that.myOrdersisLoadingMore,
            _that.myOrderspaginationStatus,
            _that.getCashSettlmentListStatus,
            _that.cashSettlmentsList,
            _that.cashSettlmentsCount,
            _that.cashSettlmentshasMore,
            _that.cashSettlmentsisLoadingMore,
            _that.cashSettlmentspaginationStatus);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Status getOrderListStatus,
            List<OrderResponse> ordersList,
            int totalCount,
            bool hasMore,
            bool isLoadingMore,
            Status paginationStatus,
            Status getOrderDetailStatus,
            OrderDetailsResponseModel orderDetails,
            Status confirmPickupStatus,
            Status addBagStatus,
            Status createNewBagStatus,
            Status getServicesListStatus,
            Status removeBagStatus,
            Status moveBagStatus,
            List<ServiceListDatamodel> servicesList,
            Status getMyOrderListStatus,
            List<OrderResponse> myordersList,
            int myOrdersCount,
            bool myOrdershasMore,
            bool myOrdersisLoadingMore,
            Status myOrderspaginationStatus,
            Status getCashSettlmentListStatus,
            List<CashSettlementResponse> cashSettlmentsList,
            int cashSettlmentsCount,
            bool cashSettlmentshasMore,
            bool cashSettlmentsisLoadingMore,
            Status cashSettlmentspaginationStatus)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderState() when $default != null:
        return $default(
            _that.getOrderListStatus,
            _that.ordersList,
            _that.totalCount,
            _that.hasMore,
            _that.isLoadingMore,
            _that.paginationStatus,
            _that.getOrderDetailStatus,
            _that.orderDetails,
            _that.confirmPickupStatus,
            _that.addBagStatus,
            _that.createNewBagStatus,
            _that.getServicesListStatus,
            _that.removeBagStatus,
            _that.moveBagStatus,
            _that.servicesList,
            _that.getMyOrderListStatus,
            _that.myordersList,
            _that.myOrdersCount,
            _that.myOrdershasMore,
            _that.myOrdersisLoadingMore,
            _that.myOrderspaginationStatus,
            _that.getCashSettlmentListStatus,
            _that.cashSettlmentsList,
            _that.cashSettlmentsCount,
            _that.cashSettlmentshasMore,
            _that.cashSettlmentsisLoadingMore,
            _that.cashSettlmentspaginationStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _OrderState implements OrderState {
  const _OrderState(
      {required this.getOrderListStatus,
      required final List<OrderResponse> ordersList,
      required this.totalCount,
      required this.hasMore,
      required this.isLoadingMore,
      required this.paginationStatus,
      required this.getOrderDetailStatus,
      required this.orderDetails,
      required this.confirmPickupStatus,
      required this.addBagStatus,
      required this.createNewBagStatus,
      required this.getServicesListStatus,
      required this.removeBagStatus,
      required this.moveBagStatus,
      required final List<ServiceListDatamodel> servicesList,
      required this.getMyOrderListStatus,
      required final List<OrderResponse> myordersList,
      required this.myOrdersCount,
      required this.myOrdershasMore,
      required this.myOrdersisLoadingMore,
      required this.myOrderspaginationStatus,
      required this.getCashSettlmentListStatus,
      required final List<CashSettlementResponse> cashSettlmentsList,
      required this.cashSettlmentsCount,
      required this.cashSettlmentshasMore,
      required this.cashSettlmentsisLoadingMore,
      required this.cashSettlmentspaginationStatus})
      : _ordersList = ordersList,
        _servicesList = servicesList,
        _myordersList = myordersList,
        _cashSettlmentsList = cashSettlmentsList;

  @override
  final Status getOrderListStatus;
  final List<OrderResponse> _ordersList;
  @override
  List<OrderResponse> get ordersList {
    if (_ordersList is EqualUnmodifiableListView) return _ordersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersList);
  }

  @override
  final int totalCount;
  @override
  final bool hasMore;
  @override
  final bool isLoadingMore;
  @override
  final Status paginationStatus;
  @override
  final Status getOrderDetailStatus;
  @override
  final OrderDetailsResponseModel orderDetails;
  @override
  final Status confirmPickupStatus;
  @override
  final Status addBagStatus;
  @override
  final Status createNewBagStatus;
  @override
  final Status getServicesListStatus;
  @override
  final Status removeBagStatus;
  @override
  final Status moveBagStatus;
  final List<ServiceListDatamodel> _servicesList;
  @override
  List<ServiceListDatamodel> get servicesList {
    if (_servicesList is EqualUnmodifiableListView) return _servicesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servicesList);
  }

  @override
  final Status getMyOrderListStatus;
  final List<OrderResponse> _myordersList;
  @override
  List<OrderResponse> get myordersList {
    if (_myordersList is EqualUnmodifiableListView) return _myordersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myordersList);
  }

  @override
  final int myOrdersCount;
  @override
  final bool myOrdershasMore;
  @override
  final bool myOrdersisLoadingMore;
  @override
  final Status myOrderspaginationStatus;
  @override
  final Status getCashSettlmentListStatus;
  final List<CashSettlementResponse> _cashSettlmentsList;
  @override
  List<CashSettlementResponse> get cashSettlmentsList {
    if (_cashSettlmentsList is EqualUnmodifiableListView)
      return _cashSettlmentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cashSettlmentsList);
  }

  @override
  final int cashSettlmentsCount;
  @override
  final bool cashSettlmentshasMore;
  @override
  final bool cashSettlmentsisLoadingMore;
  @override
  final Status cashSettlmentspaginationStatus;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderState &&
            (identical(other.getOrderListStatus, getOrderListStatus) ||
                other.getOrderListStatus == getOrderListStatus) &&
            const DeepCollectionEquality()
                .equals(other._ordersList, _ordersList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.paginationStatus, paginationStatus) ||
                other.paginationStatus == paginationStatus) &&
            (identical(other.getOrderDetailStatus, getOrderDetailStatus) ||
                other.getOrderDetailStatus == getOrderDetailStatus) &&
            (identical(other.orderDetails, orderDetails) ||
                other.orderDetails == orderDetails) &&
            (identical(other.confirmPickupStatus, confirmPickupStatus) ||
                other.confirmPickupStatus == confirmPickupStatus) &&
            (identical(other.addBagStatus, addBagStatus) ||
                other.addBagStatus == addBagStatus) &&
            (identical(other.createNewBagStatus, createNewBagStatus) ||
                other.createNewBagStatus == createNewBagStatus) &&
            (identical(other.getServicesListStatus, getServicesListStatus) ||
                other.getServicesListStatus == getServicesListStatus) &&
            (identical(other.removeBagStatus, removeBagStatus) ||
                other.removeBagStatus == removeBagStatus) &&
            (identical(other.moveBagStatus, moveBagStatus) ||
                other.moveBagStatus == moveBagStatus) &&
            const DeepCollectionEquality()
                .equals(other._servicesList, _servicesList) &&
            (identical(other.getMyOrderListStatus, getMyOrderListStatus) ||
                other.getMyOrderListStatus == getMyOrderListStatus) &&
            const DeepCollectionEquality()
                .equals(other._myordersList, _myordersList) &&
            (identical(other.myOrdersCount, myOrdersCount) ||
                other.myOrdersCount == myOrdersCount) &&
            (identical(other.myOrdershasMore, myOrdershasMore) ||
                other.myOrdershasMore == myOrdershasMore) &&
            (identical(other.myOrdersisLoadingMore, myOrdersisLoadingMore) ||
                other.myOrdersisLoadingMore == myOrdersisLoadingMore) &&
            (identical(other.myOrderspaginationStatus, myOrderspaginationStatus) ||
                other.myOrderspaginationStatus == myOrderspaginationStatus) &&
            (identical(other.getCashSettlmentListStatus,
                    getCashSettlmentListStatus) ||
                other.getCashSettlmentListStatus ==
                    getCashSettlmentListStatus) &&
            const DeepCollectionEquality()
                .equals(other._cashSettlmentsList, _cashSettlmentsList) &&
            (identical(other.cashSettlmentsCount, cashSettlmentsCount) ||
                other.cashSettlmentsCount == cashSettlmentsCount) &&
            (identical(other.cashSettlmentshasMore, cashSettlmentshasMore) ||
                other.cashSettlmentshasMore == cashSettlmentshasMore) &&
            (identical(other.cashSettlmentsisLoadingMore,
                    cashSettlmentsisLoadingMore) ||
                other.cashSettlmentsisLoadingMore ==
                    cashSettlmentsisLoadingMore) &&
            (identical(other.cashSettlmentspaginationStatus,
                    cashSettlmentspaginationStatus) ||
                other.cashSettlmentspaginationStatus ==
                    cashSettlmentspaginationStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        getOrderListStatus,
        const DeepCollectionEquality().hash(_ordersList),
        totalCount,
        hasMore,
        isLoadingMore,
        paginationStatus,
        getOrderDetailStatus,
        orderDetails,
        confirmPickupStatus,
        addBagStatus,
        createNewBagStatus,
        getServicesListStatus,
        removeBagStatus,
        moveBagStatus,
        const DeepCollectionEquality().hash(_servicesList),
        getMyOrderListStatus,
        const DeepCollectionEquality().hash(_myordersList),
        myOrdersCount,
        myOrdershasMore,
        myOrdersisLoadingMore,
        myOrderspaginationStatus,
        getCashSettlmentListStatus,
        const DeepCollectionEquality().hash(_cashSettlmentsList),
        cashSettlmentsCount,
        cashSettlmentshasMore,
        cashSettlmentsisLoadingMore,
        cashSettlmentspaginationStatus
      ]);

  @override
  String toString() {
    return 'OrderState(getOrderListStatus: $getOrderListStatus, ordersList: $ordersList, totalCount: $totalCount, hasMore: $hasMore, isLoadingMore: $isLoadingMore, paginationStatus: $paginationStatus, getOrderDetailStatus: $getOrderDetailStatus, orderDetails: $orderDetails, confirmPickupStatus: $confirmPickupStatus, addBagStatus: $addBagStatus, createNewBagStatus: $createNewBagStatus, getServicesListStatus: $getServicesListStatus, removeBagStatus: $removeBagStatus, moveBagStatus: $moveBagStatus, servicesList: $servicesList, getMyOrderListStatus: $getMyOrderListStatus, myordersList: $myordersList, myOrdersCount: $myOrdersCount, myOrdershasMore: $myOrdershasMore, myOrdersisLoadingMore: $myOrdersisLoadingMore, myOrderspaginationStatus: $myOrderspaginationStatus, getCashSettlmentListStatus: $getCashSettlmentListStatus, cashSettlmentsList: $cashSettlmentsList, cashSettlmentsCount: $cashSettlmentsCount, cashSettlmentshasMore: $cashSettlmentshasMore, cashSettlmentsisLoadingMore: $cashSettlmentsisLoadingMore, cashSettlmentspaginationStatus: $cashSettlmentspaginationStatus)';
  }
}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(
          _OrderState value, $Res Function(_OrderState) _then) =
      __$OrderStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Status getOrderListStatus,
      List<OrderResponse> ordersList,
      int totalCount,
      bool hasMore,
      bool isLoadingMore,
      Status paginationStatus,
      Status getOrderDetailStatus,
      OrderDetailsResponseModel orderDetails,
      Status confirmPickupStatus,
      Status addBagStatus,
      Status createNewBagStatus,
      Status getServicesListStatus,
      Status removeBagStatus,
      Status moveBagStatus,
      List<ServiceListDatamodel> servicesList,
      Status getMyOrderListStatus,
      List<OrderResponse> myordersList,
      int myOrdersCount,
      bool myOrdershasMore,
      bool myOrdersisLoadingMore,
      Status myOrderspaginationStatus,
      Status getCashSettlmentListStatus,
      List<CashSettlementResponse> cashSettlmentsList,
      int cashSettlmentsCount,
      bool cashSettlmentshasMore,
      bool cashSettlmentsisLoadingMore,
      Status cashSettlmentspaginationStatus});

  @override
  $StatusCopyWith<$Res> get getOrderListStatus;
  @override
  $StatusCopyWith<$Res> get paginationStatus;
  @override
  $StatusCopyWith<$Res> get getOrderDetailStatus;
  @override
  $OrderDetailsResponseModelCopyWith<$Res> get orderDetails;
  @override
  $StatusCopyWith<$Res> get confirmPickupStatus;
  @override
  $StatusCopyWith<$Res> get addBagStatus;
  @override
  $StatusCopyWith<$Res> get createNewBagStatus;
  @override
  $StatusCopyWith<$Res> get getServicesListStatus;
  @override
  $StatusCopyWith<$Res> get removeBagStatus;
  @override
  $StatusCopyWith<$Res> get moveBagStatus;
  @override
  $StatusCopyWith<$Res> get getMyOrderListStatus;
  @override
  $StatusCopyWith<$Res> get myOrderspaginationStatus;
  @override
  $StatusCopyWith<$Res> get getCashSettlmentListStatus;
  @override
  $StatusCopyWith<$Res> get cashSettlmentspaginationStatus;
}

/// @nodoc
class __$OrderStateCopyWithImpl<$Res> implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? getOrderListStatus = null,
    Object? ordersList = null,
    Object? totalCount = null,
    Object? hasMore = null,
    Object? isLoadingMore = null,
    Object? paginationStatus = null,
    Object? getOrderDetailStatus = null,
    Object? orderDetails = null,
    Object? confirmPickupStatus = null,
    Object? addBagStatus = null,
    Object? createNewBagStatus = null,
    Object? getServicesListStatus = null,
    Object? removeBagStatus = null,
    Object? moveBagStatus = null,
    Object? servicesList = null,
    Object? getMyOrderListStatus = null,
    Object? myordersList = null,
    Object? myOrdersCount = null,
    Object? myOrdershasMore = null,
    Object? myOrdersisLoadingMore = null,
    Object? myOrderspaginationStatus = null,
    Object? getCashSettlmentListStatus = null,
    Object? cashSettlmentsList = null,
    Object? cashSettlmentsCount = null,
    Object? cashSettlmentshasMore = null,
    Object? cashSettlmentsisLoadingMore = null,
    Object? cashSettlmentspaginationStatus = null,
  }) {
    return _then(_OrderState(
      getOrderListStatus: null == getOrderListStatus
          ? _self.getOrderListStatus
          : getOrderListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      ordersList: null == ordersList
          ? _self._ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>,
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _self.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      paginationStatus: null == paginationStatus
          ? _self.paginationStatus
          : paginationStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getOrderDetailStatus: null == getOrderDetailStatus
          ? _self.getOrderDetailStatus
          : getOrderDetailStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      orderDetails: null == orderDetails
          ? _self.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as OrderDetailsResponseModel,
      confirmPickupStatus: null == confirmPickupStatus
          ? _self.confirmPickupStatus
          : confirmPickupStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addBagStatus: null == addBagStatus
          ? _self.addBagStatus
          : addBagStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      createNewBagStatus: null == createNewBagStatus
          ? _self.createNewBagStatus
          : createNewBagStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getServicesListStatus: null == getServicesListStatus
          ? _self.getServicesListStatus
          : getServicesListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      removeBagStatus: null == removeBagStatus
          ? _self.removeBagStatus
          : removeBagStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      moveBagStatus: null == moveBagStatus
          ? _self.moveBagStatus
          : moveBagStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      servicesList: null == servicesList
          ? _self._servicesList
          : servicesList // ignore: cast_nullable_to_non_nullable
              as List<ServiceListDatamodel>,
      getMyOrderListStatus: null == getMyOrderListStatus
          ? _self.getMyOrderListStatus
          : getMyOrderListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      myordersList: null == myordersList
          ? _self._myordersList
          : myordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>,
      myOrdersCount: null == myOrdersCount
          ? _self.myOrdersCount
          : myOrdersCount // ignore: cast_nullable_to_non_nullable
              as int,
      myOrdershasMore: null == myOrdershasMore
          ? _self.myOrdershasMore
          : myOrdershasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      myOrdersisLoadingMore: null == myOrdersisLoadingMore
          ? _self.myOrdersisLoadingMore
          : myOrdersisLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      myOrderspaginationStatus: null == myOrderspaginationStatus
          ? _self.myOrderspaginationStatus
          : myOrderspaginationStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getCashSettlmentListStatus: null == getCashSettlmentListStatus
          ? _self.getCashSettlmentListStatus
          : getCashSettlmentListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      cashSettlmentsList: null == cashSettlmentsList
          ? _self._cashSettlmentsList
          : cashSettlmentsList // ignore: cast_nullable_to_non_nullable
              as List<CashSettlementResponse>,
      cashSettlmentsCount: null == cashSettlmentsCount
          ? _self.cashSettlmentsCount
          : cashSettlmentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      cashSettlmentshasMore: null == cashSettlmentshasMore
          ? _self.cashSettlmentshasMore
          : cashSettlmentshasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cashSettlmentsisLoadingMore: null == cashSettlmentsisLoadingMore
          ? _self.cashSettlmentsisLoadingMore
          : cashSettlmentsisLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cashSettlmentspaginationStatus: null == cashSettlmentspaginationStatus
          ? _self.cashSettlmentspaginationStatus
          : cashSettlmentspaginationStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getOrderListStatus {
    return $StatusCopyWith<$Res>(_self.getOrderListStatus, (value) {
      return _then(_self.copyWith(getOrderListStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get paginationStatus {
    return $StatusCopyWith<$Res>(_self.paginationStatus, (value) {
      return _then(_self.copyWith(paginationStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getOrderDetailStatus {
    return $StatusCopyWith<$Res>(_self.getOrderDetailStatus, (value) {
      return _then(_self.copyWith(getOrderDetailStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsResponseModelCopyWith<$Res> get orderDetails {
    return $OrderDetailsResponseModelCopyWith<$Res>(_self.orderDetails,
        (value) {
      return _then(_self.copyWith(orderDetails: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get confirmPickupStatus {
    return $StatusCopyWith<$Res>(_self.confirmPickupStatus, (value) {
      return _then(_self.copyWith(confirmPickupStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get addBagStatus {
    return $StatusCopyWith<$Res>(_self.addBagStatus, (value) {
      return _then(_self.copyWith(addBagStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get createNewBagStatus {
    return $StatusCopyWith<$Res>(_self.createNewBagStatus, (value) {
      return _then(_self.copyWith(createNewBagStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getServicesListStatus {
    return $StatusCopyWith<$Res>(_self.getServicesListStatus, (value) {
      return _then(_self.copyWith(getServicesListStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get removeBagStatus {
    return $StatusCopyWith<$Res>(_self.removeBagStatus, (value) {
      return _then(_self.copyWith(removeBagStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get moveBagStatus {
    return $StatusCopyWith<$Res>(_self.moveBagStatus, (value) {
      return _then(_self.copyWith(moveBagStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getMyOrderListStatus {
    return $StatusCopyWith<$Res>(_self.getMyOrderListStatus, (value) {
      return _then(_self.copyWith(getMyOrderListStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get myOrderspaginationStatus {
    return $StatusCopyWith<$Res>(_self.myOrderspaginationStatus, (value) {
      return _then(_self.copyWith(myOrderspaginationStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getCashSettlmentListStatus {
    return $StatusCopyWith<$Res>(_self.getCashSettlmentListStatus, (value) {
      return _then(_self.copyWith(getCashSettlmentListStatus: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get cashSettlmentspaginationStatus {
    return $StatusCopyWith<$Res>(_self.cashSettlmentspaginationStatus, (value) {
      return _then(_self.copyWith(cashSettlmentspaginationStatus: value));
    });
  }
}

// dart format on
