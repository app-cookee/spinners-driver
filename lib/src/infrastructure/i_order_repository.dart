import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/api_constants.dart';
import 'package:spinners_driver/app/extensions/map_extension.dart';
import 'package:spinners_driver/app/services/api_services/api_service.dart';
import 'package:spinners_driver/src/domain/models/order_details_response_model/order_details_response_model.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/models/service_list_datamodel/service_list_datamodel.dart';
import 'package:spinners_driver/src/domain/respositories/order_repository.dart';

@LazySingleton(as: OrderRepository)
class OrderRepositoryImplementation implements OrderRepository {
  final Api api;

  OrderRepositoryImplementation({required this.api});

  @override
  Future<OrderModel> getOrdersList(int limit, int skip, String filter, bool expressOnly, double? latitude, double? longitude, String? searchText) async {
    try {
      final Map<String, dynamic> params = {"limit": limit, "skip": skip, "status": filter, "expressOnly": expressOnly, "latitude": latitude, "longitude": longitude, "searchText": searchText}.clean();

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
      final Map<String, dynamic> data = {
        "orderServiceId": orderItemId,
        "bagId": bagId,
      }.clean();

      await api.profile.post(ApiEndpoints().addBag, data: data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> createNewBag(String bagId, String orderId, String serviceId) async {
    try {
      final Map<String, dynamic> data = {
        "bagId": bagId,
        "orderId": orderId,
        "serviceDetails": {
          "serviceId": serviceId,
        },
      }.clean();

      var response = await api.profile.post(ApiEndpoints().createNewBag, data: data);
      return response.data['id'] as String;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ServiceListDatamodel>> getServices(int limit, int skip) async {
    try {
      final Map<String, dynamic> params = {"limit": limit, "skip": skip}.clean();

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
  Future<void> removeBag(String orderServiceId, String bagId) async {
    try {
      final Map<String, dynamic> data = {
        "orderServiceId": orderServiceId,
        "bagId": bagId,
      }.clean();

      await api.profile.post(ApiEndpoints().removeBag, data: data);
    } catch (e) {
      rethrow;
    }
  }
}
