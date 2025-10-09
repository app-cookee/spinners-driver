// ignore_for_file: invalid_annotation_target

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
    @JsonKey(name: 'customerNote') CustomerNote? customerNote,
    @Default('') String type,
    @Default('') String status,
    @Default('') String refId,
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
    @Default('') String? assignedPickupDriverId,
    @Default('') String? assignedDeliveryDriverId,
     @JsonKey(name: 'driverNote') DriverNote? driverNote,
   
    @Default(Customer()) Customer customer,
    @Default([]) List<OrderStatus> statusHistory,
    @Default(SelectedAddress()) SelectedAddress selectedAddress,
    @Default(TimeSlot()) TimeSlot pickupSlot,
        @Default(TimeSlot()) TimeSlot deliverySlot,

     @Default([]) List<OrderedServices> orderedServices,
     @Default([]) List<PromoItem> promoUsages,
   @Default([]) List<Payment> payment,
    @Default([]) List<AdditionalCharges> additionalCharges,
      @JsonKey(name: 'serviceMenu') ServiceCategoryItemModel? serviceMenu,
  }) = _OrderDetailsResponseModel;

  factory OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsResponseModelFromJson(json);
}




@freezed
abstract class ServiceCategoryItemModel with _$ServiceCategoryItemModel {
  factory ServiceCategoryItemModel(
      {@JsonKey(name: 'id') @Default('') String id,
      @JsonKey(name: 'active') @Default(true) bool active,
      @JsonKey(name: 'type') @Default('') String type,
      @JsonKey(name: 'subTitle') @Default('') String subTitle,
      @JsonKey(name: 'title') @Default('') String title,
      @JsonKey(name: 'shortDesc') @Default('') String shortDesc,
      @JsonKey(name: 'coverPhoto') @Default('') String coverPhoto,
      @JsonKey(name: 'sortOrder') @Default(0) int sortOrder,
      @JsonKey(name: 'placeOrderText') @Default('') String placeOrderText,
      @JsonKey(name: 'quickPickupText') @Default('') String quickPickupText,}) = _ServiceCategoryItemModel;

  factory ServiceCategoryItemModel.fromJson(Map<String, dynamic> json) => _$ServiceCategoryItemModelFromJson(json);
}


@freezed
abstract class DriverNote with _$DriverNote{
  const factory DriverNote({
    @JsonKey(name: 'note') @Default("") String note,
    @JsonKey(name: 'handledAt') @Default("") String? handledAt,
     @JsonKey(name: 'createdAt') @Default("") String createdAt,
    @JsonKey(name: 'id') @Default("") String id,
      @JsonKey(name: 'actionTaken') @Default("") String actionTaken,
    
  }) = _DriverNote;

  factory DriverNote.fromJson(Map<String, dynamic> json) =>
      _$DriverNoteFromJson(json);
}


@freezed
abstract class CustomerNote with _$CustomerNote{
  const factory CustomerNote({
    @JsonKey(name: 'note') @Default("") String note,
    @JsonKey(name: 'handledAt') @Default("") String? handledAt,
     @JsonKey(name: 'createdAt') @Default("") String createdAt,
    @JsonKey(name: 'id') @Default("") String id,
      @JsonKey(name: 'actionTaken') @Default("") String actionTaken,
    
  }) = _CustomerNote;

  factory CustomerNote.fromJson(Map<String, dynamic> json) =>
      _$CustomerNoteFromJson(json);
}

@freezed
abstract class OrderedServices with _$OrderedServices {
  const factory OrderedServices({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'service') @Default(Service()) Service service,
     @JsonKey(name: 'items') @Default([]) List<Item> item,
      @JsonKey(name: 'bags') @Default([]) List<ScannedBags> bags,
    // @JsonKey(name: 'quantity') @Default(0) int quantity,
    // @JsonKey(name: 'soldPrice') @Default("") String soldPrice,
    // @JsonKey(name: 'listedPrice') @Default("") String listedPrice,
    
   
  }) = _OrderedServices;

  factory OrderedServices.fromJson(Map<String, dynamic> json) =>
      _$OrderedServicesFromJson(json);
}


@freezed
abstract class Item with _$Item {
  const factory Item({
     @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'orderedServiceId') @Default("") String orderedServiceId,
    @JsonKey(name: 'quantity') @Default(0) int quantity,
    @JsonKey(name: 'itemId') @Default("") String itemId,
    @JsonKey(name: 'soldPrice') @Default("") String soldPrice,
    @JsonKey(name: 'listedPrice') @Default("") String listedPrice,
    @JsonKey(name: 'item') ItemDetails? item,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
abstract class ItemDetails with _$ItemDetails {
  const factory ItemDetails({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'categoryId') @Default("") String categoryId,
    @JsonKey(name: 'name') @Default("") String name,
    @JsonKey(name: 'salePrice') @Default("") String salePrice,
    @JsonKey(name: 'listingPrice') @Default("") String listingPrice,
    @JsonKey(name: 'active') @Default(false) bool active,
    @JsonKey(name: 'deleted') @Default(false) bool deleted,
    @JsonKey(name: 'sortOrder') @Default(0) int sortOrder,
    @JsonKey(name: 'createdAt') @Default("") String createdAt,
  }) = _ItemDetails;

  factory ItemDetails.fromJson(Map<String, dynamic> json) => _$ItemDetailsFromJson(json);
}


// @freezed
// abstract class OrderedItems with _$OrderedItems {
//   const factory OrderedItems({
//    @Default("") String id,
//     @Default(0) int quantity,
//     @Default("") String soldPrice,
//     @Default("") String listedPrice,
//    @JsonKey(name:'service') @Default(OrderItemService()) OrderItemService service,
//     @Default(Item()) Item item,
//     // @Default("") String driverNotes,
//   }) = _OrderedItems;

//   factory OrderedItems.fromJson(Map<String, dynamic> json) =>
//       _$OrderedItemsFromJson(json);
// }
@freezed
abstract class ScannedBags with _$ScannedBags{
  const factory ScannedBags({
    @Default("") String id,
    @Default("") String orderServiceId,
    @Default("") String bagId,
  }) = _ScannedBags;

  factory ScannedBags.fromJson(Map<String, dynamic> json) => _$ScannedBagsFromJson(json);
}
// @freezed
// abstract class OrderItemService with _$OrderItemService {
//   const factory OrderItemService({
//     @JsonKey(name: 'id') @Default("") String id,
//     @JsonKey(name: 'name') @Default("") String name,
//     @JsonKey(name: 'description') @Default("") String description,
//     @JsonKey(name: 'tagLine') @Default("") String tagLine,
//     @JsonKey(name: 'color') @Default("") String color,
//     @JsonKey(name: 'icon') @Default("") String icon,
//     @JsonKey(name: 'active') @Default(false) bool active,
//     @JsonKey(name: 'deleted') @Default(false) bool deleted,
//     @JsonKey(name: 'createdAt') @Default("") String createdAt,
//     @JsonKey(name: 'sortOrder') @Default(0) int sortOrder,
//         @Default([]) List<ScannedBags> scannedBags,

//   }) = _OrderItemService;

//   factory OrderItemService.fromJson(Map<String, dynamic> json) =>
//       _$OrderItemServiceFromJson(json);
// }

@freezed
abstract class Service with _$Service {
  const factory Service({
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
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}