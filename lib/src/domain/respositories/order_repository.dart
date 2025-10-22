import 'package:spinners_driver/src/domain/models/cash_settlement_model/cash_settlement_model.dart';
import 'package:spinners_driver/src/domain/models/order_details_response_model/order_details_response_model.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/models/service_list_datamodel/service_list_datamodel.dart';

abstract class OrderRepository {
  // Future<OrderModel> getOrdersList(int limit,int skip,String filter);
  Future<OrderDetailsResponseModel> getOrdersDetail(String orderId);
  Future<void> pickupOrder(String orderId, String driverNotes);
  Future<void> addBag(String orderItemId, String bagId);
  Future<String> createNewBag(String bagId, String orderId, String serviceId);
  Future<List<ServiceListDatamodel>> getServices(int limit, int skip,String? serviceMenuId);
  Future<OrderModel> getOrdersList(int limit,int skip,String filter,bool expressOnly,double? latitude,double? longitude,String? searchText,String? pickupTo
,String? deliveryTo,
);
    Future<void> removeBag(String id);
     Future<OrderModel> getMyOrdersList(int limit,int skip,String filter,String? searchText,String? from,String? to);
  Future<CashSettlementModel> getCashSettlmentsList(int limit,int skip,String? from,String? to);



}
