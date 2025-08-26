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
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_ConfirmPickup value)? confirmPickup,
    TResult Function(_AddBag value)? addBag,
    TResult Function(_CreateNewBag value)? createNewBag,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that);
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that);
      case _ConfirmPickup() when confirmPickup != null:
        return confirmPickup(_that);
      case _AddBag() when addBag != null:
        return addBag(_that);
      case _CreateNewBag() when createNewBag != null:
        return createNewBag(_that);
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
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_ConfirmPickup value) confirmPickup,
    required TResult Function(_AddBag value) addBag,
    required TResult Function(_CreateNewBag value) createNewBag,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList():
        return getOrdersList(_that);
      case _GetOrderDetails():
        return getOrderDetails(_that);
      case _ConfirmPickup():
        return confirmPickup(_that);
      case _AddBag():
        return addBag(_that);
      case _CreateNewBag():
        return createNewBag(_that);
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
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_ConfirmPickup value)? confirmPickup,
    TResult? Function(_AddBag value)? addBag,
    TResult? Function(_CreateNewBag value)? createNewBag,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that);
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that);
      case _ConfirmPickup() when confirmPickup != null:
        return confirmPickup(_that);
      case _AddBag() when addBag != null:
        return addBag(_that);
      case _CreateNewBag() when createNewBag != null:
        return createNewBag(_that);
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
    TResult Function(int limit, int skip, String filter)? getOrdersList,
    TResult Function(String orderId)? getOrderDetails,
    TResult Function(String orderId, String driverNotes)? confirmPickup,
    TResult Function(String orderItemId, String bagId)? addBag,
    TResult Function(String bagId, String orderId, String serviceId)?
        createNewBag,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that.limit, _that.skip, _that.filter);
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that.orderId);
      case _ConfirmPickup() when confirmPickup != null:
        return confirmPickup(_that.orderId, _that.driverNotes);
      case _AddBag() when addBag != null:
        return addBag(_that.orderItemId, _that.bagId);
      case _CreateNewBag() when createNewBag != null:
        return createNewBag(_that.bagId, _that.orderId, _that.serviceId);
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
    required TResult Function(int limit, int skip, String filter) getOrdersList,
    required TResult Function(String orderId) getOrderDetails,
    required TResult Function(String orderId, String driverNotes) confirmPickup,
    required TResult Function(String orderItemId, String bagId) addBag,
    required TResult Function(String bagId, String orderId, String serviceId)
        createNewBag,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList():
        return getOrdersList(_that.limit, _that.skip, _that.filter);
      case _GetOrderDetails():
        return getOrderDetails(_that.orderId);
      case _ConfirmPickup():
        return confirmPickup(_that.orderId, _that.driverNotes);
      case _AddBag():
        return addBag(_that.orderItemId, _that.bagId);
      case _CreateNewBag():
        return createNewBag(_that.bagId, _that.orderId, _that.serviceId);
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
    TResult? Function(int limit, int skip, String filter)? getOrdersList,
    TResult? Function(String orderId)? getOrderDetails,
    TResult? Function(String orderId, String driverNotes)? confirmPickup,
    TResult? Function(String orderItemId, String bagId)? addBag,
    TResult? Function(String bagId, String orderId, String serviceId)?
        createNewBag,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that.limit, _that.skip, _that.filter);
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that.orderId);
      case _ConfirmPickup() when confirmPickup != null:
        return confirmPickup(_that.orderId, _that.driverNotes);
      case _AddBag() when addBag != null:
        return addBag(_that.orderItemId, _that.bagId);
      case _CreateNewBag() when createNewBag != null:
        return createNewBag(_that.bagId, _that.orderId, _that.serviceId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetOrdersList implements OrderEvent {
  const _GetOrdersList(
      {required this.limit, required this.skip, required this.filter});

  final int limit;
  final int skip;
  final String filter;

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
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, skip, filter);

  @override
  String toString() {
    return 'OrderEvent.getOrdersList(limit: $limit, skip: $skip, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class _$GetOrdersListCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$GetOrdersListCopyWith(
          _GetOrdersList value, $Res Function(_GetOrdersList) _then) =
      __$GetOrdersListCopyWithImpl;
  @useResult
  $Res call({int limit, int skip, String filter});
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
                other.createNewBagStatus == createNewBagStatus));
  }

  @override
  int get hashCode => Object.hash(
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
      createNewBagStatus);

  @override
  String toString() {
    return 'OrderState(getOrderListStatus: $getOrderListStatus, ordersList: $ordersList, totalCount: $totalCount, hasMore: $hasMore, isLoadingMore: $isLoadingMore, paginationStatus: $paginationStatus, getOrderDetailStatus: $getOrderDetailStatus, orderDetails: $orderDetails, confirmPickupStatus: $confirmPickupStatus, addBagStatus: $addBagStatus, createNewBagStatus: $createNewBagStatus)';
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
      Status createNewBagStatus});

  $StatusCopyWith<$Res> get getOrderListStatus;
  $StatusCopyWith<$Res> get paginationStatus;
  $StatusCopyWith<$Res> get getOrderDetailStatus;
  $OrderDetailsResponseModelCopyWith<$Res> get orderDetails;
  $StatusCopyWith<$Res> get confirmPickupStatus;
  $StatusCopyWith<$Res> get addBagStatus;
  $StatusCopyWith<$Res> get createNewBagStatus;
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
            Status createNewBagStatus)?
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
            _that.createNewBagStatus);
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
            Status createNewBagStatus)
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
            _that.createNewBagStatus);
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
            Status createNewBagStatus)?
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
            _that.createNewBagStatus);
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
      required this.createNewBagStatus})
      : _ordersList = ordersList;

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
                other.createNewBagStatus == createNewBagStatus));
  }

  @override
  int get hashCode => Object.hash(
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
      createNewBagStatus);

  @override
  String toString() {
    return 'OrderState(getOrderListStatus: $getOrderListStatus, ordersList: $ordersList, totalCount: $totalCount, hasMore: $hasMore, isLoadingMore: $isLoadingMore, paginationStatus: $paginationStatus, getOrderDetailStatus: $getOrderDetailStatus, orderDetails: $orderDetails, confirmPickupStatus: $confirmPickupStatus, addBagStatus: $addBagStatus, createNewBagStatus: $createNewBagStatus)';
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
      Status createNewBagStatus});

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
}

// dart format on
