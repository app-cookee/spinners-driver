// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationResponseModel {
  @JsonKey(name: 'data')
  List<NotificationModel> get notificationsList;
  @JsonKey(name: 'totalCount')
  int get totalCount;

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationResponseModelCopyWith<NotificationResponseModel> get copyWith =>
      _$NotificationResponseModelCopyWithImpl<NotificationResponseModel>(
          this as NotificationResponseModel, _$identity);

  /// Serializes this NotificationResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationResponseModel &&
            const DeepCollectionEquality()
                .equals(other.notificationsList, notificationsList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(notificationsList), totalCount);

  @override
  String toString() {
    return 'NotificationResponseModel(notificationsList: $notificationsList, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class $NotificationResponseModelCopyWith<$Res> {
  factory $NotificationResponseModelCopyWith(NotificationResponseModel value,
          $Res Function(NotificationResponseModel) _then) =
      _$NotificationResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<NotificationModel> notificationsList,
      @JsonKey(name: 'totalCount') int totalCount});
}

/// @nodoc
class _$NotificationResponseModelCopyWithImpl<$Res>
    implements $NotificationResponseModelCopyWith<$Res> {
  _$NotificationResponseModelCopyWithImpl(this._self, this._then);

  final NotificationResponseModel _self;
  final $Res Function(NotificationResponseModel) _then;

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationsList = null,
    Object? totalCount = null,
  }) {
    return _then(_self.copyWith(
      notificationsList: null == notificationsList
          ? _self.notificationsList
          : notificationsList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationResponseModel].
extension NotificationResponseModelPatterns on NotificationResponseModel {
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
    TResult Function(_NotificationResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationResponseModel() when $default != null:
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
    TResult Function(_NotificationResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationResponseModel():
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
    TResult? Function(_NotificationResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationResponseModel() when $default != null:
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
            @JsonKey(name: 'data') List<NotificationModel> notificationsList,
            @JsonKey(name: 'totalCount') int totalCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationResponseModel() when $default != null:
        return $default(_that.notificationsList, _that.totalCount);
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
            @JsonKey(name: 'data') List<NotificationModel> notificationsList,
            @JsonKey(name: 'totalCount') int totalCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationResponseModel():
        return $default(_that.notificationsList, _that.totalCount);
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
            @JsonKey(name: 'data') List<NotificationModel> notificationsList,
            @JsonKey(name: 'totalCount') int totalCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationResponseModel() when $default != null:
        return $default(_that.notificationsList, _that.totalCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationResponseModel implements NotificationResponseModel {
  const _NotificationResponseModel(
      {@JsonKey(name: 'data')
      final List<NotificationModel> notificationsList = const [],
      @JsonKey(name: 'totalCount') this.totalCount = 0})
      : _notificationsList = notificationsList;
  factory _NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseModelFromJson(json);

  final List<NotificationModel> _notificationsList;
  @override
  @JsonKey(name: 'data')
  List<NotificationModel> get notificationsList {
    if (_notificationsList is EqualUnmodifiableListView)
      return _notificationsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationsList);
  }

  @override
  @JsonKey(name: 'totalCount')
  final int totalCount;

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationResponseModelCopyWith<_NotificationResponseModel>
      get copyWith =>
          __$NotificationResponseModelCopyWithImpl<_NotificationResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationResponseModel &&
            const DeepCollectionEquality()
                .equals(other._notificationsList, _notificationsList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notificationsList), totalCount);

  @override
  String toString() {
    return 'NotificationResponseModel(notificationsList: $notificationsList, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class _$NotificationResponseModelCopyWith<$Res>
    implements $NotificationResponseModelCopyWith<$Res> {
  factory _$NotificationResponseModelCopyWith(_NotificationResponseModel value,
          $Res Function(_NotificationResponseModel) _then) =
      __$NotificationResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<NotificationModel> notificationsList,
      @JsonKey(name: 'totalCount') int totalCount});
}

/// @nodoc
class __$NotificationResponseModelCopyWithImpl<$Res>
    implements _$NotificationResponseModelCopyWith<$Res> {
  __$NotificationResponseModelCopyWithImpl(this._self, this._then);

  final _NotificationResponseModel _self;
  final $Res Function(_NotificationResponseModel) _then;

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notificationsList = null,
    Object? totalCount = null,
  }) {
    return _then(_NotificationResponseModel(
      notificationsList: null == notificationsList
          ? _self._notificationsList
          : notificationsList // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'read')
  bool get read;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'userId')
  String get userId;
  @JsonKey(name: 'orderId')
  String get orderId;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'damageReportId')
  String get damageReportId;
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @JsonKey(name: 'order')
  OrderResponse get order;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      _$NotificationModelCopyWithImpl<NotificationModel>(
          this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.damageReportId, damageReportId) ||
                other.damageReportId == damageReportId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, read, title,
      userId, orderId, type, damageReportId, createdAt, order);

  @override
  String toString() {
    return 'NotificationModel(id: $id, description: $description, read: $read, title: $title, userId: $userId, orderId: $orderId, type: $type, damageReportId: $damageReportId, createdAt: $createdAt, order: $order)';
  }
}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) _then) =
      _$NotificationModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'read') bool read,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'orderId') String orderId,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'damageReportId') String damageReportId,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'order') OrderResponse order});

  $OrderResponseCopyWith<$Res> get order;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? read = null,
    Object? title = null,
    Object? userId = null,
    Object? orderId = null,
    Object? type = null,
    Object? damageReportId = null,
    Object? createdAt = null,
    Object? order = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _self.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      damageReportId: null == damageReportId
          ? _self.damageReportId
          : damageReportId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderResponse,
    ));
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderResponseCopyWith<$Res> get order {
    return $OrderResponseCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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
    TResult Function(_NotificationModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationModel() when $default != null:
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
    TResult Function(_NotificationModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationModel():
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
    TResult? Function(_NotificationModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationModel() when $default != null:
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'read') bool read,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'damageReportId') String damageReportId,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'order') OrderResponse order)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationModel() when $default != null:
        return $default(
            _that.id,
            _that.description,
            _that.read,
            _that.title,
            _that.userId,
            _that.orderId,
            _that.type,
            _that.damageReportId,
            _that.createdAt,
            _that.order);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'read') bool read,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'damageReportId') String damageReportId,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'order') OrderResponse order)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationModel():
        return $default(
            _that.id,
            _that.description,
            _that.read,
            _that.title,
            _that.userId,
            _that.orderId,
            _that.type,
            _that.damageReportId,
            _that.createdAt,
            _that.order);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'read') bool read,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'damageReportId') String damageReportId,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'order') OrderResponse order)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationModel() when $default != null:
        return $default(
            _that.id,
            _that.description,
            _that.read,
            _that.title,
            _that.userId,
            _that.orderId,
            _that.type,
            _that.damageReportId,
            _that.createdAt,
            _that.order);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationModel implements NotificationModel {
  const _NotificationModel(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'description') this.description = "",
      @JsonKey(name: 'read') this.read = false,
      @JsonKey(name: 'title') this.title = "",
      @JsonKey(name: 'userId') this.userId = "",
      @JsonKey(name: 'orderId') this.orderId = "",
      @JsonKey(name: 'type') this.type = "",
      @JsonKey(name: 'damageReportId') this.damageReportId = "",
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'order') this.order = const OrderResponse()});
  factory _NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'read')
  final bool read;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'orderId')
  final String orderId;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'damageReportId')
  final String damageReportId;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'order')
  final OrderResponse order;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationModelCopyWith<_NotificationModel> get copyWith =>
      __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.damageReportId, damageReportId) ||
                other.damageReportId == damageReportId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, read, title,
      userId, orderId, type, damageReportId, createdAt, order);

  @override
  String toString() {
    return 'NotificationModel(id: $id, description: $description, read: $read, title: $title, userId: $userId, orderId: $orderId, type: $type, damageReportId: $damageReportId, createdAt: $createdAt, order: $order)';
  }
}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(
          _NotificationModel value, $Res Function(_NotificationModel) _then) =
      __$NotificationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'read') bool read,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'orderId') String orderId,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'damageReportId') String damageReportId,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'order') OrderResponse order});

  @override
  $OrderResponseCopyWith<$Res> get order;
}

/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? read = null,
    Object? title = null,
    Object? userId = null,
    Object? orderId = null,
    Object? type = null,
    Object? damageReportId = null,
    Object? createdAt = null,
    Object? order = null,
  }) {
    return _then(_NotificationModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _self.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      damageReportId: null == damageReportId
          ? _self.damageReportId
          : damageReportId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderResponse,
    ));
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderResponseCopyWith<$Res> get order {
    return $OrderResponseCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

// dart format on
