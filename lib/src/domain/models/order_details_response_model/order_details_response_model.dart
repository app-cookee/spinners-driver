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

     @Default([]) List<OrderedItems> orderedItems,
     @Default([]) List<PromoItem> promoUsages,
   @Default([]) List<Payment> payment,
    @Default([]) List<AdditionalCharges> additionalCharges,
  }) = _OrderDetailsResponseModel;

  factory OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsResponseModelFromJson(json);
}
@freezed
abstract class OrderedItems with _$OrderedItems {
  const factory OrderedItems({
   @Default("") String id,
    @Default(0) int quantity,
    @Default("") String soldPrice,
    @Default("") String listedPrice,
   @JsonKey(name:'service') @Default(OrderItemService()) OrderItemService service,
    @Default(Item()) Item item,
    @Default("") String driverNotes,
  }) = _OrderedItems;

  factory OrderedItems.fromJson(Map<String, dynamic> json) =>
      _$OrderedItemsFromJson(json);
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
@freezed
abstract class OrderItemService with _$OrderItemService {
  const factory OrderItemService({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'name') @Default("") String name,
    @JsonKey(name: 'description') @Default("") String description,
    @JsonKey(name: 'tagLine') @Default("") String tagLine,
    @JsonKey(name: 'color') @Default("") String color,
    @JsonKey(name: 'icon') @Default("") String icon,
    @JsonKey(name: 'active') @Default(false) bool active,
    @JsonKey(name: 'deleted') @Default(false) bool deleted,
    @JsonKey(name: 'createdAt') @Default("") String createdAt,
    @JsonKey(name: 'sortOrder') @Default(0) int sortOrder,
        @Default([]) List<ScannedBags> scannedBags,

  }) = _OrderItemService;

  factory OrderItemService.fromJson(Map<String, dynamic> json) =>
      _$OrderItemServiceFromJson(json);
}