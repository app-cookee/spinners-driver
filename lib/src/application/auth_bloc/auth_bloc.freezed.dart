// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Refreshtoken value)? refreshtoken,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ProfileAuth value)? profileAuth,
    TResult Function(_UpdateProfileEvent value)? updateProfileEvent,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that);
      case _VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that);
      case _Refreshtoken() when refreshtoken != null:
        return refreshtoken(_that);
      case _LogOut() when logOut != null:
        return logOut(_that);
      case _ProfileAuth() when profileAuth != null:
        return profileAuth(_that);
      case _UpdateProfileEvent() when updateProfileEvent != null:
        return updateProfileEvent(_that);
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
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Refreshtoken value) refreshtoken,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ProfileAuth value) profileAuth,
    required TResult Function(_UpdateProfileEvent value) updateProfileEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp():
        return sendOtp(_that);
      case _VerifyOtp():
        return verifyOtp(_that);
      case _Refreshtoken():
        return refreshtoken(_that);
      case _LogOut():
        return logOut(_that);
      case _ProfileAuth():
        return profileAuth(_that);
      case _UpdateProfileEvent():
        return updateProfileEvent(_that);
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
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Refreshtoken value)? refreshtoken,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ProfileAuth value)? profileAuth,
    TResult? Function(_UpdateProfileEvent value)? updateProfileEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that);
      case _VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that);
      case _Refreshtoken() when refreshtoken != null:
        return refreshtoken(_that);
      case _LogOut() when logOut != null:
        return logOut(_that);
      case _ProfileAuth() when profileAuth != null:
        return profileAuth(_that);
      case _UpdateProfileEvent() when updateProfileEvent != null:
        return updateProfileEvent(_that);
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
    TResult Function(String phoneNumber, bool isResent)? sendOtp,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function()? refreshtoken,
    TResult Function()? logOut,
    TResult Function()? profileAuth,
    TResult Function(String firstName, String lastName, String photoName,
            String photoPath)?
        updateProfileEvent,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that.phoneNumber, _that.isResent);
      case _VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that.phoneNumber, _that.otp);
      case _Refreshtoken() when refreshtoken != null:
        return refreshtoken();
      case _LogOut() when logOut != null:
        return logOut();
      case _ProfileAuth() when profileAuth != null:
        return profileAuth();
      case _UpdateProfileEvent() when updateProfileEvent != null:
        return updateProfileEvent(
            _that.firstName, _that.lastName, _that.photoName, _that.photoPath);
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
    required TResult Function(String phoneNumber, bool isResent) sendOtp,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function() refreshtoken,
    required TResult Function() logOut,
    required TResult Function() profileAuth,
    required TResult Function(String firstName, String lastName,
            String photoName, String photoPath)
        updateProfileEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp():
        return sendOtp(_that.phoneNumber, _that.isResent);
      case _VerifyOtp():
        return verifyOtp(_that.phoneNumber, _that.otp);
      case _Refreshtoken():
        return refreshtoken();
      case _LogOut():
        return logOut();
      case _ProfileAuth():
        return profileAuth();
      case _UpdateProfileEvent():
        return updateProfileEvent(
            _that.firstName, _that.lastName, _that.photoName, _that.photoPath);
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
    TResult? Function(String phoneNumber, bool isResent)? sendOtp,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function()? refreshtoken,
    TResult? Function()? logOut,
    TResult? Function()? profileAuth,
    TResult? Function(String firstName, String lastName, String photoName,
            String photoPath)?
        updateProfileEvent,
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that.phoneNumber, _that.isResent);
      case _VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that.phoneNumber, _that.otp);
      case _Refreshtoken() when refreshtoken != null:
        return refreshtoken();
      case _LogOut() when logOut != null:
        return logOut();
      case _ProfileAuth() when profileAuth != null:
        return profileAuth();
      case _UpdateProfileEvent() when updateProfileEvent != null:
        return updateProfileEvent(
            _that.firstName, _that.lastName, _that.photoName, _that.photoPath);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SendOtp implements AuthEvent {
  const _SendOtp({required this.phoneNumber, required this.isResent});

  final String phoneNumber;
  final bool isResent;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendOtpCopyWith<_SendOtp> get copyWith =>
      __$SendOtpCopyWithImpl<_SendOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendOtp &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isResent, isResent) ||
                other.isResent == isResent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, isResent);

  @override
  String toString() {
    return 'AuthEvent.sendOtp(phoneNumber: $phoneNumber, isResent: $isResent)';
  }
}

