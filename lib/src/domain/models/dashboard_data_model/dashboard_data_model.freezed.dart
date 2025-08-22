// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardDataModel {
  int get remainingPickups;
  int get remainingDeliveries;
  int get completedPickups;
  int get completedDeliveries;
  int get totalCollectedCash;
  String get nextActivityAt;
  String get activityType;

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DashboardDataModelCopyWith<DashboardDataModel> get copyWith =>
      _$DashboardDataModelCopyWithImpl<DashboardDataModel>(
          this as DashboardDataModel, _$identity);

  /// Serializes this DashboardDataModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DashboardDataModel &&
            (identical(other.remainingPickups, remainingPickups) ||
                other.remainingPickups == remainingPickups) &&
            (identical(other.remainingDeliveries, remainingDeliveries) ||
                other.remainingDeliveries == remainingDeliveries) &&
            (identical(other.completedPickups, completedPickups) ||
                other.completedPickups == completedPickups) &&
            (identical(other.completedDeliveries, completedDeliveries) ||
                other.completedDeliveries == completedDeliveries) &&
            (identical(other.totalCollectedCash, totalCollectedCash) ||
                other.totalCollectedCash == totalCollectedCash) &&
            (identical(other.nextActivityAt, nextActivityAt) ||
                other.nextActivityAt == nextActivityAt) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      remainingPickups,
      remainingDeliveries,
      completedPickups,
      completedDeliveries,
      totalCollectedCash,
      nextActivityAt,
      activityType);

  @override
  String toString() {
    return 'DashboardDataModel(remainingPickups: $remainingPickups, remainingDeliveries: $remainingDeliveries, completedPickups: $completedPickups, completedDeliveries: $completedDeliveries, totalCollectedCash: $totalCollectedCash, nextActivityAt: $nextActivityAt, activityType: $activityType)';
  }
}

/// @nodoc
abstract mixin class $DashboardDataModelCopyWith<$Res> {
  factory $DashboardDataModelCopyWith(
          DashboardDataModel value, $Res Function(DashboardDataModel) _then) =
      _$DashboardDataModelCopyWithImpl;
  @useResult
  $Res call(
      {int remainingPickups,
      int remainingDeliveries,
      int completedPickups,
      int completedDeliveries,
      int totalCollectedCash,
      String nextActivityAt,
      String activityType});
}

