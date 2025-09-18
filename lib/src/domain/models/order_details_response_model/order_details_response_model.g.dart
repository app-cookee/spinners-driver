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
      customerNote: json['customerNote'] == null
          ? null
          : CustomerNote.fromJson(json['customerNote'] as Map<String, dynamic>),
      type: json['type'] as String? ?? '',
      status: json['status'] as String? ?? '',
      refId: json['refId'] as String? ?? '',
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
      driverNote: json['driverNote'] == null
          ? null
          : DriverNote.fromJson(json['driverNote'] as Map<String, dynamic>),
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
      orderedServices: (json['orderedServices'] as List<dynamic>?)
              ?.map((e) => OrderedServices.fromJson(e as Map<String, dynamic>))
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
      'driverNote': instance.driverNote,
      'customer': instance.customer,
      'statusHistory': instance.statusHistory,
      'selectedAddress': instance.selectedAddress,
      'pickupSlot': instance.pickupSlot,
      'deliverySlot': instance.deliverySlot,
      'orderedServices': instance.orderedServices,
      'promoUsages': instance.promoUsages,
      'payment': instance.payment,
      'additionalCharges': instance.additionalCharges,
    };

_DriverNote _$DriverNoteFromJson(Map<String, dynamic> json) => _DriverNote(
      note: json['note'] as String? ?? "",
      handledAt: json['handledAt'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      id: json['id'] as String? ?? "",
      actionTaken: json['actionTaken'] as String? ?? "",
    );

Map<String, dynamic> _$DriverNoteToJson(_DriverNote instance) =>
    <String, dynamic>{
      'note': instance.note,
      'handledAt': instance.handledAt,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'actionTaken': instance.actionTaken,
    };

_CustomerNote _$CustomerNoteFromJson(Map<String, dynamic> json) =>
    _CustomerNote(
      note: json['note'] as String? ?? "",
      handledAt: json['handledAt'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      id: json['id'] as String? ?? "",
      actionTaken: json['actionTaken'] as String? ?? "",
    );

Map<String, dynamic> _$CustomerNoteToJson(_CustomerNote instance) =>
    <String, dynamic>{
      'note': instance.note,
      'handledAt': instance.handledAt,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'actionTaken': instance.actionTaken,
    };

_OrderedServices _$OrderedServicesFromJson(Map<String, dynamic> json) =>
    _OrderedServices(
      id: json['id'] as String? ?? "",
      service: json['service'] == null
          ? const Service()
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      item: (json['items'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bags: (json['bags'] as List<dynamic>?)
              ?.map((e) => ScannedBags.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OrderedServicesToJson(_OrderedServices instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service': instance.service,
      'items': instance.item,
      'bags': instance.bags,
    };

_Item _$ItemFromJson(Map<String, dynamic> json) => _Item(
      id: json['id'] as String? ?? "",
      orderedServiceId: json['orderedServiceId'] as String? ?? "",
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      itemId: json['itemId'] as String? ?? "",
      soldPrice: json['soldPrice'] as String? ?? "",
      listedPrice: json['listedPrice'] as String? ?? "",
      item: json['item'] == null
          ? null
          : ItemDetails.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
      'id': instance.id,
      'orderedServiceId': instance.orderedServiceId,
      'quantity': instance.quantity,
      'itemId': instance.itemId,
      'soldPrice': instance.soldPrice,
      'listedPrice': instance.listedPrice,
      'item': instance.item,
    };

_ItemDetails _$ItemDetailsFromJson(Map<String, dynamic> json) => _ItemDetails(
      id: json['id'] as String? ?? "",
      categoryId: json['categoryId'] as String? ?? "",
      name: json['name'] as String? ?? "",
      salePrice: json['salePrice'] as String? ?? "",
      listingPrice: json['listingPrice'] as String? ?? "",
      active: json['active'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? "",
    );

Map<String, dynamic> _$ItemDetailsToJson(_ItemDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'salePrice': instance.salePrice,
      'listingPrice': instance.listingPrice,
      'active': instance.active,
      'deleted': instance.deleted,
      'sortOrder': instance.sortOrder,
      'createdAt': instance.createdAt,
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

_Service _$ServiceFromJson(Map<String, dynamic> json) => _Service(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      tagLine: json['tagLine'] as String? ?? "",
      color: json['color'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      active: json['active'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? "",
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ServiceToJson(_Service instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tagLine': instance.tagLine,
      'color': instance.color,
      'icon': instance.icon,
      'active': instance.active,
      'deleted': instance.deleted,
      'createdAt': instance.createdAt,
      'sortOrder': instance.sortOrder,
    };
