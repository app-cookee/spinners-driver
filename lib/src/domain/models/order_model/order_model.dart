// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';
@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: 'data') @Default([]) List<OrderResponse> orderList,
    @JsonKey(name: 'totalCount') @Default(0) int totalCount,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
abstract class OrderResponse with _$OrderResponse {
  const factory OrderResponse({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'customerId') @Default("") String customerId,
    @JsonKey(name: 'storeId') @Default("") String storeId,
    @JsonKey(name: 'orderedFrom') @Default("") String orderedFrom,
    @JsonKey(name: 'customerNote') @Default("") String customerNote,
    @JsonKey(name: 'expressDelivery') @Default(false) bool expressDelivery,
    @JsonKey(name: 'type') @Default("") String type,
    @JsonKey(name: 'status') @Default("") String status,
    @JsonKey(name: 'refId') @Default(0) int refId,
    @JsonKey(name: 'pickupSlotId') @Default("") String pickupSlotId,
    @JsonKey(name: 'deliverySlotId') @Default("") String deliverySlotId,
    @JsonKey(name: 'selectedAddressId') @Default("") String selectedAddressId,
    @JsonKey(name: 'expressService') @Default(false) bool expressService,
    @JsonKey(name: 'pickupAt') @Default("") String pickupAt,
    @JsonKey(name: 'deliveryAt') @Default("") String deliveryAt,
    @JsonKey(name: 'createdAt') @Default("") String createdAt,
    @JsonKey(name: 'totalAmount') @Default("") String totalAmount,
    @JsonKey(name: 'discount') @Default("") String discount,
    @JsonKey(name: 'paidAmount') @Default("") String paidAmount,
    @JsonKey(name: 'customer') Customer? customer,
    @JsonKey(name: 'orderedItems') @Default([]) List<OrderedItem> orderedItems,
    @JsonKey(name: 'selectedAddress') SelectedAddress? selectedAddress,
    @JsonKey(name: 'store') Store? store,
    @JsonKey(name: 'pickupSlot') TimeSlot? pickupSlot,
    @JsonKey(name: 'deliverySlot') TimeSlot? deliverySlot,
    @JsonKey(name: 'statusHistory') @Default([]) List<OrderStatus> statusHistory,
    @JsonKey(name: 'promoUsages') @Default([]) List<PromoItem> promoUsages,
    @JsonKey(name: 'payment') @Default([]) List<Payment> payment,
    @JsonKey(name: 'additionalCharges') @Default([]) List<AdditionalCharges> additionalCharges,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

@freezed
abstract class OrderStatus with _$OrderStatus {
  const factory OrderStatus({
    @JsonKey(name: 'status') @Default("") String status,
    @JsonKey(name: 'orderId') @Default("") String orderId,
    @JsonKey(name: 'changedAt') @Default("") String changedAt,
    @JsonKey(name: 'id') @Default("") String id,
  }) = _OrderStatus;

  factory OrderStatus.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusFromJson(json);
}

@freezed
abstract class AdditionalCharges with _$AdditionalCharges {
  const factory AdditionalCharges({
    @JsonKey(name: 'amount') @Default("") String amount,
    @JsonKey(name: 'type') @Default("") String type,
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'orderId') @Default("") String orderId,
  }) = _AdditionalCharges;

  factory AdditionalCharges.fromJson(Map<String, dynamic> json) =>
      _$AdditionalChargesFromJson(json);
}

@freezed
abstract class PromoItem with _$PromoItem {
  const factory PromoItem({
    @JsonKey(name: 'amount') @Default("") String amount,
    @JsonKey(name: 'promoId') @Default("") String promoId,
    @JsonKey(name: 'promoCode') PromoCode? promoCode,
  }) = _PromoItem;

  factory PromoItem.fromJson(Map<String, dynamic> json) =>
      _$PromoItemFromJson(json);
}

@freezed
abstract class PromoCode with _$PromoCode {
  const factory PromoCode({
    @JsonKey(name: 'name') @Default("") String name,
  }) = _PromoCode;

