// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryEvent {
  String get orderId;

  /// Create a copy of DeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeliveryEventCopyWith<DeliveryEvent> get copyWith =>
      _$DeliveryEventCopyWithImpl<DeliveryEvent>(
          this as DeliveryEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeliveryEvent &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'DeliveryEvent(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $DeliveryEventCopyWith<$Res> {
  factory $DeliveryEventCopyWith(
          DeliveryEvent value, $Res Function(DeliveryEvent) _then) =
      _$DeliveryEventCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$DeliveryEventCopyWithImpl<$Res>
    implements $DeliveryEventCopyWith<$Res> {
  _$DeliveryEventCopyWithImpl(this._self, this._then);

  final DeliveryEvent _self;
  final $Res Function(DeliveryEvent) _then;

  /// Create a copy of DeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DeliveryEvent].
extension DeliveryEventPatterns on DeliveryEvent {
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
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that);
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
    required TResult Function(_GetOrderDetails value) getOrderDetails,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrderDetails():
        return getOrderDetails(_that);
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
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that);
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
    TResult Function(String orderId)? getOrderDetails,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that.orderId);
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
    required TResult Function(String orderId) getOrderDetails,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrderDetails():
        return getOrderDetails(_that.orderId);
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
    TResult? Function(String orderId)? getOrderDetails,
  }) {
    final _that = this;
    switch (_that) {
      case _GetOrderDetails() when getOrderDetails != null:
        return getOrderDetails(_that.orderId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetOrderDetails implements DeliveryEvent {
  const _GetOrderDetails({required this.orderId});

  @override
  final String orderId;

  /// Create a copy of DeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'DeliveryEvent.getOrderDetails(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class _$GetOrderDetailsCopyWith<$Res>
    implements $DeliveryEventCopyWith<$Res> {
  factory _$GetOrderDetailsCopyWith(
          _GetOrderDetails value, $Res Function(_GetOrderDetails) _then) =
      __$GetOrderDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$GetOrderDetailsCopyWithImpl<$Res>
    implements _$GetOrderDetailsCopyWith<$Res> {
  __$GetOrderDetailsCopyWithImpl(this._self, this._then);

  final _GetOrderDetails _self;
  final $Res Function(_GetOrderDetails) _then;

  /// Create a copy of DeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
mixin _$DeliveryState {
  Status get getOrderDetailStatus;
  OrderResponse get orderDetails;

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeliveryStateCopyWith<DeliveryState> get copyWith =>
      _$DeliveryStateCopyWithImpl<DeliveryState>(
          this as DeliveryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeliveryState &&
            (identical(other.getOrderDetailStatus, getOrderDetailStatus) ||
                other.getOrderDetailStatus == getOrderDetailStatus) &&
            (identical(other.orderDetails, orderDetails) ||
                other.orderDetails == orderDetails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getOrderDetailStatus, orderDetails);

  @override
  String toString() {
    return 'DeliveryState(getOrderDetailStatus: $getOrderDetailStatus, orderDetails: $orderDetails)';
  }
}

/// @nodoc
abstract mixin class $DeliveryStateCopyWith<$Res> {
  factory $DeliveryStateCopyWith(
          DeliveryState value, $Res Function(DeliveryState) _then) =
      _$DeliveryStateCopyWithImpl;
  @useResult
  $Res call({Status getOrderDetailStatus, OrderResponse orderDetails});

  $StatusCopyWith<$Res> get getOrderDetailStatus;
  $OrderResponseCopyWith<$Res> get orderDetails;
}

/// @nodoc
class _$DeliveryStateCopyWithImpl<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  _$DeliveryStateCopyWithImpl(this._self, this._then);

  final DeliveryState _self;
  final $Res Function(DeliveryState) _then;

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOrderDetailStatus = null,
    Object? orderDetails = null,
  }) {
    return _then(_self.copyWith(
      getOrderDetailStatus: null == getOrderDetailStatus
          ? _self.getOrderDetailStatus
          : getOrderDetailStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      orderDetails: null == orderDetails
          ? _self.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as OrderResponse,
    ));
  }

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getOrderDetailStatus {
    return $StatusCopyWith<$Res>(_self.getOrderDetailStatus, (value) {
      return _then(_self.copyWith(getOrderDetailStatus: value));
    });
  }

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderResponseCopyWith<$Res> get orderDetails {
    return $OrderResponseCopyWith<$Res>(_self.orderDetails, (value) {
      return _then(_self.copyWith(orderDetails: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DeliveryState].
extension DeliveryStatePatterns on DeliveryState {
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
    TResult Function(_DeliveryState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeliveryState() when $default != null:
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
    TResult Function(_DeliveryState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeliveryState():
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
    TResult? Function(_DeliveryState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeliveryState() when $default != null:
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
    TResult Function(Status getOrderDetailStatus, OrderResponse orderDetails)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeliveryState() when $default != null:
        return $default(_that.getOrderDetailStatus, _that.orderDetails);
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
    TResult Function(Status getOrderDetailStatus, OrderResponse orderDetails)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeliveryState():
        return $default(_that.getOrderDetailStatus, _that.orderDetails);
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
    TResult? Function(Status getOrderDetailStatus, OrderResponse orderDetails)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeliveryState() when $default != null:
        return $default(_that.getOrderDetailStatus, _that.orderDetails);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DeliveryState implements DeliveryState {
  _DeliveryState(
      {required this.getOrderDetailStatus, required this.orderDetails});

  @override
  final Status getOrderDetailStatus;
  @override
  final OrderResponse orderDetails;

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeliveryStateCopyWith<_DeliveryState> get copyWith =>
      __$DeliveryStateCopyWithImpl<_DeliveryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryState &&
            (identical(other.getOrderDetailStatus, getOrderDetailStatus) ||
                other.getOrderDetailStatus == getOrderDetailStatus) &&
            (identical(other.orderDetails, orderDetails) ||
                other.orderDetails == orderDetails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getOrderDetailStatus, orderDetails);

  @override
  String toString() {
    return 'DeliveryState(getOrderDetailStatus: $getOrderDetailStatus, orderDetails: $orderDetails)';
  }
}

/// @nodoc
abstract mixin class _$DeliveryStateCopyWith<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  factory _$DeliveryStateCopyWith(
          _DeliveryState value, $Res Function(_DeliveryState) _then) =
      __$DeliveryStateCopyWithImpl;
  @override
  @useResult
  $Res call({Status getOrderDetailStatus, OrderResponse orderDetails});

  @override
  $StatusCopyWith<$Res> get getOrderDetailStatus;
  @override
  $OrderResponseCopyWith<$Res> get orderDetails;
}

/// @nodoc
class __$DeliveryStateCopyWithImpl<$Res>
    implements _$DeliveryStateCopyWith<$Res> {
  __$DeliveryStateCopyWithImpl(this._self, this._then);

  final _DeliveryState _self;
  final $Res Function(_DeliveryState) _then;

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? getOrderDetailStatus = null,
    Object? orderDetails = null,
  }) {
    return _then(_DeliveryState(
      getOrderDetailStatus: null == getOrderDetailStatus
          ? _self.getOrderDetailStatus
          : getOrderDetailStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      orderDetails: null == orderDetails
          ? _self.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as OrderResponse,
    ));
  }

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getOrderDetailStatus {
    return $StatusCopyWith<$Res>(_self.getOrderDetailStatus, (value) {
      return _then(_self.copyWith(getOrderDetailStatus: value));
    });
  }

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderResponseCopyWith<$Res> get orderDetails {
    return $OrderResponseCopyWith<$Res>(_self.orderDetails, (value) {
      return _then(_self.copyWith(orderDetails: value));
    });
  }
}

// dart format on