/// @nodoc
abstract mixin class _$SendOtpCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$SendOtpCopyWith(_SendOtp value, $Res Function(_SendOtp) _then) =
      __$SendOtpCopyWithImpl;
  @useResult
  $Res call({String phoneNumber, bool isResent});
}

/// @nodoc
class __$SendOtpCopyWithImpl<$Res> implements _$SendOtpCopyWith<$Res> {
  __$SendOtpCopyWithImpl(this._self, this._then);

  final _SendOtp _self;
  final $Res Function(_SendOtp) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? isResent = null,
  }) {
    return _then(_SendOtp(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isResent: null == isResent
          ? _self.isResent
          : isResent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _VerifyOtp implements AuthEvent {
  const _VerifyOtp({required this.phoneNumber, required this.otp});

  final String phoneNumber;
  final String otp;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyOtpCopyWith<_VerifyOtp> get copyWith =>
      __$VerifyOtpCopyWithImpl<_VerifyOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyOtp &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(phoneNumber: $phoneNumber, otp: $otp)';
  }
}

/// @nodoc
abstract mixin class _$VerifyOtpCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$VerifyOtpCopyWith(
          _VerifyOtp value, $Res Function(_VerifyOtp) _then) =
      __$VerifyOtpCopyWithImpl;
  @useResult
  $Res call({String phoneNumber, String otp});
}

/// @nodoc
class __$VerifyOtpCopyWithImpl<$Res> implements _$VerifyOtpCopyWith<$Res> {
  __$VerifyOtpCopyWithImpl(this._self, this._then);

  final _VerifyOtp _self;
  final $Res Function(_VerifyOtp) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_VerifyOtp(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Refreshtoken implements AuthEvent {
  const _Refreshtoken();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Refreshtoken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.refreshtoken()';
  }
}

/// @nodoc

class _LogOut implements AuthEvent {
  const _LogOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }
}

/// @nodoc

class _ProfileAuth implements AuthEvent {
  const _ProfileAuth();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ProfileAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.profileAuth()';
  }
}

/// @nodoc

class _UpdateProfileEvent implements AuthEvent {
  const _UpdateProfileEvent(
      {required this.firstName,
      required this.lastName,
      required this.photoName,
      required this.photoPath});

  final String firstName;
  final String lastName;
  final String photoName;
  final String photoPath;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateProfileEventCopyWith<_UpdateProfileEvent> get copyWith =>
      __$UpdateProfileEventCopyWithImpl<_UpdateProfileEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfileEvent &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photoName, photoName) ||
                other.photoName == photoName) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, photoName, photoPath);

  @override
  String toString() {
    return 'AuthEvent.updateProfileEvent(firstName: $firstName, lastName: $lastName, photoName: $photoName, photoPath: $photoPath)';
  }
}

/// @nodoc
abstract mixin class _$UpdateProfileEventCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$UpdateProfileEventCopyWith(
          _UpdateProfileEvent value, $Res Function(_UpdateProfileEvent) _then) =
      __$UpdateProfileEventCopyWithImpl;
  @useResult
  $Res call(
      {String firstName, String lastName, String photoName, String photoPath});
}

