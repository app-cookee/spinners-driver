// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationResponseModel _$NotificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    _NotificationResponseModel(
      notificationsList: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => NotificationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$NotificationResponseModelToJson(
        _NotificationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.notificationsList,
      'totalCount': instance.totalCount,
    };

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: json['id'] as String? ?? "",
      description: json['description'] as String? ?? "",
      read: json['read'] as bool? ?? false,
      title: json['title'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      orderId: json['orderId'] as String? ?? "",
      type: json['type'] as String? ?? "",
      damageReportId: json['damageReportId'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      order: json['order'] == null
          ? const OrderResponse()
          : OrderResponse.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'read': instance.read,
      'title': instance.title,
      'userId': instance.userId,
      'orderId': instance.orderId,
      'type': instance.type,
      'damageReportId': instance.damageReportId,
      'createdAt': instance.createdAt,
      'order': instance.order,
    };
