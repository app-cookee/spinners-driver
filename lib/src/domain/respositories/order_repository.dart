import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';

abstract class OrderRepository {
  Future<OrderModel> getOrdersList(int limit,int skip,String filter,bool expressOnly,double? latitude,double? longitude,String? searchText);

}