/// @nodoc
class __$UpdateProfileEventCopyWithImpl<$Res>
    implements _$UpdateProfileEventCopyWith<$Res> {
  __$UpdateProfileEventCopyWithImpl(this._self, this._then);

  final _UpdateProfileEvent _self;
  final $Res Function(_UpdateProfileEvent) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? photoName = null,
    Object? photoPath = null,
  }) {
    return _then(_UpdateProfileEvent(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      photoName: null == photoName
          ? _self.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: null == photoPath
          ? _self.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AuthState {
  Status get sendOtpStatus;
  int get secondsToExpiry;
  Status get otpVerifyStatus;
  AppUser? get appUser;
  Status get refreshtokenStatus;
  Status get logOutStatus;
  Status get profileAuthStatus;
  Status get updateProfileStatus;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<AuthState> get copyWith =>
      _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState &&
            (identical(other.sendOtpStatus, sendOtpStatus) ||
                other.sendOtpStatus == sendOtpStatus) &&
            (identical(other.secondsToExpiry, secondsToExpiry) ||
                other.secondsToExpiry == secondsToExpiry) &&
            (identical(other.otpVerifyStatus, otpVerifyStatus) ||
                other.otpVerifyStatus == otpVerifyStatus) &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.refreshtokenStatus, refreshtokenStatus) ||
                other.refreshtokenStatus == refreshtokenStatus) &&
            (identical(other.logOutStatus, logOutStatus) ||
                other.logOutStatus == logOutStatus) &&
            (identical(other.profileAuthStatus, profileAuthStatus) ||
                other.profileAuthStatus == profileAuthStatus) &&
            (identical(other.updateProfileStatus, updateProfileStatus) ||
                other.updateProfileStatus == updateProfileStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sendOtpStatus,
      secondsToExpiry,
      otpVerifyStatus,
      appUser,
      refreshtokenStatus,
      logOutStatus,
      profileAuthStatus,
      updateProfileStatus);

  @override
  String toString() {
    return 'AuthState(sendOtpStatus: $sendOtpStatus, secondsToExpiry: $secondsToExpiry, otpVerifyStatus: $otpVerifyStatus, appUser: $appUser, refreshtokenStatus: $refreshtokenStatus, logOutStatus: $logOutStatus, profileAuthStatus: $profileAuthStatus, updateProfileStatus: $updateProfileStatus)';
  }
}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) =
      _$AuthStateCopyWithImpl;
  @useResult
  $Res call(
      {Status sendOtpStatus,
      int secondsToExpiry,
      Status otpVerifyStatus,
      AppUser? appUser,
      Status refreshtokenStatus,
      Status logOutStatus,
      Status profileAuthStatus,
      Status updateProfileStatus});

  $StatusCopyWith<$Res> get sendOtpStatus;
  $StatusCopyWith<$Res> get otpVerifyStatus;
  $AppUserCopyWith<$Res>? get appUser;
  $StatusCopyWith<$Res> get refreshtokenStatus;
  $StatusCopyWith<$Res> get logOutStatus;
  $StatusCopyWith<$Res> get profileAuthStatus;
  $StatusCopyWith<$Res> get updateProfileStatus;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendOtpStatus = null,
    Object? secondsToExpiry = null,
    Object? otpVerifyStatus = null,
    Object? appUser = freezed,
    Object? refreshtokenStatus = null,
    Object? logOutStatus = null,
    Object? profileAuthStatus = null,
    Object? updateProfileStatus = null,
  }) {
    return _then(_self.copyWith(
      sendOtpStatus: null == sendOtpStatus
          ? _self.sendOtpStatus
          : sendOtpStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      secondsToExpiry: null == secondsToExpiry
          ? _self.secondsToExpiry
          : secondsToExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      otpVerifyStatus: null == otpVerifyStatus
          ? _self.otpVerifyStatus
          : otpVerifyStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      appUser: freezed == appUser
          ? _self.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      refreshtokenStatus: null == refreshtokenStatus
          ? _self.refreshtokenStatus
          : refreshtokenStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      logOutStatus: null == logOutStatus
          ? _self.logOutStatus
          : logOutStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      profileAuthStatus: null == profileAuthStatus
          ? _self.profileAuthStatus
          : profileAuthStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      updateProfileStatus: null == updateProfileStatus
          ? _self.updateProfileStatus
          : updateProfileStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get sendOtpStatus {
    return $StatusCopyWith<$Res>(_self.sendOtpStatus, (value) {
      return _then(_self.copyWith(sendOtpStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get otpVerifyStatus {
    return $StatusCopyWith<$Res>(_self.otpVerifyStatus, (value) {
      return _then(_self.copyWith(otpVerifyStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get appUser {
    if (_self.appUser == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_self.appUser!, (value) {
      return _then(_self.copyWith(appUser: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get refreshtokenStatus {
    return $StatusCopyWith<$Res>(_self.refreshtokenStatus, (value) {
      return _then(_self.copyWith(refreshtokenStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get logOutStatus {
    return $StatusCopyWith<$Res>(_self.logOutStatus, (value) {
      return _then(_self.copyWith(logOutStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get profileAuthStatus {
    return $StatusCopyWith<$Res>(_self.profileAuthStatus, (value) {
      return _then(_self.copyWith(profileAuthStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get updateProfileStatus {
    return $StatusCopyWith<$Res>(_self.updateProfileStatus, (value) {
      return _then(_self.copyWith(updateProfileStatus: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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
    TResult Function(_AuthState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
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
    TResult Function(_AuthState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState():
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
    TResult? Function(_AuthState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
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
            Status sendOtpStatus,
            int secondsToExpiry,
            Status otpVerifyStatus,
            AppUser? appUser,
            Status refreshtokenStatus,
            Status logOutStatus,
            Status profileAuthStatus,
            Status updateProfileStatus)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(
            _that.sendOtpStatus,
            _that.secondsToExpiry,
            _that.otpVerifyStatus,
            _that.appUser,
            _that.refreshtokenStatus,
            _that.logOutStatus,
            _that.profileAuthStatus,
            _that.updateProfileStatus);
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
            Status sendOtpStatus,
            int secondsToExpiry,
            Status otpVerifyStatus,
            AppUser? appUser,
            Status refreshtokenStatus,
            Status logOutStatus,
            Status profileAuthStatus,
            Status updateProfileStatus)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState():
        return $default(
            _that.sendOtpStatus,
            _that.secondsToExpiry,
            _that.otpVerifyStatus,
            _that.appUser,
            _that.refreshtokenStatus,
            _that.logOutStatus,
            _that.profileAuthStatus,
            _that.updateProfileStatus);
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
            Status sendOtpStatus,
            int secondsToExpiry,
            Status otpVerifyStatus,
            AppUser? appUser,
            Status refreshtokenStatus,
            Status logOutStatus,
            Status profileAuthStatus,
            Status updateProfileStatus)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(
            _that.sendOtpStatus,
            _that.secondsToExpiry,
            _that.otpVerifyStatus,
            _that.appUser,
            _that.refreshtokenStatus,
            _that.logOutStatus,
            _that.profileAuthStatus,
            _that.updateProfileStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthState implements AuthState {
  _AuthState(
      {required this.sendOtpStatus,
      required this.secondsToExpiry,
      required this.otpVerifyStatus,
      this.appUser,
      required this.refreshtokenStatus,
      required this.logOutStatus,
      required this.profileAuthStatus,
      required this.updateProfileStatus});

  @override
  final Status sendOtpStatus;
  @override
  final int secondsToExpiry;
  @override
  final Status otpVerifyStatus;
  @override
  final AppUser? appUser;
  @override
  final Status refreshtokenStatus;
  @override
  final Status logOutStatus;
  @override
  final Status profileAuthStatus;
  @override
  final Status updateProfileStatus;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            (identical(other.sendOtpStatus, sendOtpStatus) ||
                other.sendOtpStatus == sendOtpStatus) &&
            (identical(other.secondsToExpiry, secondsToExpiry) ||
                other.secondsToExpiry == secondsToExpiry) &&
            (identical(other.otpVerifyStatus, otpVerifyStatus) ||
                other.otpVerifyStatus == otpVerifyStatus) &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.refreshtokenStatus, refreshtokenStatus) ||
                other.refreshtokenStatus == refreshtokenStatus) &&
            (identical(other.logOutStatus, logOutStatus) ||
                other.logOutStatus == logOutStatus) &&
            (identical(other.profileAuthStatus, profileAuthStatus) ||
                other.profileAuthStatus == profileAuthStatus) &&
            (identical(other.updateProfileStatus, updateProfileStatus) ||
                other.updateProfileStatus == updateProfileStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sendOtpStatus,
      secondsToExpiry,
      otpVerifyStatus,
      appUser,
      refreshtokenStatus,
      logOutStatus,
      profileAuthStatus,
      updateProfileStatus);

  @override
  String toString() {
    return 'AuthState(sendOtpStatus: $sendOtpStatus, secondsToExpiry: $secondsToExpiry, otpVerifyStatus: $otpVerifyStatus, appUser: $appUser, refreshtokenStatus: $refreshtokenStatus, logOutStatus: $logOutStatus, profileAuthStatus: $profileAuthStatus, updateProfileStatus: $updateProfileStatus)';
  }
}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) _then) =
      __$AuthStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Status sendOtpStatus,
      int secondsToExpiry,
      Status otpVerifyStatus,
      AppUser? appUser,
      Status refreshtokenStatus,
      Status logOutStatus,
      Status profileAuthStatus,
      Status updateProfileStatus});

  @override
  $StatusCopyWith<$Res> get sendOtpStatus;
  @override
  $StatusCopyWith<$Res> get otpVerifyStatus;
  @override
  $AppUserCopyWith<$Res>? get appUser;
  @override
  $StatusCopyWith<$Res> get refreshtokenStatus;
  @override
  $StatusCopyWith<$Res> get logOutStatus;
  @override
  $StatusCopyWith<$Res> get profileAuthStatus;
  @override
  $StatusCopyWith<$Res> get updateProfileStatus;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sendOtpStatus = null,
    Object? secondsToExpiry = null,
    Object? otpVerifyStatus = null,
    Object? appUser = freezed,
    Object? refreshtokenStatus = null,
    Object? logOutStatus = null,
    Object? profileAuthStatus = null,
    Object? updateProfileStatus = null,
  }) {
    return _then(_AuthState(
      sendOtpStatus: null == sendOtpStatus
          ? _self.sendOtpStatus
          : sendOtpStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      secondsToExpiry: null == secondsToExpiry
          ? _self.secondsToExpiry
          : secondsToExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      otpVerifyStatus: null == otpVerifyStatus
          ? _self.otpVerifyStatus
          : otpVerifyStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      appUser: freezed == appUser
          ? _self.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      refreshtokenStatus: null == refreshtokenStatus
          ? _self.refreshtokenStatus
          : refreshtokenStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      logOutStatus: null == logOutStatus
          ? _self.logOutStatus
          : logOutStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      profileAuthStatus: null == profileAuthStatus
          ? _self.profileAuthStatus
          : profileAuthStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      updateProfileStatus: null == updateProfileStatus
          ? _self.updateProfileStatus
          : updateProfileStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get sendOtpStatus {
    return $StatusCopyWith<$Res>(_self.sendOtpStatus, (value) {
      return _then(_self.copyWith(sendOtpStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get otpVerifyStatus {
    return $StatusCopyWith<$Res>(_self.otpVerifyStatus, (value) {
      return _then(_self.copyWith(otpVerifyStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get appUser {
    if (_self.appUser == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_self.appUser!, (value) {
      return _then(_self.copyWith(appUser: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get refreshtokenStatus {
    return $StatusCopyWith<$Res>(_self.refreshtokenStatus, (value) {
      return _then(_self.copyWith(refreshtokenStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get logOutStatus {
    return $StatusCopyWith<$Res>(_self.logOutStatus, (value) {
      return _then(_self.copyWith(logOutStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get profileAuthStatus {
    return $StatusCopyWith<$Res>(_self.profileAuthStatus, (value) {
      return _then(_self.copyWith(profileAuthStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get updateProfileStatus {
    return $StatusCopyWith<$Res>(_self.updateProfileStatus, (value) {
      return _then(_self.copyWith(updateProfileStatus: value));
    });
  }
}

// dart format on
