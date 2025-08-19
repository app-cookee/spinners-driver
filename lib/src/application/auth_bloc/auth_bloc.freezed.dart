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
  String get phoneNumber;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      _$AuthEventCopyWithImpl<AuthEvent>(this as AuthEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEvent &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'AuthEvent(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) _then) =
      _$AuthEventCopyWithImpl;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._self, this._then);

  final AuthEvent _self;
  final $Res Function(AuthEvent) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_self.copyWith(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
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
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that);
      case _VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that);
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
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp():
        return sendOtp(_that);
      case _VerifyOtp():
        return verifyOtp(_that);
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
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that);
      case _VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that);
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
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that.phoneNumber, _that.isResent);
      case _VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that.phoneNumber, _that.otp);
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
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp():
        return sendOtp(_that.phoneNumber, _that.isResent);
      case _VerifyOtp():
        return verifyOtp(_that.phoneNumber, _that.otp);
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
  }) {
    final _that = this;
    switch (_that) {
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that.phoneNumber, _that.isResent);
      case _VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that.phoneNumber, _that.otp);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SendOtp implements AuthEvent {
  const _SendOtp({required this.phoneNumber, required this.isResent});

  @override
  final String phoneNumber;
  final bool isResent;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
  @override
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
  @override
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

  @override
  final String phoneNumber;
  final String otp;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
  @override
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
  @override
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
mixin _$AuthState {
  Status get sendOtpStatus;
  int get secondsToExpiry;
  Status get otpVerifyStatus;
  AppUser? get appUser;

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
            const DeepCollectionEquality().equals(other.appUser, appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendOtpStatus, secondsToExpiry,
      otpVerifyStatus, const DeepCollectionEquality().hash(appUser));

  @override
  String toString() {
    return 'AuthState(sendOtpStatus: $sendOtpStatus, secondsToExpiry: $secondsToExpiry, otpVerifyStatus: $otpVerifyStatus, appUser: $appUser)';
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
      AppUser? appUser});

  $StatusCopyWith<$Res> get sendOtpStatus;
  $StatusCopyWith<$Res> get otpVerifyStatus;
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
    TResult Function(Status sendOtpStatus, int secondsToExpiry,
            Status otpVerifyStatus, AppUser? appUser)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(_that.sendOtpStatus, _that.secondsToExpiry,
            _that.otpVerifyStatus, _that.appUser);
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
    TResult Function(Status sendOtpStatus, int secondsToExpiry,
            Status otpVerifyStatus, AppUser? appUser)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState():
        return $default(_that.sendOtpStatus, _that.secondsToExpiry,
            _that.otpVerifyStatus, _that.appUser);
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
    TResult? Function(Status sendOtpStatus, int secondsToExpiry,
            Status otpVerifyStatus, AppUser? appUser)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(_that.sendOtpStatus, _that.secondsToExpiry,
            _that.otpVerifyStatus, _that.appUser);
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
      this.appUser});

  @override
  final Status sendOtpStatus;
  @override
  final int secondsToExpiry;
  @override
  final Status otpVerifyStatus;
  @override
  final AppUser? appUser;

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
            const DeepCollectionEquality().equals(other.appUser, appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendOtpStatus, secondsToExpiry,
      otpVerifyStatus, const DeepCollectionEquality().hash(appUser));

  @override
  String toString() {
    return 'AuthState(sendOtpStatus: $sendOtpStatus, secondsToExpiry: $secondsToExpiry, otpVerifyStatus: $otpVerifyStatus, appUser: $appUser)';
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
      AppUser? appUser});

  @override
  $StatusCopyWith<$Res> get sendOtpStatus;
  @override
  $StatusCopyWith<$Res> get otpVerifyStatus;
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
}

// dart format on
