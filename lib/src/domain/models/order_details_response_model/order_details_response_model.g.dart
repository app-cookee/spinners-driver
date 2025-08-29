// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetailsResponseModel _$OrderDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _OrderDetailsResponseModel(
      id: json['id'] as String? ?? '',
      customerId: json['customerId'] as String? ?? '',
      storeId: json['storeId'] as String? ?? '',
      orderedFrom: json['orderedFrom'] as String? ?? '',
      customerNote: json['customerNote'] as String? ?? '',
      type: json['type'] as String? ?? '',
      status: json['status'] as String? ?? '',
      refId: (json['refId'] as num?)?.toInt() ?? 0,
      pickupSlotId: json['pickupSlotId'] as String? ?? '',
      deliverySlotId: json['deliverySlotId'] as String? ?? '',
      selectedAddressId: json['selectedAddressId'] as String? ?? '',
      expressService: json['expressService'] as bool? ?? false,
      pickupAt: json['pickupAt'] as String? ?? '',
      deliveryAt: json['deliveryAt'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      totalAmount: json['totalAmount'] as String? ?? '',
      discount: json['discount'] as String? ?? '',
      paidAmount: json['paidAmount'] as String? ?? '',
      assignedPickupDriverId: json['assignedPickupDriverId'] as String? ?? '',
      assignedDeliveryDriverId:
          json['assignedDeliveryDriverId'] as String? ?? '',
      driverNotes: json['driverNotes'] as String? ?? '',
      customer: json['customer'] == null
          ? const Customer()
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      statusHistory: (json['statusHistory'] as List<dynamic>?)
              ?.map((e) => OrderStatus.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedAddress: json['selectedAddress'] == null
          ? const SelectedAddress()
          : SelectedAddress.fromJson(
              json['selectedAddress'] as Map<String, dynamic>),
      pickupSlot: json['pickupSlot'] == null
          ? const TimeSlot()
          : TimeSlot.fromJson(json['pickupSlot'] as Map<String, dynamic>),
      deliverySlot: json['deliverySlot'] == null
          ? const TimeSlot()
          : TimeSlot.fromJson(json['deliverySlot'] as Map<String, dynamic>),
      orderedItems: (json['orderedItems'] as List<dynamic>?)
              ?.map((e) => OrderedItems.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      promoUsages: (json['promoUsages'] as List<dynamic>?)
              ?.map((e) => PromoItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      payment: (json['payment'] as List<dynamic>?)
              ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      additionalCharges: (json['additionalCharges'] as List<dynamic>?)
              ?.map(
                  (e) => AdditionalCharges.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OrderDetailsResponseModelToJson(
        _OrderDetailsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'storeId': instance.storeId,
      'orderedFrom': instance.orderedFrom,
      'customerNote': instance.customerNote,
      'type': instance.type,
      'status': instance.status,
      'refId': instance.refId,
      'pickupSlotId': instance.pickupSlotId,
      'deliverySlotId': instance.deliverySlotId,
      'selectedAddressId': instance.selectedAddressId,
      'expressService': instance.expressService,
      'pickupAt': instance.pickupAt,
      'deliveryAt': instance.deliveryAt,
      'createdAt': instance.createdAt,
      'totalAmount': instance.totalAmount,
      'discount': instance.discount,
      'paidAmount': instance.paidAmount,
      'assignedPickupDriverId': instance.assignedPickupDriverId,
      'assignedDeliveryDriverId': instance.assignedDeliveryDriverId,
      'driverNotes': instance.driverNotes,
      'customer': instance.customer,
      'statusHistory': instance.statusHistory,
      'selectedAddress': instance.selectedAddress,
      'pickupSlot': instance.pickupSlot,
      'deliverySlot': instance.deliverySlot,
      'orderedItems': instance.orderedItems,
      'promoUsages': instance.promoUsages,
      'payment': instance.payment,
      'additionalCharges': instance.additionalCharges,
    };

_OrderedItems _$OrderedItemsFromJson(Map<String, dynamic> json) =>
    _OrderedItems(
      id: json['id'] as String? ?? "",
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      soldPrice: json['soldPrice'] as String? ?? "",
      listedPrice: json['listedPrice'] as String? ?? "",
      service: json['service'] == null
          ? const Service()
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      item: json['item'] == null
          ? const Item()
          : Item.fromJson(json['item'] as Map<String, dynamic>),
      scannedBags: (json['scannedBags'] as List<dynamic>?)
              ?.map((e) => ScannedBags.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      driverNotes: json['driverNotes'] as String? ?? "",
    );

Map<String, dynamic> _$OrderedItemsToJson(_OrderedItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'soldPrice': instance.soldPrice,
      'listedPrice': instance.listedPrice,
      'service': instance.service,
      'item': instance.item,
      'scannedBags': instance.scannedBags,
      'driverNotes': instance.driverNotes,
    };

_ScannedBags _$ScannedBagsFromJson(Map<String, dynamic> json) => _ScannedBags(
      id: json['id'] as String? ?? "",
      orderServiceId: json['orderServiceId'] as String? ?? "",
      bagId: json['bagId'] as String? ?? "",
    );

Map<String, dynamic> _$ScannedBagsToJson(_ScannedBags instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderServiceId': instance.orderServiceId,
      'bagId': instance.bagId,
    };
