import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/src/application/respositories/auth_respository.dart';
import 'package:spinners_driver/src/domain/models/app_user_model/app_user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
    AuthRepository authRepository;
  AuthBloc(  this.authRepository,) : super(AuthState.initial()) {
    on<_SendOtp>(_onSendOtp);
    on<_VerifyOtp>(_verifyOtp);
  }

  FutureOr<void> _onSendOtp(_SendOtp event, Emitter<AuthState> emit) async {
    try {
      if (!event.isResent) {
        emit(state.copyWith(sendOtpStatus: Status.loading()));
      }
      var response = await authRepository.sendOtp(event.phoneNumber);
      emit(state.copyWith(secondsToExpiry: response));
      if (!event.isResent) {
        emit(state.copyWith(sendOtpStatus: Status.success()));
      }
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(sendOtpStatus: Status.failure(e.toString())));
    }
  }

  
   FutureOr<void> _verifyOtp(_VerifyOtp event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(otpVerifyStatus: Status.loading()));
      // String fcmToken = await fcmService.getFirebaseToken();
      // log(fcmToken);
      var response =
          await authRepository.verifyOtp(event.phoneNumber,event.otp,"");
      emit(
          state.copyWith(otpVerifyStatus: Status.success(), 
          appUser: response, 
          ));
    } catch (e) {
      emit(state.copyWith(
        otpVerifyStatus: Status.failure(e.toString()),
      ));
    }
  }
}
