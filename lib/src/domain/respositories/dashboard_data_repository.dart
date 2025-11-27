import 'package:spinners_driver/src/domain/models/dashboard_data_model/dashboard_data_model.dart';
import 'package:spinners_driver/src/domain/models/notification_model/notification_model.dart';

abstract class DashboardDataRepository {
  Future<DashboardDataModel> getDashboardData();
  Future<NotificationResponseModel> getNotificationsList(int limit,int skip);
}