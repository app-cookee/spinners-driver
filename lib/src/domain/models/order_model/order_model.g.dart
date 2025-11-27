// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
      orderList: (json['data'] as List<dynamic>?)
              ?.map((e) => OrderResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'data': instance.orderList,
      'totalCount': instance.totalCount,
    };

_OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    _OrderResponse(
      id: json['id'] as String? ?? "",
      customerId: json['customerId'] as String? ?? "",
      storeId: json['storeId'] as String? ?? "",
      orderedFrom: json['orderedFrom'] as String? ?? "",
      customerNote: json['customerNote'] == null
          ? null
          : CustomerNote.fromJson(json['customerNote'] as Map<String, dynamic>),
      expressDelivery: json['expressDelivery'] as bool? ?? false,
      type: json['type'] as String? ?? "",
      status: json['status'] as String? ?? "",
      refId: json['refId'] as String? ?? "",
      pickupSlotId: json['pickupSlotId'] as String? ?? "",
      deliverySlotId: json['deliverySlotId'] as String? ?? "",
      selectedAddressId: json['selectedAddressId'] as String? ?? "",
      expressService: json['expressService'] as bool? ?? false,
      pickupAt: json['pickupAt'] as String? ?? "",
      deliveryAt: json['deliveryAt'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      totalAmount: json['totalAmount'] as String? ?? "",
      discount: json['discount'] as String? ?? "",
      paidAmount: json['paidAmount'] as String? ?? "",
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      orderedServices: (json['orderedServices'] as List<dynamic>?)
              ?.map((e) => OrderedServices.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedAddress: json['selectedAddress'] == null
          ? null
          : SelectedAddress.fromJson(
              json['selectedAddress'] as Map<String, dynamic>),
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
      pickupSlot: json['pickupSlot'] == null
          ? null
          : TimeSlot.fromJson(json['pickupSlot'] as Map<String, dynamic>),
      deliverySlot: json['deliverySlot'] == null
          ? null
          : TimeSlot.fromJson(json['deliverySlot'] as Map<String, dynamic>),
      statusHistory: (json['statusHistory'] as List<dynamic>?)
              ?.map((e) => OrderStatus.fromJson(e as Map<String, dynamic>))
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
      vats: json['vats'] == null
          ? null
          : VatDetail.fromJson(json['vats'] as Map<String, dynamic>),
      expressPercentage: json['expressPercentage'] as String? ?? "",
      assignedPickupDriverId: json['assignedPickupDriverId'] as String?,
      assignedDeliveryDriverId: json['assignedDeliveryDriverId'] as String?,
    );

Map<String, dynamic> _$OrderResponseToJson(_OrderResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'storeId': instance.storeId,
      'orderedFrom': instance.orderedFrom,
      'customerNote': instance.customerNote,
      'expressDelivery': instance.expressDelivery,
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
      'customer': instance.customer,
      'orderedServices': instance.orderedServices,
      'selectedAddress': instance.selectedAddress,
      'store': instance.store,
      'pickupSlot': instance.pickupSlot,
      'deliverySlot': instance.deliverySlot,
      'statusHistory': instance.statusHistory,
      'promoUsages': instance.promoUsages,
      'payment': instance.payment,
      'additionalCharges': instance.additionalCharges,
      'vats': instance.vats,
      'expressPercentage': instance.expressPercentage,
      'assignedPickupDriverId': instance.assignedPickupDriverId,
      'assignedDeliveryDriverId': instance.assignedDeliveryDriverId,
    };

_VatDetail _$VatDetailFromJson(Map<String, dynamic> json) => _VatDetail(
      vatAmount: json['vatAmount'] as String? ?? "",
      orderId: json['orderId'] as String? ?? "",
      vatRate: json['vatRate'] as String? ?? "",
      id: json['id'] as String? ?? "",
    );

Map<String, dynamic> _$VatDetailToJson(_VatDetail instance) =>
    <String, dynamic>{
      'vatAmount': instance.vatAmount,
      'orderId': instance.orderId,
      'vatRate': instance.vatRate,
      'id': instance.id,
    };

_OrderStatus _$OrderStatusFromJson(Map<String, dynamic> json) => _OrderStatus(
      status: json['status'] as String? ?? "",
      orderId: json['orderId'] as String? ?? "",
      changedAt: json['changedAt'] as String? ?? "",
      id: json['id'] as String? ?? "",
    );

Map<String, dynamic> _$OrderStatusToJson(_OrderStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'orderId': instance.orderId,
      'changedAt': instance.changedAt,
      'id': instance.id,
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

_AdditionalCharges _$AdditionalChargesFromJson(Map<String, dynamic> json) =>
    _AdditionalCharges(
      amount: json['amount'] as String? ?? "",
      type: json['type'] as String? ?? "",
      id: json['id'] as String? ?? "",
      orderId: json['orderId'] as String? ?? "",
    );

Map<String, dynamic> _$AdditionalChargesToJson(_AdditionalCharges instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
      'id': instance.id,
      'orderId': instance.orderId,
    };

_PromoItem _$PromoItemFromJson(Map<String, dynamic> json) => _PromoItem(
      amount: json['amount'] as String? ?? "",
      promoId: json['promoId'] as String? ?? "",
      promoCode: json['PromoCode'] == null
          ? null
          : PromoCode.fromJson(json['PromoCode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PromoItemToJson(_PromoItem instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'promoId': instance.promoId,
      'PromoCode': instance.promoCode,
    };

_PromoCode _$PromoCodeFromJson(Map<String, dynamic> json) => _PromoCode(
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$PromoCodeToJson(_PromoCode instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_Customer _$CustomerFromJson(Map<String, dynamic> json) => _Customer(
      id: json['id'] as String? ?? "",
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerToJson(_Customer instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      firstName: json['firstName'] as String? ?? "",
      lastName: json['lastName'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
    };

_OrderedServices _$OrderedServicesFromJson(Map<String, dynamic> json) =>
    _OrderedServices(
      id: json['id'] as String? ?? "",
      service: json['service'] == null
          ? null
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      item: (json['items'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OrderedServicesToJson(_OrderedServices instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service': instance.service,
      'items': instance.item,
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
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
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
      'category': instance.category,
    };

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      service: json['service'] == null
          ? null
          : ServiceInfo.fromJson(json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'service': instance.service,
    };

_ServiceInfo _$ServiceInfoFromJson(Map<String, dynamic> json) => _ServiceInfo(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$ServiceInfoToJson(_ServiceInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_SelectedAddress _$SelectedAddressFromJson(Map<String, dynamic> json) =>
    _SelectedAddress(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      place: json['place'] as String? ?? "",
      houseNumber: json['houseNumber'] as String? ?? "",
      latitude: json['latitude'] as String? ?? "",
      longitude: json['longitude'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      isDefault: json['isDefault'] as bool? ?? false,
      customerId: json['customerId'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
    );

Map<String, dynamic> _$SelectedAddressToJson(_SelectedAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'place': instance.place,
      'houseNumber': instance.houseNumber,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'deleted': instance.deleted,
      'isDefault': instance.isDefault,
      'customerId': instance.customerId,
      'createdAt': instance.createdAt,
    };

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
      contactNumber: json['contactNumber'] as String? ?? "",
    );

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
      'contactNumber': instance.contactNumber,
    };

_TimeSlot _$TimeSlotFromJson(Map<String, dynamic> json) => _TimeSlot(
      id: json['id'] as String? ?? "",
      from: json['from'] as String? ?? "",
      to: json['to'] as String? ?? "",
      day: json['day'] as String? ?? "",
    );

Map<String, dynamic> _$TimeSlotToJson(_TimeSlot instance) => <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'day': instance.day,
    };

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
      method: json['method'] as String? ?? "",
      walletTransaction: json['walletTransaction'] == null
          ? null
          : WalletItem.fromJson(
              json['walletTransaction'] as Map<String, dynamic>),
      status: json['status'] as String? ?? "",
      amount: json['amount'] as String? ?? "",
    );

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
      'method': instance.method,
      'walletTransaction': instance.walletTransaction,
      'status': instance.status,
      'amount': instance.amount,
    };

_WalletItem _$WalletItemFromJson(Map<String, dynamic> json) => _WalletItem(
      id: json['id'] as String? ?? "",
      walletId: json['walletId'] as String? ?? "",
      description: json['description'] as String? ?? "",
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      type: json['type'] as String? ?? "",
    );

Map<String, dynamic> _$WalletItemToJson(_WalletItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'walletId': instance.walletId,
      'description': instance.description,
      'amount': instance.amount,
      'type': instance.type,
    };
