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
  int get limit;
  int get skip;
  String get filter;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderEventCopyWith<OrderEvent> get copyWith =>
      _$OrderEventCopyWithImpl<OrderEvent>(this as OrderEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderEvent &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, skip, filter);

  @override
  String toString() {
    return 'OrderEvent(limit: $limit, skip: $skip, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) _then) =
      _$OrderEventCopyWithImpl;
  @useResult
  $Res call({int limit, int skip, String filter});
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res> implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._self, this._then);

  final OrderEvent _self;
  final $Res Function(OrderEvent) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? skip = null,
    Object? filter = null,
  }) {
    return _then(_self.copyWith(
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
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that);
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
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList():
        return getOrdersList(_that);
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
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that);
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
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that.limit, _that.skip, _that.filter);
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
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList():
        return getOrdersList(_that.limit, _that.skip, _that.filter);
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
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrdersList() when getOrdersList != null:
        return getOrdersList(_that.limit, _that.skip, _that.filter);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetOrdersList implements OrderEvent {
  const _GetOrdersList(
      {required this.limit, required this.skip, required this.filter});

  @override
  final int limit;
  @override
  final int skip;
  @override
  final String filter;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
  @override
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
  @override
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
mixin _$OrderState {
  Status get getOrderListStatus;
  List<OrderResponse> get ordersList;
  int get totalCount;
  bool get hasMore;
  bool get isLoadingMore;
  Status get paginationStatus;

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
                other.paginationStatus == paginationStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getOrderListStatus,
      const DeepCollectionEquality().hash(ordersList),
      totalCount,
      hasMore,
      isLoadingMore,
      paginationStatus);

  @override
  String toString() {
    return 'OrderState(getOrderListStatus: $getOrderListStatus, ordersList: $ordersList, totalCount: $totalCount, hasMore: $hasMore, isLoadingMore: $isLoadingMore, paginationStatus: $paginationStatus)';
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
      Status paginationStatus});

  $StatusCopyWith<$Res> get getOrderListStatus;
  $StatusCopyWith<$Res> get paginationStatus;
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
            Status paginationStatus)?
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
            _that.paginationStatus);
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
            Status paginationStatus)
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
            _that.paginationStatus);
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
            Status paginationStatus)?
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
            _that.paginationStatus);
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
      required this.paginationStatus})
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
                other.paginationStatus == paginationStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getOrderListStatus,
      const DeepCollectionEquality().hash(_ordersList),
      totalCount,
      hasMore,
      isLoadingMore,
      paginationStatus);

  @override
  String toString() {
    return 'OrderState(getOrderListStatus: $getOrderListStatus, ordersList: $ordersList, totalCount: $totalCount, hasMore: $hasMore, isLoadingMore: $isLoadingMore, paginationStatus: $paginationStatus)';
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
      Status paginationStatus});

  @override
  $StatusCopyWith<$Res> get getOrderListStatus;
  @override
  $StatusCopyWith<$Res> get paginationStatus;
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
}

// dart format on