/// @nodoc
class _$DashboardDataModelCopyWithImpl<$Res>
    implements $DashboardDataModelCopyWith<$Res> {
  _$DashboardDataModelCopyWithImpl(this._self, this._then);

  final DashboardDataModel _self;
  final $Res Function(DashboardDataModel) _then;

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingPickups = null,
    Object? remainingDeliveries = null,
    Object? completedPickups = null,
    Object? completedDeliveries = null,
    Object? totalCollectedCash = null,
    Object? nextActivityAt = null,
    Object? activityType = null,
  }) {
    return _then(_self.copyWith(
      remainingPickups: null == remainingPickups
          ? _self.remainingPickups
          : remainingPickups // ignore: cast_nullable_to_non_nullable
              as int,
      remainingDeliveries: null == remainingDeliveries
          ? _self.remainingDeliveries
          : remainingDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      completedPickups: null == completedPickups
          ? _self.completedPickups
          : completedPickups // ignore: cast_nullable_to_non_nullable
              as int,
      completedDeliveries: null == completedDeliveries
          ? _self.completedDeliveries
          : completedDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      totalCollectedCash: null == totalCollectedCash
          ? _self.totalCollectedCash
          : totalCollectedCash // ignore: cast_nullable_to_non_nullable
              as int,
      nextActivityAt: null == nextActivityAt
          ? _self.nextActivityAt
          : nextActivityAt // ignore: cast_nullable_to_non_nullable
              as String,
      activityType: null == activityType
          ? _self.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DashboardDataModel].
extension DashboardDataModelPatterns on DashboardDataModel {
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
    TResult Function(_DashboardDataModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardDataModel() when $default != null:
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
    TResult Function(_DashboardDataModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataModel():
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
    TResult? Function(_DashboardDataModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataModel() when $default != null:
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
            int remainingPickups,
            int remainingDeliveries,
            int completedPickups,
            int completedDeliveries,
            int totalCollectedCash,
            String nextActivityAt,
            String activityType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardDataModel() when $default != null:
        return $default(
            _that.remainingPickups,
            _that.remainingDeliveries,
            _that.completedPickups,
            _that.completedDeliveries,
            _that.totalCollectedCash,
            _that.nextActivityAt,
            _that.activityType);
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
            int remainingPickups,
            int remainingDeliveries,
            int completedPickups,
            int completedDeliveries,
            int totalCollectedCash,
            String nextActivityAt,
            String activityType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataModel():
        return $default(
            _that.remainingPickups,
            _that.remainingDeliveries,
            _that.completedPickups,
            _that.completedDeliveries,
            _that.totalCollectedCash,
            _that.nextActivityAt,
            _that.activityType);
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
            int remainingPickups,
            int remainingDeliveries,
            int completedPickups,
            int completedDeliveries,
            int totalCollectedCash,
            String nextActivityAt,
            String activityType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataModel() when $default != null:
        return $default(
            _that.remainingPickups,
            _that.remainingDeliveries,
            _that.completedPickups,
            _that.completedDeliveries,
            _that.totalCollectedCash,
            _that.nextActivityAt,
            _that.activityType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DashboardDataModel implements DashboardDataModel {
  const _DashboardDataModel(
      {this.remainingPickups = 0,
      this.remainingDeliveries = 0,
      this.completedPickups = 0,
      this.completedDeliveries = 0,
      this.totalCollectedCash = 0,
      this.nextActivityAt = '',
      this.activityType = ''});
  factory _DashboardDataModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataModelFromJson(json);

  @override
  @JsonKey()
  final int remainingPickups;
  @override
  @JsonKey()
  final int remainingDeliveries;
  @override
  @JsonKey()
  final int completedPickups;
  @override
  @JsonKey()
  final int completedDeliveries;
  @override
  @JsonKey()
  final int totalCollectedCash;
  @override
  @JsonKey()
  final String nextActivityAt;
  @override
  @JsonKey()
  final String activityType;

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DashboardDataModelCopyWith<_DashboardDataModel> get copyWith =>
      __$DashboardDataModelCopyWithImpl<_DashboardDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DashboardDataModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardDataModel &&
            (identical(other.remainingPickups, remainingPickups) ||
                other.remainingPickups == remainingPickups) &&
            (identical(other.remainingDeliveries, remainingDeliveries) ||
                other.remainingDeliveries == remainingDeliveries) &&
            (identical(other.completedPickups, completedPickups) ||
                other.completedPickups == completedPickups) &&
            (identical(other.completedDeliveries, completedDeliveries) ||
                other.completedDeliveries == completedDeliveries) &&
            (identical(other.totalCollectedCash, totalCollectedCash) ||
                other.totalCollectedCash == totalCollectedCash) &&
            (identical(other.nextActivityAt, nextActivityAt) ||
                other.nextActivityAt == nextActivityAt) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      remainingPickups,
      remainingDeliveries,
      completedPickups,
      completedDeliveries,
      totalCollectedCash,
      nextActivityAt,
      activityType);

  @override
  String toString() {
    return 'DashboardDataModel(remainingPickups: $remainingPickups, remainingDeliveries: $remainingDeliveries, completedPickups: $completedPickups, completedDeliveries: $completedDeliveries, totalCollectedCash: $totalCollectedCash, nextActivityAt: $nextActivityAt, activityType: $activityType)';
  }
}

/// @nodoc
abstract mixin class _$DashboardDataModelCopyWith<$Res>
    implements $DashboardDataModelCopyWith<$Res> {
  factory _$DashboardDataModelCopyWith(
          _DashboardDataModel value, $Res Function(_DashboardDataModel) _then) =
      __$DashboardDataModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int remainingPickups,
      int remainingDeliveries,
      int completedPickups,
      int completedDeliveries,
      int totalCollectedCash,
      String nextActivityAt,
      String activityType});
}

/// @nodoc
class __$DashboardDataModelCopyWithImpl<$Res>
    implements _$DashboardDataModelCopyWith<$Res> {
  __$DashboardDataModelCopyWithImpl(this._self, this._then);

  final _DashboardDataModel _self;
  final $Res Function(_DashboardDataModel) _then;

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? remainingPickups = null,
    Object? remainingDeliveries = null,
    Object? completedPickups = null,
    Object? completedDeliveries = null,
    Object? totalCollectedCash = null,
    Object? nextActivityAt = null,
    Object? activityType = null,
  }) {
    return _then(_DashboardDataModel(
      remainingPickups: null == remainingPickups
          ? _self.remainingPickups
          : remainingPickups // ignore: cast_nullable_to_non_nullable
              as int,
      remainingDeliveries: null == remainingDeliveries
          ? _self.remainingDeliveries
          : remainingDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      completedPickups: null == completedPickups
          ? _self.completedPickups
          : completedPickups // ignore: cast_nullable_to_non_nullable
              as int,
      completedDeliveries: null == completedDeliveries
          ? _self.completedDeliveries
          : completedDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      totalCollectedCash: null == totalCollectedCash
          ? _self.totalCollectedCash
          : totalCollectedCash // ignore: cast_nullable_to_non_nullable
              as int,
      nextActivityAt: null == nextActivityAt
          ? _self.nextActivityAt
          : nextActivityAt // ignore: cast_nullable_to_non_nullable
              as String,
      activityType: null == activityType
          ? _self.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
