import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/api_constants.dart';
import 'package:spinners_driver/app/constants/storage_constants.dart';
import 'package:spinners_driver/app/extensions/map_extension.dart';
import 'package:spinners_driver/app/services/api_services/api_service.dart';
import 'package:spinners_driver/app/services/local_storage_service.dart';
import 'package:spinners_driver/src/domain/respositories/auth_respository.dart';
import 'package:spinners_driver/src/domain/models/app_user_model/app_user_model.dart';

@LazySingleton(as: AuthRepository)
 class AuthRepositoryImplementation implements AuthRepository {
  final Api api;

  AuthRepositoryImplementation({required this.api});


  
  @override
  Future<int> sendOtp(String phoneNumber) async {
    try {
      final Map<String, dynamic> data = {
        'phoneNumber': phoneNumber,
        "whatsapp": false,
        // "role": "CUSTOMER"
      };
      var response = await api.general.post(ApiEndpoints().sendOtp, data: data);
      return response.data['secondsToExpiry'];
    } catch (e) {
      rethrow;
    }
  }



    @override
  Future<AppUser> verifyOtp(String phoneNumber, String otp,
      String firebaseToken, ) async {
    try {
      final Map<String, dynamic> data = {
        "phoneNumber": phoneNumber,
        "otp": otp,
        "firebaseToken": firebaseToken,
      };
      var response =
          await api.general.post(ApiEndpoints().verifyOtp, data: data);
      AppUser userData = AppUser.fromJson(response.data['userData']);
      LocalStorage.setString(StorageKey.accessToken, response.data['token']);
      LocalStorage.setString(
          StorageKey.refreshToken, response.data['refreshToken']);
      return userData;
    } catch (e) {
      log(e.toString(), name: 'error in verify otp repo');
      rethrow;
    }
  }

    @override
  Future<String> refreshtoken() async {
    try {
      var refreshToken = LocalStorage.getString(StorageKey.refreshToken);
      final headers = {
        "x-refresh-token": "Bearer $refreshToken",
      };
      var response = await api.general.post(ApiEndpoints().refreshtoken,
          options: Options(headers: headers));
      LocalStorage.setString(StorageKey.accessToken, response.data['token']);
      LocalStorage.setString(
          StorageKey.refreshToken, response.data['refreshToken']);
      return 'Done';
    } catch (e) {
      log(e.toString(), name: 'error in refreshtoken repo');
      rethrow;
    }
  }

  // Log out ......
  @override
  Future<AppUser> logOut() async {
    try {
      var response = await api.profile.post(ApiEndpoints().logout);
      AppUser userData = AppUser.fromJson(response.data);
      return userData;
    } catch (e) {
      rethrow;
    }
  }
  
  // profile Auth .........
  @override
  Future<AppUser> profileAuth() async {
    try {
      var response = await api.profile.get(ApiEndpoints().profile);
      AppUser userData = AppUser.fromJson(response.data);
      return userData;
    } catch (e) {
      log(e.toString(), name: 'error in profile repo');
      rethrow;
    }
  }
  
  @override
  Future<bool> updateProfile(String firstName, String lastName, String photoName, String photoPath) async {
    try {
      final formData = FormData.fromMap({
        'photo': (photoPath!=''&&photoName!='') ? await MultipartFile.fromFile(photoPath, filename: photoName):'',
        'firstName': firstName,
        'lastName': lastName,
        }.clean());
      var response = await api.profile.post(ApiEndpoints().updateProfile, data: formData);
      return response.data['updated']==true;
    } catch (e) {
      log(e.toString(),name: 'error Update Profile');
      rethrow;
    }
  }

}