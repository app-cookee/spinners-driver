// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
      userId: json['id'] as String? ?? '',
      email: json['email'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
      vehicleNumber: json['vehicleNumber'] as String? ?? '',
      referralCode: json['referralCode'] as String? ?? '',
      photo: json['photo'] as String?,
      storeName: json['storeName'] as String?,
      storeAddress: json['storeAddress'] as String?,
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
      'id': instance.userId,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'timestamp': instance.timestamp,
      'vehicleNumber': instance.vehicleNumber,
      'referralCode': instance.referralCode,
      'photo': instance.photo,
      'storeName': instance.storeName,
      'storeAddress': instance.storeAddress,
      'active': instance.active,
    };
