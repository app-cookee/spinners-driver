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
  
  const factory AuthEvent.refreshtoken() = _Refreshtoken;
   const factory AuthEvent.logOut() = _LogOut;
   const factory AuthEvent.profileAuth() = _ProfileAuth;
   const factory AuthEvent.updateProfileEvent({
    required String firstName,
    required String lastName,
    required String photoName,
    required String photoPath,
   }) = _UpdateProfileEvent;
}
