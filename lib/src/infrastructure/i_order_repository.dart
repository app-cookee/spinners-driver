import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/api_constants.dart';
import 'package:spinners_driver/app/extensions/map_extension.dart';
import 'package:spinners_driver/app/services/api_services/api_service.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/respositories/order_repository.dart';

@LazySingleton(as: OrderRepository)
class OrderRepositoryImplementation implements OrderRepository {
  final Api api;

  OrderRepositoryImplementation({required this.api});

  @override
  Future<OrderModel> getOrdersList(int limit, int skip, String filter,bool expressOnly,double? latitude,double? longitude,String? searchText) async{

    try{
final Map<String, dynamic> params =
          {"limit": limit, "skip": skip, "status": filter,"expressOnly":expressOnly,"latitude":latitude,"longitude":longitude,"searchText":searchText}.clean();

      log(params.toString(),name: "params");
      var response = await api.profile
          .get(ApiEndpoints().ordersList, queryParameters: params);
     OrderModel orders = OrderModel.fromJson(response.data);
         return orders;
    }
    catch(e){
       rethrow;

    }
   
  }

}