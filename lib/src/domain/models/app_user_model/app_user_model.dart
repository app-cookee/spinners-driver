
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';


@freezed
abstract class AppUser with _$AppUser {
   factory AppUser({
  
 
    @JsonKey(name: 'id') @Default('') String userId,
    @JsonKey(name: 'driverId') @Default('') String driverId,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'firstName') @Default('') String firstName,
    @JsonKey(name: 'lastName') @Default('') String lastName,
    @JsonKey(name: 'phoneNumber') @Default('') String phoneNumber,
    @JsonKey(name: 'timestamp') @Default('') String timestamp,
    @JsonKey(name: 'vehicleNumber') @Default('') String vehicleNumber,

    // New fields from schema
    @JsonKey(name: 'referralCode') @Default('') String referralCode,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'storeName') String? storeName,
    @JsonKey(name: 'storeAddress') String? storeAddress,
    @JsonKey(name: 'active') @Default(false) bool active,
    @JsonKey(name: 'unreadMsgs') @Default(0) int unreadMsgs
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
