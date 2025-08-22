import 'package:spinners_driver/src/domain/models/dashboard_data_model/dashboard_data_model.dart';

abstract class DashboardDataRepository {
  Future<DashboardDataModel> getDashboardData();
}