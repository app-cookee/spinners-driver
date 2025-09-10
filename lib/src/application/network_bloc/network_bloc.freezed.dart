// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkEvent()';
  }
}

/// @nodoc
class $NetworkEventCopyWith<$Res> {
  $NetworkEventCopyWith(NetworkEvent _, $Res Function(NetworkEvent) __);
}

/// Adds pattern-matching-related methods to [NetworkEvent].
extension NetworkEventPatterns on NetworkEvent {
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
    TResult Function(_Observe value)? observe,
    TResult Function(_Notify value)? notify,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Observe() when observe != null:
        return observe(_that);
      case _Notify() when notify != null:
        return notify(_that);
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
    required TResult Function(_Observe value) observe,
    required TResult Function(_Notify value) notify,
  }) {
    final _that = this;
    switch (_that) {
      case _Observe():
        return observe(_that);
      case _Notify():
        return notify(_that);
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
    TResult? Function(_Observe value)? observe,
    TResult? Function(_Notify value)? notify,
  }) {
    final _that = this;
    switch (_that) {
      case _Observe() when observe != null:
        return observe(_that);
      case _Notify() when notify != null:
        return notify(_that);
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
    TResult Function()? observe,
    TResult Function(bool isConnected)? notify,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Observe() when observe != null:
        return observe();
      case _Notify() when notify != null:
        return notify(_that.isConnected);
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
    required TResult Function() observe,
    required TResult Function(bool isConnected) notify,
  }) {
    final _that = this;
    switch (_that) {
      case _Observe():
        return observe();
      case _Notify():
        return notify(_that.isConnected);
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
    TResult? Function()? observe,
    TResult? Function(bool isConnected)? notify,
  }) {
    final _that = this;
    switch (_that) {
      case _Observe() when observe != null:
        return observe();
      case _Notify() when notify != null:
        return notify(_that.isConnected);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Observe implements NetworkEvent {
  const _Observe();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Observe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkEvent.observe()';
  }
}

/// @nodoc

class _Notify implements NetworkEvent {
  const _Notify(this.isConnected);

  final bool isConnected;

  /// Create a copy of NetworkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotifyCopyWith<_Notify> get copyWith =>
      __$NotifyCopyWithImpl<_Notify>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notify &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @override
  String toString() {
    return 'NetworkEvent.notify(isConnected: $isConnected)';
  }
}

/// @nodoc
abstract mixin class _$NotifyCopyWith<$Res>
    implements $NetworkEventCopyWith<$Res> {
  factory _$NotifyCopyWith(_Notify value, $Res Function(_Notify) _then) =
      __$NotifyCopyWithImpl;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$NotifyCopyWithImpl<$Res> implements _$NotifyCopyWith<$Res> {
  __$NotifyCopyWithImpl(this._self, this._then);

  final _Notify _self;
  final $Res Function(_Notify) _then;

  /// Create a copy of NetworkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_Notify(
      null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$NetworkState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkState()';
  }
}

/// @nodoc
class $NetworkStateCopyWith<$Res> {
  $NetworkStateCopyWith(NetworkState _, $Res Function(NetworkState) __);
}

/// Adds pattern-matching-related methods to [NetworkState].
extension NetworkStatePatterns on NetworkState {
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Success():
        return success(_that);
      case _Failure():
        return failure(_that);
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure();
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
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Success():
        return success();
      case _Failure():
        return failure();
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
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements NetworkState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkState.initial()';
  }
}

/// @nodoc

class _Success implements NetworkState {
  const _Success();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkState.success()';
  }
}

/// @nodoc

class _Failure implements NetworkState {
  const _Failure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkState.failure()';
  }
}

// dart format on
