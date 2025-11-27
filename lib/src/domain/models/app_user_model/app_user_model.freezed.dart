// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUser {
  @JsonKey(name: 'id')
  String get userId;
  @JsonKey(name: 'driverId')
  String get driverId;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'firstName')
  String get firstName;
  @JsonKey(name: 'lastName')
  String get lastName;
  @JsonKey(name: 'phoneNumber')
  String get phoneNumber;
  @JsonKey(name: 'timestamp')
  String get timestamp;
  @JsonKey(name: 'vehicleNumber')
  String get vehicleNumber; // New fields from schema
  @JsonKey(name: 'referralCode')
  String get referralCode;
  @JsonKey(name: 'photo')
  String? get photo;
  @JsonKey(name: 'storeName')
  String? get storeName;
  @JsonKey(name: 'storeAddress')
  String? get storeAddress;
  @JsonKey(name: 'active')
  bool get active;
  @JsonKey(name: 'unreadMsgs')
  int get unreadMsgs;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<AppUser> get copyWith =>
      _$AppUserCopyWithImpl<AppUser>(this as AppUser, _$identity);

  /// Serializes this AppUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.storeAddress, storeAddress) ||
                other.storeAddress == storeAddress) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.unreadMsgs, unreadMsgs) ||
                other.unreadMsgs == unreadMsgs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      driverId,
      email,
      firstName,
      lastName,
      phoneNumber,
      timestamp,
      vehicleNumber,
      referralCode,
      photo,
      storeName,
      storeAddress,
      active,
      unreadMsgs);

  @override
  String toString() {
    return 'AppUser(userId: $userId, driverId: $driverId, email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, timestamp: $timestamp, vehicleNumber: $vehicleNumber, referralCode: $referralCode, photo: $photo, storeName: $storeName, storeAddress: $storeAddress, active: $active, unreadMsgs: $unreadMsgs)';
  }
}

/// @nodoc
abstract mixin class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) _then) =
      _$AppUserCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String userId,
      @JsonKey(name: 'driverId') String driverId,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'firstName') String firstName,
      @JsonKey(name: 'lastName') String lastName,
      @JsonKey(name: 'phoneNumber') String phoneNumber,
      @JsonKey(name: 'timestamp') String timestamp,
      @JsonKey(name: 'vehicleNumber') String vehicleNumber,
      @JsonKey(name: 'referralCode') String referralCode,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'storeName') String? storeName,
      @JsonKey(name: 'storeAddress') String? storeAddress,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'unreadMsgs') int unreadMsgs});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._self, this._then);

  final AppUser _self;
  final $Res Function(AppUser) _then;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? driverId = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? timestamp = null,
    Object? vehicleNumber = null,
    Object? referralCode = null,
    Object? photo = freezed,
    Object? storeName = freezed,
    Object? storeAddress = freezed,
    Object? active = null,
    Object? unreadMsgs = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: null == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleNumber: null == vehicleNumber
          ? _self.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: null == referralCode
          ? _self.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: freezed == storeName
          ? _self.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      storeAddress: freezed == storeAddress
          ? _self.storeAddress
          : storeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadMsgs: null == unreadMsgs
          ? _self.unreadMsgs
          : unreadMsgs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppUser].
