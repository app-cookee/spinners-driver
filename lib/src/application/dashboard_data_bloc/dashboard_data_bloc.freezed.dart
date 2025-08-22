// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardDataEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DashboardDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardDataEvent()';
  }
}

/// @nodoc
class $DashboardDataEventCopyWith<$Res> {
  $DashboardDataEventCopyWith(
      DashboardDataEvent _, $Res Function(DashboardDataEvent) __);
}

/// Adds pattern-matching-related methods to [DashboardDataEvent].
extension DashboardDataEventPatterns on DashboardDataEvent {
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
    TResult Function(_GetDashboardData value)? getDashboardData,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData() when getDashboardData != null:
        return getDashboardData(_that);
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
    required TResult Function(_GetDashboardData value) getDashboardData,
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData():
        return getDashboardData(_that);
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
    TResult? Function(_GetDashboardData value)? getDashboardData,
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData() when getDashboardData != null:
        return getDashboardData(_that);
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
    TResult Function()? getDashboardData,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData() when getDashboardData != null:
        return getDashboardData();
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
    required TResult Function() getDashboardData,
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData():
        return getDashboardData();
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
    TResult? Function()? getDashboardData,
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData() when getDashboardData != null:
        return getDashboardData();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetDashboardData implements DashboardDataEvent {
  const _GetDashboardData();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetDashboardData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardDataEvent.getDashboardData()';
  }
}

/// @nodoc
mixin _$DashboardDataState {
  Status get getDashboardDataStatus;
  DashboardDataModel get dashboardDataModel;

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DashboardDataStateCopyWith<DashboardDataState> get copyWith =>
      _$DashboardDataStateCopyWithImpl<DashboardDataState>(
          this as DashboardDataState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DashboardDataState &&
            (identical(other.getDashboardDataStatus, getDashboardDataStatus) ||
                other.getDashboardDataStatus == getDashboardDataStatus) &&
            (identical(other.dashboardDataModel, dashboardDataModel) ||
                other.dashboardDataModel == dashboardDataModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getDashboardDataStatus, dashboardDataModel);

  @override
  String toString() {
    return 'DashboardDataState(getDashboardDataStatus: $getDashboardDataStatus, dashboardDataModel: $dashboardDataModel)';
  }
}

/// @nodoc
abstract mixin class $DashboardDataStateCopyWith<$Res> {
  factory $DashboardDataStateCopyWith(
          DashboardDataState value, $Res Function(DashboardDataState) _then) =
      _$DashboardDataStateCopyWithImpl;
  @useResult
  $Res call(
      {Status getDashboardDataStatus, DashboardDataModel dashboardDataModel});

  $StatusCopyWith<$Res> get getDashboardDataStatus;
  $DashboardDataModelCopyWith<$Res> get dashboardDataModel;
}

/// @nodoc
class _$DashboardDataStateCopyWithImpl<$Res>
    implements $DashboardDataStateCopyWith<$Res> {
  _$DashboardDataStateCopyWithImpl(this._self, this._then);

  final DashboardDataState _self;
  final $Res Function(DashboardDataState) _then;

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getDashboardDataStatus = null,
    Object? dashboardDataModel = null,
  }) {
    return _then(_self.copyWith(
      getDashboardDataStatus: null == getDashboardDataStatus
          ? _self.getDashboardDataStatus
          : getDashboardDataStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      dashboardDataModel: null == dashboardDataModel
          ? _self.dashboardDataModel
          : dashboardDataModel // ignore: cast_nullable_to_non_nullable
              as DashboardDataModel,
    ));
  }

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getDashboardDataStatus {
    return $StatusCopyWith<$Res>(_self.getDashboardDataStatus, (value) {
      return _then(_self.copyWith(getDashboardDataStatus: value));
    });
  }

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardDataModelCopyWith<$Res> get dashboardDataModel {
    return $DashboardDataModelCopyWith<$Res>(_self.dashboardDataModel, (value) {
      return _then(_self.copyWith(dashboardDataModel: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DashboardDataState].
extension DashboardDataStatePatterns on DashboardDataState {
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
    TResult Function(_DashboardDataState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState() when $default != null:
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
    TResult Function(_DashboardDataState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState():
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
    TResult? Function(_DashboardDataState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState() when $default != null:
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
    TResult Function(Status getDashboardDataStatus,
            DashboardDataModel dashboardDataModel)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState() when $default != null:
        return $default(_that.getDashboardDataStatus, _that.dashboardDataModel);
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
    TResult Function(Status getDashboardDataStatus,
            DashboardDataModel dashboardDataModel)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState():
        return $default(_that.getDashboardDataStatus, _that.dashboardDataModel);
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
    TResult? Function(Status getDashboardDataStatus,
            DashboardDataModel dashboardDataModel)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState() when $default != null:
        return $default(_that.getDashboardDataStatus, _that.dashboardDataModel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DashboardDataState implements DashboardDataState {
  _DashboardDataState(
      {required this.getDashboardDataStatus, required this.dashboardDataModel});

  @override
  final Status getDashboardDataStatus;
  @override
  final DashboardDataModel dashboardDataModel;

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DashboardDataStateCopyWith<_DashboardDataState> get copyWith =>
      __$DashboardDataStateCopyWithImpl<_DashboardDataState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardDataState &&
            (identical(other.getDashboardDataStatus, getDashboardDataStatus) ||
                other.getDashboardDataStatus == getDashboardDataStatus) &&
            (identical(other.dashboardDataModel, dashboardDataModel) ||
                other.dashboardDataModel == dashboardDataModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getDashboardDataStatus, dashboardDataModel);

  @override
  String toString() {
    return 'DashboardDataState(getDashboardDataStatus: $getDashboardDataStatus, dashboardDataModel: $dashboardDataModel)';
  }
}

/// @nodoc
abstract mixin class _$DashboardDataStateCopyWith<$Res>
    implements $DashboardDataStateCopyWith<$Res> {
  factory _$DashboardDataStateCopyWith(
          _DashboardDataState value, $Res Function(_DashboardDataState) _then) =
      __$DashboardDataStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Status getDashboardDataStatus, DashboardDataModel dashboardDataModel});

  @override
  $StatusCopyWith<$Res> get getDashboardDataStatus;
  @override
  $DashboardDataModelCopyWith<$Res> get dashboardDataModel;
}

/// @nodoc
class __$DashboardDataStateCopyWithImpl<$Res>
    implements _$DashboardDataStateCopyWith<$Res> {
  __$DashboardDataStateCopyWithImpl(this._self, this._then);

  final _DashboardDataState _self;
  final $Res Function(_DashboardDataState) _then;

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? getDashboardDataStatus = null,
    Object? dashboardDataModel = null,
  }) {
    return _then(_DashboardDataState(
      getDashboardDataStatus: null == getDashboardDataStatus
          ? _self.getDashboardDataStatus
          : getDashboardDataStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      dashboardDataModel: null == dashboardDataModel
          ? _self.dashboardDataModel
          : dashboardDataModel // ignore: cast_nullable_to_non_nullable
              as DashboardDataModel,
    ));
  }

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getDashboardDataStatus {
    return $StatusCopyWith<$Res>(_self.getDashboardDataStatus, (value) {
      return _then(_self.copyWith(getDashboardDataStatus: value));
    });
  }

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardDataModelCopyWith<$Res> get dashboardDataModel {
    return $DashboardDataModelCopyWith<$Res>(_self.dashboardDataModel, (value) {
      return _then(_self.copyWith(dashboardDataModel: value));
    });
  }
}

// dart format on
