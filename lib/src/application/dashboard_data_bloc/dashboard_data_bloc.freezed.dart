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
    TResult Function(_GetNotificationsList value)? getNotificationsList,
    TResult Function(_PaginateNotificationsList value)?
        paginateNotificationsList,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData() when getDashboardData != null:
        return getDashboardData(_that);
      case _GetNotificationsList() when getNotificationsList != null:
        return getNotificationsList(_that);
      case _PaginateNotificationsList() when paginateNotificationsList != null:
        return paginateNotificationsList(_that);
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
    required TResult Function(_GetNotificationsList value) getNotificationsList,
    required TResult Function(_PaginateNotificationsList value)
        paginateNotificationsList,
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData():
        return getDashboardData(_that);
      case _GetNotificationsList():
        return getNotificationsList(_that);
      case _PaginateNotificationsList():
        return paginateNotificationsList(_that);
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
    TResult? Function(_GetNotificationsList value)? getNotificationsList,
    TResult? Function(_PaginateNotificationsList value)?
        paginateNotificationsList,
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData() when getDashboardData != null:
        return getDashboardData(_that);
      case _GetNotificationsList() when getNotificationsList != null:
        return getNotificationsList(_that);
      case _PaginateNotificationsList() when paginateNotificationsList != null:
        return paginateNotificationsList(_that);
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
    TResult Function(int limit, int skip)? getNotificationsList,
    TResult Function(int skip, int limit)? paginateNotificationsList,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData() when getDashboardData != null:
        return getDashboardData();
      case _GetNotificationsList() when getNotificationsList != null:
        return getNotificationsList(_that.limit, _that.skip);
      case _PaginateNotificationsList() when paginateNotificationsList != null:
        return paginateNotificationsList(_that.skip, _that.limit);
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
    required TResult Function(int limit, int skip) getNotificationsList,
    required TResult Function(int skip, int limit) paginateNotificationsList,
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData():
        return getDashboardData();
      case _GetNotificationsList():
        return getNotificationsList(_that.limit, _that.skip);
      case _PaginateNotificationsList():
        return paginateNotificationsList(_that.skip, _that.limit);
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
    TResult? Function(int limit, int skip)? getNotificationsList,
    TResult? Function(int skip, int limit)? paginateNotificationsList,
  }) {
    final _that = this;
    switch (_that) {
      case _GetDashboardData() when getDashboardData != null:
        return getDashboardData();
      case _GetNotificationsList() when getNotificationsList != null:
        return getNotificationsList(_that.limit, _that.skip);
      case _PaginateNotificationsList() when paginateNotificationsList != null:
        return paginateNotificationsList(_that.skip, _that.limit);
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

class _GetNotificationsList implements DashboardDataEvent {
  const _GetNotificationsList({required this.limit, required this.skip});

  final int limit;
  final int skip;

  /// Create a copy of DashboardDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetNotificationsListCopyWith<_GetNotificationsList> get copyWith =>
      __$GetNotificationsListCopyWithImpl<_GetNotificationsList>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetNotificationsList &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, skip);

  @override
  String toString() {
    return 'DashboardDataEvent.getNotificationsList(limit: $limit, skip: $skip)';
  }
}

/// @nodoc
abstract mixin class _$GetNotificationsListCopyWith<$Res>
    implements $DashboardDataEventCopyWith<$Res> {
  factory _$GetNotificationsListCopyWith(_GetNotificationsList value,
          $Res Function(_GetNotificationsList) _then) =
      __$GetNotificationsListCopyWithImpl;
  @useResult
  $Res call({int limit, int skip});
}

/// @nodoc
class __$GetNotificationsListCopyWithImpl<$Res>
    implements _$GetNotificationsListCopyWith<$Res> {
  __$GetNotificationsListCopyWithImpl(this._self, this._then);

  final _GetNotificationsList _self;
  final $Res Function(_GetNotificationsList) _then;

  /// Create a copy of DashboardDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
    Object? skip = null,
  }) {
    return _then(_GetNotificationsList(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _PaginateNotificationsList implements DashboardDataEvent {
  const _PaginateNotificationsList({required this.skip, required this.limit});

  final int skip;
  final int limit;

  /// Create a copy of DashboardDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginateNotificationsListCopyWith<_PaginateNotificationsList>
      get copyWith =>
          __$PaginateNotificationsListCopyWithImpl<_PaginateNotificationsList>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginateNotificationsList &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip, limit);

  @override
  String toString() {
    return 'DashboardDataEvent.paginateNotificationsList(skip: $skip, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$PaginateNotificationsListCopyWith<$Res>
    implements $DashboardDataEventCopyWith<$Res> {
  factory _$PaginateNotificationsListCopyWith(_PaginateNotificationsList value,
          $Res Function(_PaginateNotificationsList) _then) =
      __$PaginateNotificationsListCopyWithImpl;
  @useResult
  $Res call({int skip, int limit});
}

/// @nodoc
class __$PaginateNotificationsListCopyWithImpl<$Res>
    implements _$PaginateNotificationsListCopyWith<$Res> {
  __$PaginateNotificationsListCopyWithImpl(this._self, this._then);

  final _PaginateNotificationsList _self;
  final $Res Function(_PaginateNotificationsList) _then;

  /// Create a copy of DashboardDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_PaginateNotificationsList(
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$DashboardDataState {
  Status get getDashboardDataStatus;
  DashboardDataModel get dashboardDataModel;
  Status get getNotificationsListStatus;
  List<NotificationModel> get notificationsList;
  int get totalCount;
  bool get hasMore;
  bool get isLoadingMore;

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
                other.dashboardDataModel == dashboardDataModel) &&
            (identical(other.getNotificationsListStatus,
                    getNotificationsListStatus) ||
                other.getNotificationsListStatus ==
                    getNotificationsListStatus) &&
            const DeepCollectionEquality()
                .equals(other.notificationsList, notificationsList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getDashboardDataStatus,
      dashboardDataModel,
      getNotificationsListStatus,
      const DeepCollectionEquality().hash(notificationsList),
      totalCount,
      hasMore,
      isLoadingMore);

  @override
  String toString() {
    return 'DashboardDataState(getDashboardDataStatus: $getDashboardDataStatus, dashboardDataModel: $dashboardDataModel, getNotificationsListStatus: $getNotificationsListStatus, notificationsList: $notificationsList, totalCount: $totalCount, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
  }
}

/// @nodoc
abstract mixin class $DashboardDataStateCopyWith<$Res> {
  factory $DashboardDataStateCopyWith(
          DashboardDataState value, $Res Function(DashboardDataState) _then) =
      _$DashboardDataStateCopyWithImpl;
  @useResult
  $Res call(
      {Status getDashboardDataStatus,
      DashboardDataModel dashboardDataModel,
      Status getNotificationsListStatus,
      List<NotificationModel> notificationsList,
      int totalCount,
      bool hasMore,
      bool isLoadingMore});

  $StatusCopyWith<$Res> get getDashboardDataStatus;
  $DashboardDataModelCopyWith<$Res> get dashboardDataModel;
  $StatusCopyWith<$Res> get getNotificationsListStatus;
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
    Object? getNotificationsListStatus = null,
    Object? notificationsList = null,
    Object? totalCount = null,
    Object? hasMore = null,
    Object? isLoadingMore = null,
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
      getNotificationsListStatus: null == getNotificationsListStatus
          ? _self.getNotificationsListStatus
          : getNotificationsListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      notificationsList: null == notificationsList
          ? _self.notificationsList
          : notificationsList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
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

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getNotificationsListStatus {
    return $StatusCopyWith<$Res>(_self.getNotificationsListStatus, (value) {
      return _then(_self.copyWith(getNotificationsListStatus: value));
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
    TResult Function(
            Status getDashboardDataStatus,
            DashboardDataModel dashboardDataModel,
            Status getNotificationsListStatus,
            List<NotificationModel> notificationsList,
            int totalCount,
            bool hasMore,
            bool isLoadingMore)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState() when $default != null:
        return $default(
            _that.getDashboardDataStatus,
            _that.dashboardDataModel,
            _that.getNotificationsListStatus,
            _that.notificationsList,
            _that.totalCount,
            _that.hasMore,
            _that.isLoadingMore);
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
            Status getDashboardDataStatus,
            DashboardDataModel dashboardDataModel,
            Status getNotificationsListStatus,
            List<NotificationModel> notificationsList,
            int totalCount,
            bool hasMore,
            bool isLoadingMore)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState():
        return $default(
            _that.getDashboardDataStatus,
            _that.dashboardDataModel,
            _that.getNotificationsListStatus,
            _that.notificationsList,
            _that.totalCount,
            _that.hasMore,
            _that.isLoadingMore);
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
            Status getDashboardDataStatus,
            DashboardDataModel dashboardDataModel,
            Status getNotificationsListStatus,
            List<NotificationModel> notificationsList,
            int totalCount,
            bool hasMore,
            bool isLoadingMore)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardDataState() when $default != null:
        return $default(
            _that.getDashboardDataStatus,
            _that.dashboardDataModel,
            _that.getNotificationsListStatus,
            _that.notificationsList,
            _that.totalCount,
            _that.hasMore,
            _that.isLoadingMore);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DashboardDataState implements DashboardDataState {
  _DashboardDataState(
      {required this.getDashboardDataStatus,
      required this.dashboardDataModel,
      required this.getNotificationsListStatus,
      required final List<NotificationModel> notificationsList,
      required this.totalCount,
      required this.hasMore,
      required this.isLoadingMore})
      : _notificationsList = notificationsList;

  @override
  final Status getDashboardDataStatus;
  @override
  final DashboardDataModel dashboardDataModel;
  @override
  final Status getNotificationsListStatus;
  final List<NotificationModel> _notificationsList;
  @override
  List<NotificationModel> get notificationsList {
    if (_notificationsList is EqualUnmodifiableListView)
      return _notificationsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationsList);
  }

  @override
  final int totalCount;
  @override
  final bool hasMore;
  @override
  final bool isLoadingMore;

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
                other.dashboardDataModel == dashboardDataModel) &&
            (identical(other.getNotificationsListStatus,
                    getNotificationsListStatus) ||
                other.getNotificationsListStatus ==
                    getNotificationsListStatus) &&
            const DeepCollectionEquality()
                .equals(other._notificationsList, _notificationsList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getDashboardDataStatus,
      dashboardDataModel,
      getNotificationsListStatus,
      const DeepCollectionEquality().hash(_notificationsList),
      totalCount,
      hasMore,
      isLoadingMore);

  @override
  String toString() {
    return 'DashboardDataState(getDashboardDataStatus: $getDashboardDataStatus, dashboardDataModel: $dashboardDataModel, getNotificationsListStatus: $getNotificationsListStatus, notificationsList: $notificationsList, totalCount: $totalCount, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
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
      {Status getDashboardDataStatus,
      DashboardDataModel dashboardDataModel,
      Status getNotificationsListStatus,
      List<NotificationModel> notificationsList,
      int totalCount,
      bool hasMore,
      bool isLoadingMore});

  @override
  $StatusCopyWith<$Res> get getDashboardDataStatus;
  @override
  $DashboardDataModelCopyWith<$Res> get dashboardDataModel;
  @override
  $StatusCopyWith<$Res> get getNotificationsListStatus;
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
    Object? getNotificationsListStatus = null,
    Object? notificationsList = null,
    Object? totalCount = null,
    Object? hasMore = null,
    Object? isLoadingMore = null,
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
      getNotificationsListStatus: null == getNotificationsListStatus
          ? _self.getNotificationsListStatus
          : getNotificationsListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      notificationsList: null == notificationsList
          ? _self._notificationsList
          : notificationsList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
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

  /// Create a copy of DashboardDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getNotificationsListStatus {
    return $StatusCopyWith<$Res>(_self.getNotificationsListStatus, (value) {
      return _then(_self.copyWith(getNotificationsListStatus: value));
    });
  }
}

// dart format on
