import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/api_constants.dart';
import 'package:spinners_driver/app/extensions/map_extension.dart';
import 'package:spinners_driver/app/services/api_services/api_service.dart';
import 'package:spinners_driver/src/domain/models/cash_settlement_model/cash_settlement_model.dart';
import 'package:spinners_driver/src/domain/models/order_details_response_model/order_details_response_model.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/models/service_list_datamodel/service_list_datamodel.dart';
import 'package:spinners_driver/src/domain/respositories/order_repository.dart';

@LazySingleton(as: OrderRepository)
class OrderRepositoryImplementation implements OrderRepository {
  final Api api;

  OrderRepositoryImplementation({required this.api});

  @override
  Future<OrderModel> getOrdersList(int limit, int skip, String filter, bool expressOnly, double? latitude, double? longitude, String? searchText,String? pickupFrom,String? pickupTo,String? deliveryFrom
,String? deliveryTo,) async {
    try {
      final Map<String, dynamic> params = {"limit": limit, "skip": skip, "status": filter, "expressOnly": expressOnly, "latitude": latitude, "longitude": longitude, "searchText": searchText,  "pickupFrom": pickupFrom,
  "pickupTo": pickupTo,"deliveryFrom": deliveryFrom,"deliveryTo": deliveryTo
,}.clean();

      log(params.toString(), name: "params");
      var response = await api.profile.get(ApiEndpoints().ordersList, queryParameters: params);
      OrderModel orders = OrderModel.fromJson(response.data);
      return orders;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<OrderDetailsResponseModel> getOrdersDetail(String orderId) async {
    try {
      final Map<String, dynamic> params = {
        "id": orderId,
      }.clean();
      // log(params.toString());

      var response = await api.profile.get(ApiEndpoints().getOrderDetails, queryParameters: params);
      OrderDetailsResponseModel orderDetail = OrderDetailsResponseModel.fromJson(response.data);
      return orderDetail;
    } catch (e) {
    log(e.toString(),name: "error in detail");
      rethrow;
    }
  }

  @override
  Future<void> pickupOrder(String orderId, String driverNotes) async {
    try {
      final Map<String, dynamic> data = {
        "id": orderId,
        "driverNotes": driverNotes,
      }.clean();

      await api.profile.post(ApiEndpoints().pickupOrder, data: data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addBag(String orderItemId, String bagId) async {
    try {
      log('Repository: Adding bag - orderItemId: $orderItemId, bagId: $bagId', name: "OrderRepository");
      final Map<String, dynamic> data = {
        "orderServiceId": orderItemId,
        "bagId": bagId,
      }.clean();

      log('Repository: Request data: $data', name: "OrderRepository");
      await api.profile.post(ApiEndpoints().addBag, data: data);
      log('Repository: Bag added successfully', name: "OrderRepository");
    } catch (e) {
      log('Repository: Error adding bag: $e', name: "OrderRepository");
      rethrow;
    }
  }

  @override
  Future<String> createNewBag(String bagId, String orderId, String serviceId) async {
    try {
      log('Repository: Creating new bag - bagId: $bagId, orderId: $orderId, serviceId: $serviceId', name: "OrderRepository");
      final Map<String, dynamic> data = {
        "bagId": bagId,
        "orderId": orderId,
        "serviceDetails": {
          "serviceId": serviceId,
        },
      }.clean();

      log('Repository: Request data: $data', name: "OrderRepository");
      var response = await api.profile.post(ApiEndpoints().createNewBag, data: data);
      log('Repository: New bag created successfully with ID: ${response.data['id']}', name: "OrderRepository");
      return response.data['id'] as String;
    } catch (e) {
      log('Repository: Error creating new bag: $e', name: "OrderRepository");
      rethrow;
    }
  }

  @override
  Future<List<ServiceListDatamodel>> getServices(int limit, int skip,String? serviceMenuId) async {
    try {
      // log(serviceMenuId.toString(),name: "service mednu id chenking fron order repository");
      final Map<String, dynamic> params = {"limit": limit, "skip": skip,"serviceMenuId": serviceMenuId,}.clean();

      log('Fetching services with params: $params', name: "getServices");
      var response = await api.profile.get(ApiEndpoints().serviceList, queryParameters: params);

      List<ServiceListDatamodel> services = [];
      if (response.data['data'] != null) {
        final List<dynamic> dataList = response.data['data'] as List<dynamic>;
        services = dataList.map((item) => ServiceListDatamodel.fromJson(item as Map<String, dynamic>)).toList();
      }
      log('Parsed services count: ${services.length}', name: "getServices");
      return services;
    } catch (e) {
      log('Error fetching services: $e', name: "getServices");
      rethrow;
    }
  }

  @override
  Future<void> removeBag(String id) async {
    try {
      final Map<String, dynamic> data = {
       
        "id": id,
      }.clean();

      await api.profile.post(ApiEndpoints().removeBag, data: data);
    } catch (e) {
      rethrow;
    }
  }
  
  @override
  Future<OrderModel> getMyOrdersList(int limit, int skip, String filter, String? searchText, String? from, String? to) async{
  try {
      final Map<String, dynamic> params = {"limit": limit, "skip": skip, "status": filter, "from":from,"to":to, "searchText": searchText}.clean();

      log(params.toString(), name: "params");
      var response = await api.profile.get(ApiEndpoints().driverOrders, queryParameters: params);
      OrderModel orders = OrderModel.fromJson(response.data);
      return orders;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CashSettlementModel> getCashSettlmentsList(int limit, int skip, String? from, String? to) async {
  try {
      final Map<String, dynamic> params = {"limit": limit, "skip": skip, "from":from,"to":to}.clean();

      log(params.toString(), name: "params");
      var response = await api.profile.get(ApiEndpoints().cashSettlments, queryParameters: params);
      CashSettlementModel settlementData = CashSettlementModel.fromJson(response.data);
      return settlementData;
    } catch (e) {
      rethrow;
    }
  }
}
