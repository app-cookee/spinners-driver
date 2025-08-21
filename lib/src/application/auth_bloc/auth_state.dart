part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
   factory AuthState({
     required Status sendOtpStatus,
      required int secondsToExpiry,
      required Status otpVerifyStatus,
          AppUser? appUser,
             required Status refreshtokenStatus,
  
   })=_AuthState;
     factory AuthState.initial() => AuthState(
       sendOtpStatus: Status.initial(),
       secondsToExpiry: 0,
       otpVerifyStatus: Status.initial(),
         appUser: AppUser(),
           refreshtokenStatus: Status.initial(),

     );
}
