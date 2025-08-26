import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';

abstract class DeliveryRepository {
  Future<OrderResponse> getOrdersDetail(String orderId);
  Future<String> confirmDelivery(String id,String paymentMethod,double receivedAmount);
}
