import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
part 'order_details_response_model.g.dart';
part 'order_details_response_model.freezed.dart';
@freezed
abstract class OrderDetailsResponseModel with _$OrderDetailsResponseModel{
  const factory OrderDetailsResponseModel({
    @Default('') String id,
    @Default('') String customerId,
    @Default('') String storeId,
    @Default('') String orderedFrom,
    @Default('') String customerNote,
    @Default('') String type,
    @Default('') String status,
    @Default(0) int refId,
    @Default('') String pickupSlotId,
    @Default('') String deliverySlotId,
    @Default('') String selectedAddressId,
    @Default(false) bool expressService,
    @Default('') String pickupAt,
    @Default('') String deliveryAt,
    @Default('') String createdAt,
    @Default('') String totalAmount,
    @Default('') String discount,
    @Default('') String paidAmount,
    @Default('') String assignedPickupDriverId,
    @Default('') String assignedDeliveryDriverId,
    @Default('') String driverNotes,
    @Default(Customer()) Customer customer,
    @Default([]) List<OrderStatus> statusHistory,
    @Default(SelectedAddress()) SelectedAddress selectedAddress,
    @Default(TimeSlot()) TimeSlot pickupSlot,
        @Default(TimeSlot()) TimeSlot deliverySlot,

     @Default([]) List<OrderedItem> orderedItems,
     @Default([]) List<PromoItem> promoUsages,
   @Default([]) List<Payment> payment,
    @Default([]) List<AdditionalCharges> additionalCharges,
  }) = _OrderDetailsResponseModel;

  factory OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsResponseModelFromJson(json);
}
@freezed
abstract class OrderedItem with _$OrderedItem {
  const factory OrderedItem({
   @Default("") String id,
    @Default(0) int quantity,
    @Default("") String soldPrice,
    @Default("") String listedPrice,
    @Default(Service()) Service service,
    @Default(Item()) Item item,
    @Default([]) List<ScannedBags> scannedBags,
    @Default("") String driverNotes,
  }) = _OrderedItem;

  factory OrderedItem.fromJson(Map<String, dynamic> json) =>
      _$OrderedItemFromJson(json);
}
@freezed
abstract class ScannedBags with _$ScannedBags{
  const factory ScannedBags({
    @Default("") String id,
    @Default("") String orderServiceId,
    @Default("") String bagId,
  }) = _ScannedBags;

  factory ScannedBags.fromJson(Map<String, dynamic> json) => _$ScannedBagsFromJson(json);
}