extension AppUserPatterns on AppUser {
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
    TResult Function(_AppUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
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
    TResult Function(_AppUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser():
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
    TResult? Function(_AppUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
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
            @JsonKey(name: 'id') String userId,
            @JsonKey(name: 'driverId') String driverId,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'firstName') String firstName,
            @JsonKey(name: 'lastName') String lastName,
            @JsonKey(name: 'phoneNumber') String phoneNumber,
            @JsonKey(name: 'timestamp') String timestamp,
            @JsonKey(name: 'vehicleNumber') String vehicleNumber,
            @JsonKey(name: 'referralCode') String referralCode,
            @JsonKey(name: 'photo') String? photo,
            @JsonKey(name: 'storeName') String? storeName,
            @JsonKey(name: 'storeAddress') String? storeAddress,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'unreadMsgs') int unreadMsgs)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
        return $default(
            _that.userId,
            _that.driverId,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.phoneNumber,
            _that.timestamp,
            _that.vehicleNumber,
            _that.referralCode,
            _that.photo,
            _that.storeName,
            _that.storeAddress,
            _that.active,
            _that.unreadMsgs);
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
            @JsonKey(name: 'id') String userId,
            @JsonKey(name: 'driverId') String driverId,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'firstName') String firstName,
            @JsonKey(name: 'lastName') String lastName,
            @JsonKey(name: 'phoneNumber') String phoneNumber,
            @JsonKey(name: 'timestamp') String timestamp,
            @JsonKey(name: 'vehicleNumber') String vehicleNumber,
            @JsonKey(name: 'referralCode') String referralCode,
            @JsonKey(name: 'photo') String? photo,
            @JsonKey(name: 'storeName') String? storeName,
            @JsonKey(name: 'storeAddress') String? storeAddress,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'unreadMsgs') int unreadMsgs)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser():
        return $default(
            _that.userId,
            _that.driverId,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.phoneNumber,
            _that.timestamp,
            _that.vehicleNumber,
            _that.referralCode,
            _that.photo,
            _that.storeName,
            _that.storeAddress,
            _that.active,
            _that.unreadMsgs);
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
            @JsonKey(name: 'id') String userId,
            @JsonKey(name: 'driverId') String driverId,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'firstName') String firstName,
            @JsonKey(name: 'lastName') String lastName,
            @JsonKey(name: 'phoneNumber') String phoneNumber,
            @JsonKey(name: 'timestamp') String timestamp,
            @JsonKey(name: 'vehicleNumber') String vehicleNumber,
            @JsonKey(name: 'referralCode') String referralCode,
            @JsonKey(name: 'photo') String? photo,
            @JsonKey(name: 'storeName') String? storeName,
            @JsonKey(name: 'storeAddress') String? storeAddress,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'unreadMsgs') int unreadMsgs)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
        return $default(
            _that.userId,
            _that.driverId,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.phoneNumber,
            _that.timestamp,
            _that.vehicleNumber,
            _that.referralCode,
            _that.photo,
            _that.storeName,
            _that.storeAddress,
            _that.active,
            _that.unreadMsgs);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppUser implements AppUser {
  _AppUser(
      {@JsonKey(name: 'id') this.userId = '',
      @JsonKey(name: 'driverId') this.driverId = '',
      @JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'firstName') this.firstName = '',
      @JsonKey(name: 'lastName') this.lastName = '',
      @JsonKey(name: 'phoneNumber') this.phoneNumber = '',
      @JsonKey(name: 'timestamp') this.timestamp = '',
      @JsonKey(name: 'vehicleNumber') this.vehicleNumber = '',
      @JsonKey(name: 'referralCode') this.referralCode = '',
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'storeName') this.storeName,
      @JsonKey(name: 'storeAddress') this.storeAddress,
      @JsonKey(name: 'active') this.active = false,
      @JsonKey(name: 'unreadMsgs') this.unreadMsgs = 0});
  factory _AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String userId;
  @override
  @JsonKey(name: 'driverId')
  final String driverId;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'firstName')
  final String firstName;
  @override
  @JsonKey(name: 'lastName')
  final String lastName;
  @override
  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;
  @override
  @JsonKey(name: 'timestamp')
  final String timestamp;
  @override
  @JsonKey(name: 'vehicleNumber')
  final String vehicleNumber;
// New fields from schema
  @override
  @JsonKey(name: 'referralCode')
  final String referralCode;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'storeName')
  final String? storeName;
  @override
  @JsonKey(name: 'storeAddress')
  final String? storeAddress;
  @override
  @JsonKey(name: 'active')
  final bool active;
  @override
  @JsonKey(name: 'unreadMsgs')
  final int unreadMsgs;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.storeAddress, storeAddress) ||
                other.storeAddress == storeAddress) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.unreadMsgs, unreadMsgs) ||
                other.unreadMsgs == unreadMsgs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      driverId,
      email,
      firstName,
      lastName,
      phoneNumber,
      timestamp,
      vehicleNumber,
      referralCode,
      photo,
      storeName,
      storeAddress,
      active,
      unreadMsgs);

  @override
  String toString() {
    return 'AppUser(userId: $userId, driverId: $driverId, email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, timestamp: $timestamp, vehicleNumber: $vehicleNumber, referralCode: $referralCode, photo: $photo, storeName: $storeName, storeAddress: $storeAddress, active: $active, unreadMsgs: $unreadMsgs)';
  }
}

/// @nodoc
abstract mixin class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) _then) =
      __$AppUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String userId,
      @JsonKey(name: 'driverId') String driverId,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'firstName') String firstName,
      @JsonKey(name: 'lastName') String lastName,
      @JsonKey(name: 'phoneNumber') String phoneNumber,
      @JsonKey(name: 'timestamp') String timestamp,
      @JsonKey(name: 'vehicleNumber') String vehicleNumber,
      @JsonKey(name: 'referralCode') String referralCode,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'storeName') String? storeName,
      @JsonKey(name: 'storeAddress') String? storeAddress,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'unreadMsgs') int unreadMsgs});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(this._self, this._then);

  final _AppUser _self;
  final $Res Function(_AppUser) _then;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? driverId = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? timestamp = null,
    Object? vehicleNumber = null,
    Object? referralCode = null,
    Object? photo = freezed,
    Object? storeName = freezed,
    Object? storeAddress = freezed,
    Object? active = null,
    Object? unreadMsgs = null,
  }) {
    return _then(_AppUser(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: null == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleNumber: null == vehicleNumber
          ? _self.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: null == referralCode
          ? _self.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: freezed == storeName
          ? _self.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      storeAddress: freezed == storeAddress
          ? _self.storeAddress
          : storeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadMsgs: null == unreadMsgs
          ? _self.unreadMsgs
          : unreadMsgs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
