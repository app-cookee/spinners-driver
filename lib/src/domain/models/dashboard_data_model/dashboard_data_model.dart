import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_data_model.g.dart';
part 'dashboard_data_model.freezed.dart';
@freezed
abstract class DashboardDataModel with _$DashboardDataModel{
  const factory DashboardDataModel({
    @Default(0) int remainingPickups,
    @Default(0) int remainingDeliveries,
    @Default(0) int completedPickups,
    @Default(0) int completedDeliveries,
    @Default(0) int totalCollectedCash,
    @Default('') String nextActivityAt,
    @Default('') String activityType,
    @Default('') String lastCollectedCashAt,
  }) = _DashboardDataModel;

  factory DashboardDataModel.fromJson(Map<String, dynamic> json) => _$DashboardDataModelFromJson(json);
}