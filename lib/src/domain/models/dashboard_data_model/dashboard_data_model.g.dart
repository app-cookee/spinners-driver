// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardDataModel _$DashboardDataModelFromJson(Map<String, dynamic> json) =>
    _DashboardDataModel(
      remainingPickups: (json['remainingPickups'] as num?)?.toInt() ?? 0,
      remainingDeliveries: (json['remainingDeliveries'] as num?)?.toInt() ?? 0,
      completedPickups: (json['completedPickups'] as num?)?.toInt() ?? 0,
      completedDeliveries: (json['completedDeliveries'] as num?)?.toInt() ?? 0,
      totalCollectedCash: (json['totalCollectedCash'] as num?)?.toInt() ?? 0,
      nextActivityAt: json['nextActivityAt'] as String? ?? '',
      activityType: json['activityType'] as String? ?? '',
    );

Map<String, dynamic> _$DashboardDataModelToJson(_DashboardDataModel instance) =>
    <String, dynamic>{
      'remainingPickups': instance.remainingPickups,
      'remainingDeliveries': instance.remainingDeliveries,
      'completedPickups': instance.completedPickups,
      'completedDeliveries': instance.completedDeliveries,
      'totalCollectedCash': instance.totalCollectedCash,
      'nextActivityAt': instance.nextActivityAt,
      'activityType': instance.activityType,
    };
