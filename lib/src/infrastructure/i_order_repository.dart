import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/services/api_services/api_service.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/respositories/order_repository.dart';

@LazySingleton(as: OrderRepository)
class OrderRepositoryImplementation implements OrderRepository {
  final Api api;

  OrderRepositoryImplementation({required this.api});

  @override
  Future<OrderModel> getOrdersList(int limit, int skip, String filter) async{
    return OrderModel();
    // try{

    // }
    // catch(e){

    // }
   
  }

}