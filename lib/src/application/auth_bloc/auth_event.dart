part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
    const factory AuthEvent.sendOtp({
    required String phoneNumber,
    required bool isResent,
  }) = _SendOtp;
    const factory AuthEvent.verifyOtp({
    required String phoneNumber,
    required String otp,

  }) = _VerifyOtp;
}
