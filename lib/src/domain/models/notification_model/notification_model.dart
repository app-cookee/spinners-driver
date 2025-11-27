// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
abstract class NotificationResponseModel with _$NotificationResponseModel {
  const factory NotificationResponseModel(
      {@JsonKey(name: 'data') @Default([]) List<NotificationModel> notificationsList,
      @JsonKey(name: 'totalCount') @Default(0) int totalCount}) = _NotificationResponseModel;

  factory NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseModelFromJson(json);
}

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'description') @Default("") String description,
    @JsonKey(name: 'read') @Default(false) bool read,
    @JsonKey(name: 'title') @Default("") String title,
    @JsonKey(name: 'userId') @Default("") String userId,
    @JsonKey(name: 'orderId') @Default("") String orderId,
    @JsonKey(name: 'type') @Default("") String type,
    @JsonKey(name: 'damageReportId') @Default("") String damageReportId,
    @JsonKey(name: 'createdAt') @Default("") String createdAt,
    @JsonKey(name: 'order') @Default(OrderResponse()) OrderResponse order,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}