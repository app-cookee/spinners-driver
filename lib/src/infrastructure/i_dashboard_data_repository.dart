import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/api_constants.dart';
import 'package:spinners_driver/app/services/api_services/api_service.dart';
import 'package:spinners_driver/src/domain/models/dashboard_data_model/dashboard_data_model.dart';
import 'package:spinners_driver/src/domain/respositories/dashboard_data_repository.dart';

@LazySingleton(as: DashboardDataRepository)
 class DashboardDataRepositoryImplementation implements DashboardDataRepository {
  final Api api;

  DashboardDataRepositoryImplementation({required this.api});

  @override
  Future<DashboardDataModel> getDashboardData() async{
    try{
      var response = await api.profile.get(ApiEndpoints().dashboardData);
      DashboardDataModel dashboardData = DashboardDataModel.fromJson(response.data);
      return dashboardData;
    }catch(e){
      rethrow;
    }
  }
}

  