import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/api_constants.dart';
import 'package:spinners_driver/app/extensions/map_extension.dart';
import 'package:spinners_driver/app/services/api_services/api_service.dart';
import 'package:spinners_driver/src/domain/models/order_details_response_model/order_details_response_model.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/domain/respositories/order_repository.dart';

@LazySingleton(as: OrderRepository)
class OrderRepositoryImplementation implements OrderRepository {
  final Api api;

  OrderRepositoryImplementation({required this.api});

  @override
  Future<OrderModel> getOrdersList(int limit, int skip, String filter) async {
    return OrderModel();
    // try{

    // }
    // catch(e){

    // }
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
}