  factory PromoCode.fromJson(Map<String, dynamic> json) =>
      _$PromoCodeFromJson(json);
}

@freezed
abstract class Customer with _$Customer {
  const factory Customer({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'user') User? user,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: 'firstName') @Default("") String firstName,
    @JsonKey(name: 'lastName') @Default("") String lastName,
    @JsonKey(name: 'phoneNumber') @Default("") String phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class OrderedItem with _$OrderedItem {
  const factory OrderedItem({
    @JsonKey(name: 'orderServiceId') @Default("") String id,
    @JsonKey(name: 'quantity') @Default(0) int quantity,
    @JsonKey(name: 'soldPrice') @Default("") String soldPrice,
    @JsonKey(name: 'listedPrice') @Default("") String listedPrice,
    @JsonKey(name: 'service') Service? service,
    @JsonKey(name: 'item') Item? item,
  }) = _OrderedItem;

  factory OrderedItem.fromJson(Map<String, dynamic> json) =>
      _$OrderedItemFromJson(json);
}

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

@freezed
abstract class Item with _$Item {
  const factory Item({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'name') @Default("") String name,
    @JsonKey(name: 'salePrice') @Default("") String salePrice,
    @JsonKey(name: 'category') Category? category,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'name') @Default("") String name,
    @JsonKey(name: 'service') ServiceInfo? service,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
abstract class ServiceInfo with _$ServiceInfo {
  const factory ServiceInfo({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'name') @Default("") String name,
  }) = _ServiceInfo;

  factory ServiceInfo.fromJson(Map<String, dynamic> json) =>
      _$ServiceInfoFromJson(json);
}

@freezed
abstract class SelectedAddress with _$SelectedAddress {
  const factory SelectedAddress({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'name') @Default("") String name,
    @JsonKey(name: 'place') @Default("") String place,
    @JsonKey(name: 'houseNumber') @Default("") String houseNumber,
    @JsonKey(name: 'latitude') @Default("") String latitude,
    @JsonKey(name: 'longitude') @Default("") String longitude,
    @JsonKey(name: 'deleted') @Default(false) bool deleted,
    @JsonKey(name: 'isDefault') @Default(false) bool isDefault,
    @JsonKey(name: 'customerId') @Default("") String customerId,
    @JsonKey(name: 'createdAt') @Default("") String createdAt,
  }) = _SelectedAddress;

  factory SelectedAddress.fromJson(Map<String, dynamic> json) =>
      _$SelectedAddressFromJson(json);
}

@freezed
abstract class Store with _$Store {
  const factory Store({
    @JsonKey(name: 'user') StoreUser? user,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

@freezed
abstract class StoreUser with _$StoreUser {
  const factory StoreUser({
    @JsonKey(name: 'firstName') @Default("") String firstName,
    @JsonKey(name: 'lastName') @Default("") String lastName,
  }) = _StoreUser;

  factory StoreUser.fromJson(Map<String, dynamic> json) =>
      _$StoreUserFromJson(json);
}

@freezed
abstract class TimeSlot with _$TimeSlot {
  const factory TimeSlot({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'from') @Default("") String from,
    @JsonKey(name: 'to') @Default("") String to,
    @JsonKey(name: 'day') @Default("") String day,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotFromJson(json);
}

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    @JsonKey(name: 'method') @Default("") String method,
    @JsonKey(name: 'walletTransaction') WalletItem? walletTransaction,
    @JsonKey(name: 'status') @Default("") String status,
    @JsonKey(name: 'amount') @Default("") String amount,
  }) = _Payment;
  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}
@freezed
abstract class WalletItem with _$WalletItem {
  const factory WalletItem({
    @JsonKey(name: 'id') @Default("") String id,
       @JsonKey(name: 'walletId') @Default("") String walletId,
          @JsonKey(name: 'description') @Default("") String description,
    @JsonKey(name: 'amount') @Default(0) int amount,
    @JsonKey(name: 'type') @Default("") String type,
  }) = _WalletItem;
  factory WalletItem.fromJson(Map<String, dynamic> json) =>
      _$WalletItemFromJson(json);
}