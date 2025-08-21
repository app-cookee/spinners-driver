import 'package:spinners_driver/src/domain/models/app_user_model/app_user_model.dart';

abstract class AuthRepository {
  Future<int> sendOtp(String phoneNumber);
  Future<AppUser> verifyOtp(
    String phoneNumber,
    String otp,
    String firebaseToken,
  );
  Future<String> refreshtoken();
  Future<AppUser> logOut();
  Future<AppUser> profileAuth();
}
