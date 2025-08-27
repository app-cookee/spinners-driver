import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/api_constants.dart';
import 'package:spinners_driver/app/extensions/map_extension.dart';
import 'package:spinners_driver/app/services/api_services/api_service.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/respositories/delivery_repository.dart';

@LazySingleton(as: DeliveryRepository)
class DeliveryRepositoryImplementation implements DeliveryRepository {
  final Api api;

  DeliveryRepositoryImplementation({required this.api});

  @override
  Future<OrderResponse> getOrdersDetail(String orderId) async {
    try {
      final Map<String, dynamic> params = {
        "id": orderId,
      }.clean();
      // log(params.toString());

      var response = await api.profile
          .get(ApiEndpoints().getOrderDetail, queryParameters: params);
      OrderResponse orderDetail = OrderResponse.fromJson(response.data);
      return orderDetail;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
  
  @override
  Future<String> confirmDelivery(String id, String paymentMethod, double receivedAmount) async {
    try {
      final Map<String, dynamic> data = {
        "id": id,
        "paymentMethod": paymentMethod,
        "receivedAmount": receivedAmount,
      }.clean();
      var response = await api.profile
          .post(ApiEndpoints().confirmDelivered, data: data);
      return '';
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
