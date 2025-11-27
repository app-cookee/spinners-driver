// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderModel {
  @JsonKey(name: 'data')
  List<OrderResponse> get orderList;
  @JsonKey(name: 'totalCount')
  int get totalCount;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<OrderModel> get copyWith =>
      _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderModel &&
            const DeepCollectionEquality().equals(other.orderList, orderList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(orderList), totalCount);

  @override
  String toString() {
    return 'OrderModel(orderList: $orderList, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) _then) =
      _$OrderModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<OrderResponse> orderList,
      @JsonKey(name: 'totalCount') int totalCount});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? totalCount = null,
  }) {
    return _then(_self.copyWith(
      orderList: null == orderList
          ? _self.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>,
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'data') List<OrderResponse> orderList,
            @JsonKey(name: 'totalCount') int totalCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
        return $default(_that.orderList, _that.totalCount);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'data') List<OrderResponse> orderList,
            @JsonKey(name: 'totalCount') int totalCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel():
        return $default(_that.orderList, _that.totalCount);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'data') List<OrderResponse> orderList,
            @JsonKey(name: 'totalCount') int totalCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
        return $default(_that.orderList, _that.totalCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderModel implements OrderModel {
  const _OrderModel(
      {@JsonKey(name: 'data') final List<OrderResponse> orderList = const [],
      @JsonKey(name: 'totalCount') this.totalCount = 0})
      : _orderList = orderList;
  factory _OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  final List<OrderResponse> _orderList;
  @override
  @JsonKey(name: 'data')
  List<OrderResponse> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  @JsonKey(name: 'totalCount')
  final int totalCount;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderModel &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderList), totalCount);

  @override
  String toString() {
    return 'OrderModel(orderList: $orderList, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(
          _OrderModel value, $Res Function(_OrderModel) _then) =
      __$OrderModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<OrderResponse> orderList,
      @JsonKey(name: 'totalCount') int totalCount});
}

/// @nodoc
class __$OrderModelCopyWithImpl<$Res> implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderList = null,
    Object? totalCount = null,
  }) {
    return _then(_OrderModel(
      orderList: null == orderList
          ? _self._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>,
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$OrderResponse {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'customerId')
  String get customerId;
  @JsonKey(name: 'storeId')
  String get storeId;
  @JsonKey(name: 'orderedFrom')
  String get orderedFrom;
  @JsonKey(name: 'customerNote')
  CustomerNote? get customerNote;
  @JsonKey(name: 'expressDelivery')
  bool get expressDelivery;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'refId')
  String get refId;
  @JsonKey(name: 'pickupSlotId')
  String get pickupSlotId;
  @JsonKey(name: 'deliverySlotId')
  String get deliverySlotId;
  @JsonKey(name: 'selectedAddressId')
  String get selectedAddressId;
  @JsonKey(name: 'expressService')
  bool get expressService;
  @JsonKey(name: 'pickupAt')
  String get pickupAt;
  @JsonKey(name: 'deliveryAt')
  String get deliveryAt;
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @JsonKey(name: 'totalAmount')
  String get totalAmount;
  @JsonKey(name: 'discount')
  String get discount;
  @JsonKey(name: 'paidAmount')
  String get paidAmount;
  @JsonKey(name: 'customer')
  Customer? get customer;
  @JsonKey(name: 'orderedServices')
  List<OrderedServices> get orderedServices;
  @JsonKey(name: 'selectedAddress')
  SelectedAddress? get selectedAddress;
  @JsonKey(name: 'store')
  Store? get store;
  @JsonKey(name: 'pickupSlot')
  TimeSlot? get pickupSlot;
  @JsonKey(name: 'deliverySlot')
  TimeSlot? get deliverySlot;
  @JsonKey(name: 'statusHistory')
  List<OrderStatus> get statusHistory;
  @JsonKey(name: 'promoUsages')
  List<PromoItem> get promoUsages;
  @JsonKey(name: 'payment')
  List<Payment> get payment;
  @JsonKey(name: 'additionalCharges')
  List<AdditionalCharges> get additionalCharges;
  @JsonKey(name: 'vats')
  VatDetail? get vats;
  @JsonKey(name: 'expressPercentage')
  String get expressPercentage;
  @JsonKey(name: 'assignedPickupDriverId')
  String? get assignedPickupDriverId;
  @JsonKey(name: 'assignedDeliveryDriverId')
  String? get assignedDeliveryDriverId;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      _$OrderResponseCopyWithImpl<OrderResponse>(
          this as OrderResponse, _$identity);

  /// Serializes this OrderResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.orderedFrom, orderedFrom) ||
                other.orderedFrom == orderedFrom) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
            (identical(other.expressDelivery, expressDelivery) ||
                other.expressDelivery == expressDelivery) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.pickupSlotId, pickupSlotId) ||
                other.pickupSlotId == pickupSlotId) &&
            (identical(other.deliverySlotId, deliverySlotId) ||
                other.deliverySlotId == deliverySlotId) &&
            (identical(other.selectedAddressId, selectedAddressId) ||
                other.selectedAddressId == selectedAddressId) &&
            (identical(other.expressService, expressService) ||
                other.expressService == expressService) &&
            (identical(other.pickupAt, pickupAt) ||
                other.pickupAt == pickupAt) &&
            (identical(other.deliveryAt, deliveryAt) ||
                other.deliveryAt == deliveryAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other.orderedServices, orderedServices) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.pickupSlot, pickupSlot) ||
                other.pickupSlot == pickupSlot) &&
            (identical(other.deliverySlot, deliverySlot) ||
                other.deliverySlot == deliverySlot) &&
            const DeepCollectionEquality()
                .equals(other.statusHistory, statusHistory) &&
            const DeepCollectionEquality()
                .equals(other.promoUsages, promoUsages) &&
            const DeepCollectionEquality().equals(other.payment, payment) &&
            const DeepCollectionEquality()
                .equals(other.additionalCharges, additionalCharges) &&
            (identical(other.vats, vats) || other.vats == vats) &&
            (identical(other.expressPercentage, expressPercentage) ||
                other.expressPercentage == expressPercentage) &&
            (identical(other.assignedPickupDriverId, assignedPickupDriverId) ||
                other.assignedPickupDriverId == assignedPickupDriverId) &&
            (identical(
                    other.assignedDeliveryDriverId, assignedDeliveryDriverId) ||
                other.assignedDeliveryDriverId == assignedDeliveryDriverId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customerId,
        storeId,
        orderedFrom,
        customerNote,
        expressDelivery,
        type,
        status,
        refId,
        pickupSlotId,
        deliverySlotId,
        selectedAddressId,
        expressService,
        pickupAt,
        deliveryAt,
        createdAt,
        totalAmount,
        discount,
        paidAmount,
        customer,
        const DeepCollectionEquality().hash(orderedServices),
        selectedAddress,
        store,
        pickupSlot,
        deliverySlot,
        const DeepCollectionEquality().hash(statusHistory),
        const DeepCollectionEquality().hash(promoUsages),
        const DeepCollectionEquality().hash(payment),
        const DeepCollectionEquality().hash(additionalCharges),
        vats,
        expressPercentage,
        assignedPickupDriverId,
        assignedDeliveryDriverId
      ]);

  @override
  String toString() {
    return 'OrderResponse(id: $id, customerId: $customerId, storeId: $storeId, orderedFrom: $orderedFrom, customerNote: $customerNote, expressDelivery: $expressDelivery, type: $type, status: $status, refId: $refId, pickupSlotId: $pickupSlotId, deliverySlotId: $deliverySlotId, selectedAddressId: $selectedAddressId, expressService: $expressService, pickupAt: $pickupAt, deliveryAt: $deliveryAt, createdAt: $createdAt, totalAmount: $totalAmount, discount: $discount, paidAmount: $paidAmount, customer: $customer, orderedServices: $orderedServices, selectedAddress: $selectedAddress, store: $store, pickupSlot: $pickupSlot, deliverySlot: $deliverySlot, statusHistory: $statusHistory, promoUsages: $promoUsages, payment: $payment, additionalCharges: $additionalCharges, vats: $vats, expressPercentage: $expressPercentage, assignedPickupDriverId: $assignedPickupDriverId, assignedDeliveryDriverId: $assignedDeliveryDriverId)';
  }
}

/// @nodoc
abstract mixin class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) _then) =
      _$OrderResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'customerId') String customerId,
      @JsonKey(name: 'storeId') String storeId,
      @JsonKey(name: 'orderedFrom') String orderedFrom,
      @JsonKey(name: 'customerNote') CustomerNote? customerNote,
      @JsonKey(name: 'expressDelivery') bool expressDelivery,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'refId') String refId,
      @JsonKey(name: 'pickupSlotId') String pickupSlotId,
      @JsonKey(name: 'deliverySlotId') String deliverySlotId,
      @JsonKey(name: 'selectedAddressId') String selectedAddressId,
      @JsonKey(name: 'expressService') bool expressService,
      @JsonKey(name: 'pickupAt') String pickupAt,
      @JsonKey(name: 'deliveryAt') String deliveryAt,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'totalAmount') String totalAmount,
      @JsonKey(name: 'discount') String discount,
      @JsonKey(name: 'paidAmount') String paidAmount,
      @JsonKey(name: 'customer') Customer? customer,
      @JsonKey(name: 'orderedServices') List<OrderedServices> orderedServices,
      @JsonKey(name: 'selectedAddress') SelectedAddress? selectedAddress,
      @JsonKey(name: 'store') Store? store,
      @JsonKey(name: 'pickupSlot') TimeSlot? pickupSlot,
      @JsonKey(name: 'deliverySlot') TimeSlot? deliverySlot,
      @JsonKey(name: 'statusHistory') List<OrderStatus> statusHistory,
      @JsonKey(name: 'promoUsages') List<PromoItem> promoUsages,
      @JsonKey(name: 'payment') List<Payment> payment,
      @JsonKey(name: 'additionalCharges')
      List<AdditionalCharges> additionalCharges,
      @JsonKey(name: 'vats') VatDetail? vats,
      @JsonKey(name: 'expressPercentage') String expressPercentage,
      @JsonKey(name: 'assignedPickupDriverId') String? assignedPickupDriverId,
      @JsonKey(name: 'assignedDeliveryDriverId')
      String? assignedDeliveryDriverId});

  $CustomerNoteCopyWith<$Res>? get customerNote;
  $CustomerCopyWith<$Res>? get customer;
  $SelectedAddressCopyWith<$Res>? get selectedAddress;
  $StoreCopyWith<$Res>? get store;
  $TimeSlotCopyWith<$Res>? get pickupSlot;
  $TimeSlotCopyWith<$Res>? get deliverySlot;
  $VatDetailCopyWith<$Res>? get vats;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._self, this._then);

  final OrderResponse _self;
  final $Res Function(OrderResponse) _then;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? storeId = null,
    Object? orderedFrom = null,
    Object? customerNote = freezed,
    Object? expressDelivery = null,
    Object? type = null,
    Object? status = null,
    Object? refId = null,
    Object? pickupSlotId = null,
    Object? deliverySlotId = null,
    Object? selectedAddressId = null,
    Object? expressService = null,
    Object? pickupAt = null,
    Object? deliveryAt = null,
    Object? createdAt = null,
    Object? totalAmount = null,
    Object? discount = null,
    Object? paidAmount = null,
    Object? customer = freezed,
    Object? orderedServices = null,
    Object? selectedAddress = freezed,
    Object? store = freezed,
    Object? pickupSlot = freezed,
    Object? deliverySlot = freezed,
    Object? statusHistory = null,
    Object? promoUsages = null,
    Object? payment = null,
    Object? additionalCharges = null,
    Object? vats = freezed,
    Object? expressPercentage = null,
    Object? assignedPickupDriverId = freezed,
    Object? assignedDeliveryDriverId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedFrom: null == orderedFrom
          ? _self.orderedFrom
          : orderedFrom // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: freezed == customerNote
          ? _self.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as CustomerNote?,
      expressDelivery: null == expressDelivery
          ? _self.expressDelivery
          : expressDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _self.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      pickupSlotId: null == pickupSlotId
          ? _self.pickupSlotId
          : pickupSlotId // ignore: cast_nullable_to_non_nullable
              as String,
      deliverySlotId: null == deliverySlotId
          ? _self.deliverySlotId
          : deliverySlotId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedAddressId: null == selectedAddressId
          ? _self.selectedAddressId
          : selectedAddressId // ignore: cast_nullable_to_non_nullable
              as String,
      expressService: null == expressService
          ? _self.expressService
          : expressService // ignore: cast_nullable_to_non_nullable
              as bool,
      pickupAt: null == pickupAt
          ? _self.pickupAt
          : pickupAt // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAt: null == deliveryAt
          ? _self.deliveryAt
          : deliveryAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmount: null == paidAmount
          ? _self.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String,
      customer: freezed == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      orderedServices: null == orderedServices
          ? _self.orderedServices
          : orderedServices // ignore: cast_nullable_to_non_nullable
              as List<OrderedServices>,
      selectedAddress: freezed == selectedAddress
          ? _self.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as SelectedAddress?,
      store: freezed == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      pickupSlot: freezed == pickupSlot
          ? _self.pickupSlot
          : pickupSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      deliverySlot: freezed == deliverySlot
          ? _self.deliverySlot
          : deliverySlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      statusHistory: null == statusHistory
          ? _self.statusHistory
          : statusHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
      promoUsages: null == promoUsages
          ? _self.promoUsages
          : promoUsages // ignore: cast_nullable_to_non_nullable
              as List<PromoItem>,
      payment: null == payment
          ? _self.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      additionalCharges: null == additionalCharges
          ? _self.additionalCharges
          : additionalCharges // ignore: cast_nullable_to_non_nullable
              as List<AdditionalCharges>,
      vats: freezed == vats
          ? _self.vats
          : vats // ignore: cast_nullable_to_non_nullable
              as VatDetail?,
      expressPercentage: null == expressPercentage
          ? _self.expressPercentage
          : expressPercentage // ignore: cast_nullable_to_non_nullable
              as String,
      assignedPickupDriverId: freezed == assignedPickupDriverId
          ? _self.assignedPickupDriverId
          : assignedPickupDriverId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedDeliveryDriverId: freezed == assignedDeliveryDriverId
          ? _self.assignedDeliveryDriverId
          : assignedDeliveryDriverId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerNoteCopyWith<$Res>? get customerNote {
    if (_self.customerNote == null) {
      return null;
    }

    return $CustomerNoteCopyWith<$Res>(_self.customerNote!, (value) {
      return _then(_self.copyWith(customerNote: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_self.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_self.customer!, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedAddressCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
      return null;
    }

    return $SelectedAddressCopyWith<$Res>(_self.selectedAddress!, (value) {
      return _then(_self.copyWith(selectedAddress: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_self.store!, (value) {
      return _then(_self.copyWith(store: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res>? get pickupSlot {
    if (_self.pickupSlot == null) {
      return null;
    }

    return $TimeSlotCopyWith<$Res>(_self.pickupSlot!, (value) {
      return _then(_self.copyWith(pickupSlot: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res>? get deliverySlot {
    if (_self.deliverySlot == null) {
      return null;
    }

    return $TimeSlotCopyWith<$Res>(_self.deliverySlot!, (value) {
      return _then(_self.copyWith(deliverySlot: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VatDetailCopyWith<$Res>? get vats {
    if (_self.vats == null) {
      return null;
    }

    return $VatDetailCopyWith<$Res>(_self.vats!, (value) {
      return _then(_self.copyWith(vats: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderResponse].
extension OrderResponsePatterns on OrderResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'customerId') String customerId,
            @JsonKey(name: 'storeId') String storeId,
            @JsonKey(name: 'orderedFrom') String orderedFrom,
            @JsonKey(name: 'customerNote') CustomerNote? customerNote,
            @JsonKey(name: 'expressDelivery') bool expressDelivery,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'refId') String refId,
            @JsonKey(name: 'pickupSlotId') String pickupSlotId,
            @JsonKey(name: 'deliverySlotId') String deliverySlotId,
            @JsonKey(name: 'selectedAddressId') String selectedAddressId,
            @JsonKey(name: 'expressService') bool expressService,
            @JsonKey(name: 'pickupAt') String pickupAt,
            @JsonKey(name: 'deliveryAt') String deliveryAt,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'totalAmount') String totalAmount,
            @JsonKey(name: 'discount') String discount,
            @JsonKey(name: 'paidAmount') String paidAmount,
            @JsonKey(name: 'customer') Customer? customer,
            @JsonKey(name: 'orderedServices')
            List<OrderedServices> orderedServices,
            @JsonKey(name: 'selectedAddress') SelectedAddress? selectedAddress,
            @JsonKey(name: 'store') Store? store,
            @JsonKey(name: 'pickupSlot') TimeSlot? pickupSlot,
            @JsonKey(name: 'deliverySlot') TimeSlot? deliverySlot,
            @JsonKey(name: 'statusHistory') List<OrderStatus> statusHistory,
            @JsonKey(name: 'promoUsages') List<PromoItem> promoUsages,
            @JsonKey(name: 'payment') List<Payment> payment,
            @JsonKey(name: 'additionalCharges')
            List<AdditionalCharges> additionalCharges,
            @JsonKey(name: 'vats') VatDetail? vats,
            @JsonKey(name: 'expressPercentage') String expressPercentage,
            @JsonKey(name: 'assignedPickupDriverId')
            String? assignedPickupDriverId,
            @JsonKey(name: 'assignedDeliveryDriverId')
            String? assignedDeliveryDriverId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderResponse() when $default != null:
        return $default(
            _that.id,
            _that.customerId,
            _that.storeId,
            _that.orderedFrom,
            _that.customerNote,
            _that.expressDelivery,
            _that.type,
            _that.status,
            _that.refId,
            _that.pickupSlotId,
            _that.deliverySlotId,
            _that.selectedAddressId,
            _that.expressService,
            _that.pickupAt,
            _that.deliveryAt,
            _that.createdAt,
            _that.totalAmount,
            _that.discount,
            _that.paidAmount,
            _that.customer,
            _that.orderedServices,
            _that.selectedAddress,
            _that.store,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.statusHistory,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges,
            _that.vats,
            _that.expressPercentage,
            _that.assignedPickupDriverId,
            _that.assignedDeliveryDriverId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'customerId') String customerId,
            @JsonKey(name: 'storeId') String storeId,
            @JsonKey(name: 'orderedFrom') String orderedFrom,
            @JsonKey(name: 'customerNote') CustomerNote? customerNote,
            @JsonKey(name: 'expressDelivery') bool expressDelivery,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'refId') String refId,
            @JsonKey(name: 'pickupSlotId') String pickupSlotId,
            @JsonKey(name: 'deliverySlotId') String deliverySlotId,
            @JsonKey(name: 'selectedAddressId') String selectedAddressId,
            @JsonKey(name: 'expressService') bool expressService,
            @JsonKey(name: 'pickupAt') String pickupAt,
            @JsonKey(name: 'deliveryAt') String deliveryAt,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'totalAmount') String totalAmount,
            @JsonKey(name: 'discount') String discount,
            @JsonKey(name: 'paidAmount') String paidAmount,
            @JsonKey(name: 'customer') Customer? customer,
            @JsonKey(name: 'orderedServices')
            List<OrderedServices> orderedServices,
            @JsonKey(name: 'selectedAddress') SelectedAddress? selectedAddress,
            @JsonKey(name: 'store') Store? store,
            @JsonKey(name: 'pickupSlot') TimeSlot? pickupSlot,
            @JsonKey(name: 'deliverySlot') TimeSlot? deliverySlot,
            @JsonKey(name: 'statusHistory') List<OrderStatus> statusHistory,
            @JsonKey(name: 'promoUsages') List<PromoItem> promoUsages,
            @JsonKey(name: 'payment') List<Payment> payment,
            @JsonKey(name: 'additionalCharges')
            List<AdditionalCharges> additionalCharges,
            @JsonKey(name: 'vats') VatDetail? vats,
            @JsonKey(name: 'expressPercentage') String expressPercentage,
            @JsonKey(name: 'assignedPickupDriverId')
            String? assignedPickupDriverId,
            @JsonKey(name: 'assignedDeliveryDriverId')
            String? assignedDeliveryDriverId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderResponse():
        return $default(
            _that.id,
            _that.customerId,
            _that.storeId,
            _that.orderedFrom,
            _that.customerNote,
            _that.expressDelivery,
            _that.type,
            _that.status,
            _that.refId,
            _that.pickupSlotId,
            _that.deliverySlotId,
            _that.selectedAddressId,
            _that.expressService,
            _that.pickupAt,
            _that.deliveryAt,
            _that.createdAt,
            _that.totalAmount,
            _that.discount,
            _that.paidAmount,
            _that.customer,
            _that.orderedServices,
            _that.selectedAddress,
            _that.store,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.statusHistory,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges,
            _that.vats,
            _that.expressPercentage,
            _that.assignedPickupDriverId,
            _that.assignedDeliveryDriverId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'customerId') String customerId,
            @JsonKey(name: 'storeId') String storeId,
            @JsonKey(name: 'orderedFrom') String orderedFrom,
            @JsonKey(name: 'customerNote') CustomerNote? customerNote,
            @JsonKey(name: 'expressDelivery') bool expressDelivery,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'refId') String refId,
            @JsonKey(name: 'pickupSlotId') String pickupSlotId,
            @JsonKey(name: 'deliverySlotId') String deliverySlotId,
            @JsonKey(name: 'selectedAddressId') String selectedAddressId,
            @JsonKey(name: 'expressService') bool expressService,
            @JsonKey(name: 'pickupAt') String pickupAt,
            @JsonKey(name: 'deliveryAt') String deliveryAt,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'totalAmount') String totalAmount,
            @JsonKey(name: 'discount') String discount,
            @JsonKey(name: 'paidAmount') String paidAmount,
            @JsonKey(name: 'customer') Customer? customer,
            @JsonKey(name: 'orderedServices')
            List<OrderedServices> orderedServices,
            @JsonKey(name: 'selectedAddress') SelectedAddress? selectedAddress,
            @JsonKey(name: 'store') Store? store,
            @JsonKey(name: 'pickupSlot') TimeSlot? pickupSlot,
            @JsonKey(name: 'deliverySlot') TimeSlot? deliverySlot,
            @JsonKey(name: 'statusHistory') List<OrderStatus> statusHistory,
            @JsonKey(name: 'promoUsages') List<PromoItem> promoUsages,
            @JsonKey(name: 'payment') List<Payment> payment,
            @JsonKey(name: 'additionalCharges')
            List<AdditionalCharges> additionalCharges,
            @JsonKey(name: 'vats') VatDetail? vats,
            @JsonKey(name: 'expressPercentage') String expressPercentage,
            @JsonKey(name: 'assignedPickupDriverId')
            String? assignedPickupDriverId,
            @JsonKey(name: 'assignedDeliveryDriverId')
            String? assignedDeliveryDriverId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderResponse() when $default != null:
        return $default(
            _that.id,
            _that.customerId,
            _that.storeId,
            _that.orderedFrom,
            _that.customerNote,
            _that.expressDelivery,
            _that.type,
            _that.status,
            _that.refId,
            _that.pickupSlotId,
            _that.deliverySlotId,
            _that.selectedAddressId,
            _that.expressService,
            _that.pickupAt,
            _that.deliveryAt,
            _that.createdAt,
            _that.totalAmount,
            _that.discount,
            _that.paidAmount,
            _that.customer,
            _that.orderedServices,
            _that.selectedAddress,
            _that.store,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.statusHistory,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges,
            _that.vats,
            _that.expressPercentage,
            _that.assignedPickupDriverId,
            _that.assignedDeliveryDriverId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderResponse implements OrderResponse {
  const _OrderResponse(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'customerId') this.customerId = "",
      @JsonKey(name: 'storeId') this.storeId = "",
      @JsonKey(name: 'orderedFrom') this.orderedFrom = "",
      @JsonKey(name: 'customerNote') this.customerNote,
      @JsonKey(name: 'expressDelivery') this.expressDelivery = false,
      @JsonKey(name: 'type') this.type = "",
      @JsonKey(name: 'status') this.status = "",
      @JsonKey(name: 'refId') this.refId = "",
      @JsonKey(name: 'pickupSlotId') this.pickupSlotId = "",
      @JsonKey(name: 'deliverySlotId') this.deliverySlotId = "",
      @JsonKey(name: 'selectedAddressId') this.selectedAddressId = "",
      @JsonKey(name: 'expressService') this.expressService = false,
      @JsonKey(name: 'pickupAt') this.pickupAt = "",
      @JsonKey(name: 'deliveryAt') this.deliveryAt = "",
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'totalAmount') this.totalAmount = "",
      @JsonKey(name: 'discount') this.discount = "",
      @JsonKey(name: 'paidAmount') this.paidAmount = "",
      @JsonKey(name: 'customer') this.customer,
      @JsonKey(name: 'orderedServices')
      final List<OrderedServices> orderedServices = const [],
      @JsonKey(name: 'selectedAddress') this.selectedAddress,
      @JsonKey(name: 'store') this.store,
      @JsonKey(name: 'pickupSlot') this.pickupSlot,
      @JsonKey(name: 'deliverySlot') this.deliverySlot,
      @JsonKey(name: 'statusHistory')
      final List<OrderStatus> statusHistory = const [],
      @JsonKey(name: 'promoUsages')
      final List<PromoItem> promoUsages = const [],
      @JsonKey(name: 'payment') final List<Payment> payment = const [],
      @JsonKey(name: 'additionalCharges')
      final List<AdditionalCharges> additionalCharges = const [],
      @JsonKey(name: 'vats') this.vats,
      @JsonKey(name: 'expressPercentage') this.expressPercentage = "",
      @JsonKey(name: 'assignedPickupDriverId') this.assignedPickupDriverId,
      @JsonKey(name: 'assignedDeliveryDriverId') this.assignedDeliveryDriverId})
      : _orderedServices = orderedServices,
        _statusHistory = statusHistory,
        _promoUsages = promoUsages,
        _payment = payment,
        _additionalCharges = additionalCharges;
  factory _OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'customerId')
  final String customerId;
  @override
  @JsonKey(name: 'storeId')
  final String storeId;
  @override
  @JsonKey(name: 'orderedFrom')
  final String orderedFrom;
  @override
  @JsonKey(name: 'customerNote')
  final CustomerNote? customerNote;
  @override
  @JsonKey(name: 'expressDelivery')
  final bool expressDelivery;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'refId')
  final String refId;
  @override
  @JsonKey(name: 'pickupSlotId')
  final String pickupSlotId;
  @override
  @JsonKey(name: 'deliverySlotId')
  final String deliverySlotId;
  @override
  @JsonKey(name: 'selectedAddressId')
  final String selectedAddressId;
  @override
  @JsonKey(name: 'expressService')
  final bool expressService;
  @override
  @JsonKey(name: 'pickupAt')
  final String pickupAt;
  @override
  @JsonKey(name: 'deliveryAt')
  final String deliveryAt;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'totalAmount')
  final String totalAmount;
  @override
  @JsonKey(name: 'discount')
  final String discount;
  @override
  @JsonKey(name: 'paidAmount')
  final String paidAmount;
  @override
  @JsonKey(name: 'customer')
  final Customer? customer;
  final List<OrderedServices> _orderedServices;
  @override
  @JsonKey(name: 'orderedServices')
  List<OrderedServices> get orderedServices {
    if (_orderedServices is EqualUnmodifiableListView) return _orderedServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderedServices);
  }

  @override
  @JsonKey(name: 'selectedAddress')
  final SelectedAddress? selectedAddress;
  @override
  @JsonKey(name: 'store')
  final Store? store;
  @override
  @JsonKey(name: 'pickupSlot')
  final TimeSlot? pickupSlot;
  @override
  @JsonKey(name: 'deliverySlot')
  final TimeSlot? deliverySlot;
  final List<OrderStatus> _statusHistory;
  @override
  @JsonKey(name: 'statusHistory')
  List<OrderStatus> get statusHistory {
    if (_statusHistory is EqualUnmodifiableListView) return _statusHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusHistory);
  }

  final List<PromoItem> _promoUsages;
  @override
  @JsonKey(name: 'promoUsages')
  List<PromoItem> get promoUsages {
    if (_promoUsages is EqualUnmodifiableListView) return _promoUsages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promoUsages);
  }

  final List<Payment> _payment;
  @override
  @JsonKey(name: 'payment')
  List<Payment> get payment {
    if (_payment is EqualUnmodifiableListView) return _payment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payment);
  }

  final List<AdditionalCharges> _additionalCharges;
  @override
  @JsonKey(name: 'additionalCharges')
  List<AdditionalCharges> get additionalCharges {
    if (_additionalCharges is EqualUnmodifiableListView)
      return _additionalCharges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalCharges);
  }

  @override
  @JsonKey(name: 'vats')
  final VatDetail? vats;
  @override
  @JsonKey(name: 'expressPercentage')
  final String expressPercentage;
  @override
  @JsonKey(name: 'assignedPickupDriverId')
  final String? assignedPickupDriverId;
  @override
  @JsonKey(name: 'assignedDeliveryDriverId')
  final String? assignedDeliveryDriverId;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderResponseCopyWith<_OrderResponse> get copyWith =>
      __$OrderResponseCopyWithImpl<_OrderResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.orderedFrom, orderedFrom) ||
                other.orderedFrom == orderedFrom) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
            (identical(other.expressDelivery, expressDelivery) ||
                other.expressDelivery == expressDelivery) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.pickupSlotId, pickupSlotId) ||
                other.pickupSlotId == pickupSlotId) &&
            (identical(other.deliverySlotId, deliverySlotId) ||
                other.deliverySlotId == deliverySlotId) &&
            (identical(other.selectedAddressId, selectedAddressId) ||
                other.selectedAddressId == selectedAddressId) &&
            (identical(other.expressService, expressService) ||
                other.expressService == expressService) &&
            (identical(other.pickupAt, pickupAt) ||
                other.pickupAt == pickupAt) &&
            (identical(other.deliveryAt, deliveryAt) ||
                other.deliveryAt == deliveryAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other._orderedServices, _orderedServices) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.pickupSlot, pickupSlot) ||
                other.pickupSlot == pickupSlot) &&
            (identical(other.deliverySlot, deliverySlot) ||
                other.deliverySlot == deliverySlot) &&
            const DeepCollectionEquality()
                .equals(other._statusHistory, _statusHistory) &&
            const DeepCollectionEquality()
                .equals(other._promoUsages, _promoUsages) &&
            const DeepCollectionEquality().equals(other._payment, _payment) &&
            const DeepCollectionEquality()
                .equals(other._additionalCharges, _additionalCharges) &&
            (identical(other.vats, vats) || other.vats == vats) &&
            (identical(other.expressPercentage, expressPercentage) ||
                other.expressPercentage == expressPercentage) &&
            (identical(other.assignedPickupDriverId, assignedPickupDriverId) ||
                other.assignedPickupDriverId == assignedPickupDriverId) &&
            (identical(
                    other.assignedDeliveryDriverId, assignedDeliveryDriverId) ||
                other.assignedDeliveryDriverId == assignedDeliveryDriverId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customerId,
        storeId,
        orderedFrom,
        customerNote,
        expressDelivery,
        type,
        status,
        refId,
        pickupSlotId,
        deliverySlotId,
        selectedAddressId,
        expressService,
        pickupAt,
        deliveryAt,
        createdAt,
        totalAmount,
        discount,
        paidAmount,
        customer,
        const DeepCollectionEquality().hash(_orderedServices),
        selectedAddress,
        store,
        pickupSlot,
        deliverySlot,
        const DeepCollectionEquality().hash(_statusHistory),
        const DeepCollectionEquality().hash(_promoUsages),
        const DeepCollectionEquality().hash(_payment),
        const DeepCollectionEquality().hash(_additionalCharges),
        vats,
        expressPercentage,
        assignedPickupDriverId,
        assignedDeliveryDriverId
      ]);

  @override
  String toString() {
    return 'OrderResponse(id: $id, customerId: $customerId, storeId: $storeId, orderedFrom: $orderedFrom, customerNote: $customerNote, expressDelivery: $expressDelivery, type: $type, status: $status, refId: $refId, pickupSlotId: $pickupSlotId, deliverySlotId: $deliverySlotId, selectedAddressId: $selectedAddressId, expressService: $expressService, pickupAt: $pickupAt, deliveryAt: $deliveryAt, createdAt: $createdAt, totalAmount: $totalAmount, discount: $discount, paidAmount: $paidAmount, customer: $customer, orderedServices: $orderedServices, selectedAddress: $selectedAddress, store: $store, pickupSlot: $pickupSlot, deliverySlot: $deliverySlot, statusHistory: $statusHistory, promoUsages: $promoUsages, payment: $payment, additionalCharges: $additionalCharges, vats: $vats, expressPercentage: $expressPercentage, assignedPickupDriverId: $assignedPickupDriverId, assignedDeliveryDriverId: $assignedDeliveryDriverId)';
  }
}

/// @nodoc
abstract mixin class _$OrderResponseCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$OrderResponseCopyWith(
          _OrderResponse value, $Res Function(_OrderResponse) _then) =
      __$OrderResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'customerId') String customerId,
      @JsonKey(name: 'storeId') String storeId,
      @JsonKey(name: 'orderedFrom') String orderedFrom,
      @JsonKey(name: 'customerNote') CustomerNote? customerNote,
      @JsonKey(name: 'expressDelivery') bool expressDelivery,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'refId') String refId,
      @JsonKey(name: 'pickupSlotId') String pickupSlotId,
      @JsonKey(name: 'deliverySlotId') String deliverySlotId,
      @JsonKey(name: 'selectedAddressId') String selectedAddressId,
      @JsonKey(name: 'expressService') bool expressService,
      @JsonKey(name: 'pickupAt') String pickupAt,
      @JsonKey(name: 'deliveryAt') String deliveryAt,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'totalAmount') String totalAmount,
      @JsonKey(name: 'discount') String discount,
      @JsonKey(name: 'paidAmount') String paidAmount,
      @JsonKey(name: 'customer') Customer? customer,
      @JsonKey(name: 'orderedServices') List<OrderedServices> orderedServices,
      @JsonKey(name: 'selectedAddress') SelectedAddress? selectedAddress,
      @JsonKey(name: 'store') Store? store,
      @JsonKey(name: 'pickupSlot') TimeSlot? pickupSlot,
      @JsonKey(name: 'deliverySlot') TimeSlot? deliverySlot,
      @JsonKey(name: 'statusHistory') List<OrderStatus> statusHistory,
      @JsonKey(name: 'promoUsages') List<PromoItem> promoUsages,
      @JsonKey(name: 'payment') List<Payment> payment,
      @JsonKey(name: 'additionalCharges')
      List<AdditionalCharges> additionalCharges,
      @JsonKey(name: 'vats') VatDetail? vats,
      @JsonKey(name: 'expressPercentage') String expressPercentage,
      @JsonKey(name: 'assignedPickupDriverId') String? assignedPickupDriverId,
      @JsonKey(name: 'assignedDeliveryDriverId')
      String? assignedDeliveryDriverId});

  @override
  $CustomerNoteCopyWith<$Res>? get customerNote;
  @override
  $CustomerCopyWith<$Res>? get customer;
  @override
  $SelectedAddressCopyWith<$Res>? get selectedAddress;
  @override
  $StoreCopyWith<$Res>? get store;
  @override
  $TimeSlotCopyWith<$Res>? get pickupSlot;
  @override
  $TimeSlotCopyWith<$Res>? get deliverySlot;
  @override
  $VatDetailCopyWith<$Res>? get vats;
}

/// @nodoc
class __$OrderResponseCopyWithImpl<$Res>
    implements _$OrderResponseCopyWith<$Res> {
  __$OrderResponseCopyWithImpl(this._self, this._then);

  final _OrderResponse _self;
  final $Res Function(_OrderResponse) _then;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? storeId = null,
    Object? orderedFrom = null,
    Object? customerNote = freezed,
    Object? expressDelivery = null,
    Object? type = null,
    Object? status = null,
    Object? refId = null,
    Object? pickupSlotId = null,
    Object? deliverySlotId = null,
    Object? selectedAddressId = null,
    Object? expressService = null,
    Object? pickupAt = null,
    Object? deliveryAt = null,
    Object? createdAt = null,
    Object? totalAmount = null,
    Object? discount = null,
    Object? paidAmount = null,
    Object? customer = freezed,
    Object? orderedServices = null,
    Object? selectedAddress = freezed,
    Object? store = freezed,
    Object? pickupSlot = freezed,
    Object? deliverySlot = freezed,
    Object? statusHistory = null,
    Object? promoUsages = null,
    Object? payment = null,
    Object? additionalCharges = null,
    Object? vats = freezed,
    Object? expressPercentage = null,
    Object? assignedPickupDriverId = freezed,
    Object? assignedDeliveryDriverId = freezed,
  }) {
    return _then(_OrderResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedFrom: null == orderedFrom
          ? _self.orderedFrom
          : orderedFrom // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: freezed == customerNote
          ? _self.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as CustomerNote?,
      expressDelivery: null == expressDelivery
          ? _self.expressDelivery
          : expressDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _self.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      pickupSlotId: null == pickupSlotId
          ? _self.pickupSlotId
          : pickupSlotId // ignore: cast_nullable_to_non_nullable
              as String,
      deliverySlotId: null == deliverySlotId
          ? _self.deliverySlotId
          : deliverySlotId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedAddressId: null == selectedAddressId
          ? _self.selectedAddressId
          : selectedAddressId // ignore: cast_nullable_to_non_nullable
              as String,
      expressService: null == expressService
          ? _self.expressService
          : expressService // ignore: cast_nullable_to_non_nullable
              as bool,
      pickupAt: null == pickupAt
          ? _self.pickupAt
          : pickupAt // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAt: null == deliveryAt
          ? _self.deliveryAt
          : deliveryAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmount: null == paidAmount
          ? _self.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String,
      customer: freezed == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      orderedServices: null == orderedServices
          ? _self._orderedServices
          : orderedServices // ignore: cast_nullable_to_non_nullable
              as List<OrderedServices>,
      selectedAddress: freezed == selectedAddress
          ? _self.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as SelectedAddress?,
      store: freezed == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      pickupSlot: freezed == pickupSlot
          ? _self.pickupSlot
          : pickupSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      deliverySlot: freezed == deliverySlot
          ? _self.deliverySlot
          : deliverySlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      statusHistory: null == statusHistory
          ? _self._statusHistory
          : statusHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
      promoUsages: null == promoUsages
          ? _self._promoUsages
          : promoUsages // ignore: cast_nullable_to_non_nullable
              as List<PromoItem>,
      payment: null == payment
          ? _self._payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      additionalCharges: null == additionalCharges
          ? _self._additionalCharges
          : additionalCharges // ignore: cast_nullable_to_non_nullable
              as List<AdditionalCharges>,
      vats: freezed == vats
          ? _self.vats
          : vats // ignore: cast_nullable_to_non_nullable
              as VatDetail?,
      expressPercentage: null == expressPercentage
          ? _self.expressPercentage
          : expressPercentage // ignore: cast_nullable_to_non_nullable
              as String,
      assignedPickupDriverId: freezed == assignedPickupDriverId
          ? _self.assignedPickupDriverId
          : assignedPickupDriverId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedDeliveryDriverId: freezed == assignedDeliveryDriverId
          ? _self.assignedDeliveryDriverId
          : assignedDeliveryDriverId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerNoteCopyWith<$Res>? get customerNote {
    if (_self.customerNote == null) {
      return null;
    }

    return $CustomerNoteCopyWith<$Res>(_self.customerNote!, (value) {
      return _then(_self.copyWith(customerNote: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_self.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_self.customer!, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedAddressCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
      return null;
    }

    return $SelectedAddressCopyWith<$Res>(_self.selectedAddress!, (value) {
      return _then(_self.copyWith(selectedAddress: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_self.store!, (value) {
      return _then(_self.copyWith(store: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res>? get pickupSlot {
    if (_self.pickupSlot == null) {
      return null;
    }

    return $TimeSlotCopyWith<$Res>(_self.pickupSlot!, (value) {
      return _then(_self.copyWith(pickupSlot: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res>? get deliverySlot {
    if (_self.deliverySlot == null) {
      return null;
    }

    return $TimeSlotCopyWith<$Res>(_self.deliverySlot!, (value) {
      return _then(_self.copyWith(deliverySlot: value));
    });
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VatDetailCopyWith<$Res>? get vats {
    if (_self.vats == null) {
      return null;
    }

    return $VatDetailCopyWith<$Res>(_self.vats!, (value) {
      return _then(_self.copyWith(vats: value));
    });
  }
}

/// @nodoc
mixin _$VatDetail {
  @JsonKey(name: 'vatAmount')
  String get vatAmount;
  @JsonKey(name: 'orderId')
  String get orderId;
  @JsonKey(name: 'vatRate')
  String get vatRate;
  @JsonKey(name: 'id')
  String get id;

  /// Create a copy of VatDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VatDetailCopyWith<VatDetail> get copyWith =>
      _$VatDetailCopyWithImpl<VatDetail>(this as VatDetail, _$identity);

  /// Serializes this VatDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VatDetail &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.vatRate, vatRate) || other.vatRate == vatRate) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vatAmount, orderId, vatRate, id);

  @override
  String toString() {
    return 'VatDetail(vatAmount: $vatAmount, orderId: $orderId, vatRate: $vatRate, id: $id)';
  }
}

/// @nodoc
abstract mixin class $VatDetailCopyWith<$Res> {
  factory $VatDetailCopyWith(VatDetail value, $Res Function(VatDetail) _then) =
      _$VatDetailCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'vatAmount') String vatAmount,
      @JsonKey(name: 'orderId') String orderId,
      @JsonKey(name: 'vatRate') String vatRate,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class _$VatDetailCopyWithImpl<$Res> implements $VatDetailCopyWith<$Res> {
  _$VatDetailCopyWithImpl(this._self, this._then);

  final VatDetail _self;
  final $Res Function(VatDetail) _then;

  /// Create a copy of VatDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vatAmount = null,
    Object? orderId = null,
    Object? vatRate = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      vatAmount: null == vatAmount
          ? _self.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      vatRate: null == vatRate
          ? _self.vatRate
          : vatRate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VatDetail].
extension VatDetailPatterns on VatDetail {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VatDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VatDetail() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VatDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VatDetail():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VatDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VatDetail() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'vatAmount') String vatAmount,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'vatRate') String vatRate,
            @JsonKey(name: 'id') String id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VatDetail() when $default != null:
        return $default(
            _that.vatAmount, _that.orderId, _that.vatRate, _that.id);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'vatAmount') String vatAmount,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'vatRate') String vatRate,
            @JsonKey(name: 'id') String id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VatDetail():
        return $default(
            _that.vatAmount, _that.orderId, _that.vatRate, _that.id);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'vatAmount') String vatAmount,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'vatRate') String vatRate,
            @JsonKey(name: 'id') String id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VatDetail() when $default != null:
        return $default(
            _that.vatAmount, _that.orderId, _that.vatRate, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VatDetail implements VatDetail {
  const _VatDetail(
      {@JsonKey(name: 'vatAmount') this.vatAmount = "",
      @JsonKey(name: 'orderId') this.orderId = "",
      @JsonKey(name: 'vatRate') this.vatRate = "",
      @JsonKey(name: 'id') this.id = ""});
  factory _VatDetail.fromJson(Map<String, dynamic> json) =>
      _$VatDetailFromJson(json);

  @override
  @JsonKey(name: 'vatAmount')
  final String vatAmount;
  @override
  @JsonKey(name: 'orderId')
  final String orderId;
  @override
  @JsonKey(name: 'vatRate')
  final String vatRate;
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Create a copy of VatDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VatDetailCopyWith<_VatDetail> get copyWith =>
      __$VatDetailCopyWithImpl<_VatDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VatDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VatDetail &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.vatRate, vatRate) || other.vatRate == vatRate) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vatAmount, orderId, vatRate, id);

  @override
  String toString() {
    return 'VatDetail(vatAmount: $vatAmount, orderId: $orderId, vatRate: $vatRate, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$VatDetailCopyWith<$Res>
    implements $VatDetailCopyWith<$Res> {
  factory _$VatDetailCopyWith(
          _VatDetail value, $Res Function(_VatDetail) _then) =
      __$VatDetailCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vatAmount') String vatAmount,
      @JsonKey(name: 'orderId') String orderId,
      @JsonKey(name: 'vatRate') String vatRate,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class __$VatDetailCopyWithImpl<$Res> implements _$VatDetailCopyWith<$Res> {
  __$VatDetailCopyWithImpl(this._self, this._then);

  final _VatDetail _self;
  final $Res Function(_VatDetail) _then;

  /// Create a copy of VatDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? vatAmount = null,
    Object? orderId = null,
    Object? vatRate = null,
    Object? id = null,
  }) {
    return _then(_VatDetail(
      vatAmount: null == vatAmount
          ? _self.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      vatRate: null == vatRate
          ? _self.vatRate
          : vatRate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$OrderStatus {
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'orderId')
  String get orderId;
  @JsonKey(name: 'changedAt')
  String get changedAt;
  @JsonKey(name: 'id')
  String get id;

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderStatusCopyWith<OrderStatus> get copyWith =>
      _$OrderStatusCopyWithImpl<OrderStatus>(this as OrderStatus, _$identity);

  /// Serializes this OrderStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderStatus &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, orderId, changedAt, id);

  @override
  String toString() {
    return 'OrderStatus(status: $status, orderId: $orderId, changedAt: $changedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class $OrderStatusCopyWith<$Res> {
  factory $OrderStatusCopyWith(
          OrderStatus value, $Res Function(OrderStatus) _then) =
      _$OrderStatusCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'orderId') String orderId,
      @JsonKey(name: 'changedAt') String changedAt,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class _$OrderStatusCopyWithImpl<$Res> implements $OrderStatusCopyWith<$Res> {
  _$OrderStatusCopyWithImpl(this._self, this._then);

  final OrderStatus _self;
  final $Res Function(OrderStatus) _then;

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orderId = null,
    Object? changedAt = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      changedAt: null == changedAt
          ? _self.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderStatus].
extension OrderStatusPatterns on OrderStatus {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderStatus value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderStatus() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderStatus value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderStatus():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderStatus value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderStatus() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'changedAt') String changedAt,
            @JsonKey(name: 'id') String id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderStatus() when $default != null:
        return $default(_that.status, _that.orderId, _that.changedAt, _that.id);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'changedAt') String changedAt,
            @JsonKey(name: 'id') String id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderStatus():
        return $default(_that.status, _that.orderId, _that.changedAt, _that.id);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'orderId') String orderId,
            @JsonKey(name: 'changedAt') String changedAt,
            @JsonKey(name: 'id') String id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderStatus() when $default != null:
        return $default(_that.status, _that.orderId, _that.changedAt, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderStatus implements OrderStatus {
  const _OrderStatus(
      {@JsonKey(name: 'status') this.status = "",
      @JsonKey(name: 'orderId') this.orderId = "",
      @JsonKey(name: 'changedAt') this.changedAt = "",
      @JsonKey(name: 'id') this.id = ""});
  factory _OrderStatus.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'orderId')
  final String orderId;
  @override
  @JsonKey(name: 'changedAt')
  final String changedAt;
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderStatusCopyWith<_OrderStatus> get copyWith =>
      __$OrderStatusCopyWithImpl<_OrderStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderStatus &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, orderId, changedAt, id);

  @override
  String toString() {
    return 'OrderStatus(status: $status, orderId: $orderId, changedAt: $changedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$OrderStatusCopyWith<$Res>
    implements $OrderStatusCopyWith<$Res> {
  factory _$OrderStatusCopyWith(
          _OrderStatus value, $Res Function(_OrderStatus) _then) =
      __$OrderStatusCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'orderId') String orderId,
      @JsonKey(name: 'changedAt') String changedAt,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class __$OrderStatusCopyWithImpl<$Res> implements _$OrderStatusCopyWith<$Res> {
  __$OrderStatusCopyWithImpl(this._self, this._then);

  final _OrderStatus _self;
  final $Res Function(_OrderStatus) _then;

  /// Create a copy of OrderStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? orderId = null,
    Object? changedAt = null,
    Object? id = null,
  }) {
    return _then(_OrderStatus(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      changedAt: null == changedAt
          ? _self.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CustomerNote {
  @JsonKey(name: 'note')
  String get note;
  @JsonKey(name: 'handledAt')
  String? get handledAt;
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'actionTaken')
  String get actionTaken;

  /// Create a copy of CustomerNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerNoteCopyWith<CustomerNote> get copyWith =>
      _$CustomerNoteCopyWithImpl<CustomerNote>(
          this as CustomerNote, _$identity);

  /// Serializes this CustomerNote to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerNote &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.handledAt, handledAt) ||
                other.handledAt == handledAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.actionTaken, actionTaken) ||
                other.actionTaken == actionTaken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, note, handledAt, createdAt, id, actionTaken);

  @override
  String toString() {
    return 'CustomerNote(note: $note, handledAt: $handledAt, createdAt: $createdAt, id: $id, actionTaken: $actionTaken)';
  }
}

/// @nodoc
abstract mixin class $CustomerNoteCopyWith<$Res> {
  factory $CustomerNoteCopyWith(
          CustomerNote value, $Res Function(CustomerNote) _then) =
      _$CustomerNoteCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'note') String note,
      @JsonKey(name: 'handledAt') String? handledAt,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'actionTaken') String actionTaken});
}

/// @nodoc
class _$CustomerNoteCopyWithImpl<$Res> implements $CustomerNoteCopyWith<$Res> {
  _$CustomerNoteCopyWithImpl(this._self, this._then);

  final CustomerNote _self;
  final $Res Function(CustomerNote) _then;

  /// Create a copy of CustomerNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? handledAt = freezed,
    Object? createdAt = null,
    Object? id = null,
    Object? actionTaken = null,
  }) {
    return _then(_self.copyWith(
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      handledAt: freezed == handledAt
          ? _self.handledAt
          : handledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      actionTaken: null == actionTaken
          ? _self.actionTaken
          : actionTaken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomerNote].
extension CustomerNotePatterns on CustomerNote {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CustomerNote value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerNote() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CustomerNote value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerNote():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CustomerNote value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerNote() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'note') String note,
            @JsonKey(name: 'handledAt') String? handledAt,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'actionTaken') String actionTaken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerNote() when $default != null:
        return $default(_that.note, _that.handledAt, _that.createdAt, _that.id,
            _that.actionTaken);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'note') String note,
            @JsonKey(name: 'handledAt') String? handledAt,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'actionTaken') String actionTaken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerNote():
        return $default(_that.note, _that.handledAt, _that.createdAt, _that.id,
            _that.actionTaken);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'note') String note,
            @JsonKey(name: 'handledAt') String? handledAt,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'actionTaken') String actionTaken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerNote() when $default != null:
        return $default(_that.note, _that.handledAt, _that.createdAt, _that.id,
            _that.actionTaken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CustomerNote implements CustomerNote {
  const _CustomerNote(
      {@JsonKey(name: 'note') this.note = "",
      @JsonKey(name: 'handledAt') this.handledAt = "",
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'actionTaken') this.actionTaken = ""});
  factory _CustomerNote.fromJson(Map<String, dynamic> json) =>
      _$CustomerNoteFromJson(json);

  @override
  @JsonKey(name: 'note')
  final String note;
  @override
  @JsonKey(name: 'handledAt')
  final String? handledAt;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'actionTaken')
  final String actionTaken;

  /// Create a copy of CustomerNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerNoteCopyWith<_CustomerNote> get copyWith =>
      __$CustomerNoteCopyWithImpl<_CustomerNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerNoteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerNote &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.handledAt, handledAt) ||
                other.handledAt == handledAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.actionTaken, actionTaken) ||
                other.actionTaken == actionTaken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, note, handledAt, createdAt, id, actionTaken);

  @override
  String toString() {
    return 'CustomerNote(note: $note, handledAt: $handledAt, createdAt: $createdAt, id: $id, actionTaken: $actionTaken)';
  }
}

/// @nodoc
abstract mixin class _$CustomerNoteCopyWith<$Res>
    implements $CustomerNoteCopyWith<$Res> {
  factory _$CustomerNoteCopyWith(
          _CustomerNote value, $Res Function(_CustomerNote) _then) =
      __$CustomerNoteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'note') String note,
      @JsonKey(name: 'handledAt') String? handledAt,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'actionTaken') String actionTaken});
}

/// @nodoc
class __$CustomerNoteCopyWithImpl<$Res>
    implements _$CustomerNoteCopyWith<$Res> {
  __$CustomerNoteCopyWithImpl(this._self, this._then);

  final _CustomerNote _self;
  final $Res Function(_CustomerNote) _then;

  /// Create a copy of CustomerNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? note = null,
    Object? handledAt = freezed,
    Object? createdAt = null,
    Object? id = null,
    Object? actionTaken = null,
  }) {
    return _then(_CustomerNote(
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      handledAt: freezed == handledAt
          ? _self.handledAt
          : handledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      actionTaken: null == actionTaken
          ? _self.actionTaken
          : actionTaken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AdditionalCharges {
  @JsonKey(name: 'amount')
  String get amount;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'orderId')
  String get orderId;

  /// Create a copy of AdditionalCharges
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdditionalChargesCopyWith<AdditionalCharges> get copyWith =>
      _$AdditionalChargesCopyWithImpl<AdditionalCharges>(
          this as AdditionalCharges, _$identity);

  /// Serializes this AdditionalCharges to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdditionalCharges &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, type, id, orderId);

  @override
  String toString() {
    return 'AdditionalCharges(amount: $amount, type: $type, id: $id, orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $AdditionalChargesCopyWith<$Res> {
  factory $AdditionalChargesCopyWith(
          AdditionalCharges value, $Res Function(AdditionalCharges) _then) =
      _$AdditionalChargesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'orderId') String orderId});
}

/// @nodoc
class _$AdditionalChargesCopyWithImpl<$Res>
    implements $AdditionalChargesCopyWith<$Res> {
  _$AdditionalChargesCopyWithImpl(this._self, this._then);

  final AdditionalCharges _self;
  final $Res Function(AdditionalCharges) _then;

  /// Create a copy of AdditionalCharges
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? type = null,
    Object? id = null,
    Object? orderId = null,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdditionalCharges].
extension AdditionalChargesPatterns on AdditionalCharges {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AdditionalCharges value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdditionalCharges() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AdditionalCharges value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdditionalCharges():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AdditionalCharges value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdditionalCharges() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'orderId') String orderId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdditionalCharges() when $default != null:
        return $default(_that.amount, _that.type, _that.id, _that.orderId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'orderId') String orderId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdditionalCharges():
        return $default(_that.amount, _that.type, _that.id, _that.orderId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'orderId') String orderId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdditionalCharges() when $default != null:
        return $default(_that.amount, _that.type, _that.id, _that.orderId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AdditionalCharges implements AdditionalCharges {
  const _AdditionalCharges(
      {@JsonKey(name: 'amount') this.amount = "",
      @JsonKey(name: 'type') this.type = "",
      @JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'orderId') this.orderId = ""});
  factory _AdditionalCharges.fromJson(Map<String, dynamic> json) =>
      _$AdditionalChargesFromJson(json);

  @override
  @JsonKey(name: 'amount')
  final String amount;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'orderId')
  final String orderId;

  /// Create a copy of AdditionalCharges
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdditionalChargesCopyWith<_AdditionalCharges> get copyWith =>
      __$AdditionalChargesCopyWithImpl<_AdditionalCharges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdditionalChargesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdditionalCharges &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, type, id, orderId);

  @override
  String toString() {
    return 'AdditionalCharges(amount: $amount, type: $type, id: $id, orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class _$AdditionalChargesCopyWith<$Res>
    implements $AdditionalChargesCopyWith<$Res> {
  factory _$AdditionalChargesCopyWith(
          _AdditionalCharges value, $Res Function(_AdditionalCharges) _then) =
      __$AdditionalChargesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'orderId') String orderId});
}

/// @nodoc
class __$AdditionalChargesCopyWithImpl<$Res>
    implements _$AdditionalChargesCopyWith<$Res> {
  __$AdditionalChargesCopyWithImpl(this._self, this._then);

  final _AdditionalCharges _self;
  final $Res Function(_AdditionalCharges) _then;

  /// Create a copy of AdditionalCharges
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? type = null,
    Object? id = null,
    Object? orderId = null,
  }) {
    return _then(_AdditionalCharges(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PromoItem {
  @JsonKey(name: 'amount')
  String get amount;
  @JsonKey(name: 'promoId')
  String get promoId;
  @JsonKey(name: 'PromoCode')
  PromoCode? get promoCode;

  /// Create a copy of PromoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PromoItemCopyWith<PromoItem> get copyWith =>
      _$PromoItemCopyWithImpl<PromoItem>(this as PromoItem, _$identity);

  /// Serializes this PromoItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PromoItem &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.promoId, promoId) || other.promoId == promoId) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, promoId, promoCode);

  @override
  String toString() {
    return 'PromoItem(amount: $amount, promoId: $promoId, promoCode: $promoCode)';
  }
}

/// @nodoc
abstract mixin class $PromoItemCopyWith<$Res> {
  factory $PromoItemCopyWith(PromoItem value, $Res Function(PromoItem) _then) =
      _$PromoItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'promoId') String promoId,
      @JsonKey(name: 'PromoCode') PromoCode? promoCode});

  $PromoCodeCopyWith<$Res>? get promoCode;
}

/// @nodoc
class _$PromoItemCopyWithImpl<$Res> implements $PromoItemCopyWith<$Res> {
  _$PromoItemCopyWithImpl(this._self, this._then);

  final PromoItem _self;
  final $Res Function(PromoItem) _then;

  /// Create a copy of PromoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? promoId = null,
    Object? promoCode = freezed,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      promoId: null == promoId
          ? _self.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as String,
      promoCode: freezed == promoCode
          ? _self.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as PromoCode?,
    ));
  }

  /// Create a copy of PromoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PromoCodeCopyWith<$Res>? get promoCode {
    if (_self.promoCode == null) {
      return null;
    }

    return $PromoCodeCopyWith<$Res>(_self.promoCode!, (value) {
      return _then(_self.copyWith(promoCode: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PromoItem].
extension PromoItemPatterns on PromoItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PromoItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PromoItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PromoItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PromoItem():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PromoItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PromoItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'promoId') String promoId,
            @JsonKey(name: 'PromoCode') PromoCode? promoCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PromoItem() when $default != null:
        return $default(_that.amount, _that.promoId, _that.promoCode);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'promoId') String promoId,
            @JsonKey(name: 'PromoCode') PromoCode? promoCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PromoItem():
        return $default(_that.amount, _that.promoId, _that.promoCode);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'promoId') String promoId,
            @JsonKey(name: 'PromoCode') PromoCode? promoCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PromoItem() when $default != null:
        return $default(_that.amount, _that.promoId, _that.promoCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PromoItem implements PromoItem {
  const _PromoItem(
      {@JsonKey(name: 'amount') this.amount = "",
      @JsonKey(name: 'promoId') this.promoId = "",
      @JsonKey(name: 'PromoCode') this.promoCode});
  factory _PromoItem.fromJson(Map<String, dynamic> json) =>
      _$PromoItemFromJson(json);

  @override
  @JsonKey(name: 'amount')
  final String amount;
  @override
  @JsonKey(name: 'promoId')
  final String promoId;
  @override
  @JsonKey(name: 'PromoCode')
  final PromoCode? promoCode;

  /// Create a copy of PromoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PromoItemCopyWith<_PromoItem> get copyWith =>
      __$PromoItemCopyWithImpl<_PromoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PromoItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PromoItem &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.promoId, promoId) || other.promoId == promoId) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, promoId, promoCode);

  @override
  String toString() {
    return 'PromoItem(amount: $amount, promoId: $promoId, promoCode: $promoCode)';
  }
}

/// @nodoc
abstract mixin class _$PromoItemCopyWith<$Res>
    implements $PromoItemCopyWith<$Res> {
  factory _$PromoItemCopyWith(
          _PromoItem value, $Res Function(_PromoItem) _then) =
      __$PromoItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'promoId') String promoId,
      @JsonKey(name: 'PromoCode') PromoCode? promoCode});

  @override
  $PromoCodeCopyWith<$Res>? get promoCode;
}

/// @nodoc
class __$PromoItemCopyWithImpl<$Res> implements _$PromoItemCopyWith<$Res> {
  __$PromoItemCopyWithImpl(this._self, this._then);

  final _PromoItem _self;
  final $Res Function(_PromoItem) _then;

  /// Create a copy of PromoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? promoId = null,
    Object? promoCode = freezed,
  }) {
    return _then(_PromoItem(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      promoId: null == promoId
          ? _self.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as String,
      promoCode: freezed == promoCode
          ? _self.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as PromoCode?,
    ));
  }

  /// Create a copy of PromoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PromoCodeCopyWith<$Res>? get promoCode {
    if (_self.promoCode == null) {
      return null;
    }

    return $PromoCodeCopyWith<$Res>(_self.promoCode!, (value) {
      return _then(_self.copyWith(promoCode: value));
    });
  }
}

/// @nodoc
mixin _$PromoCode {
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of PromoCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PromoCodeCopyWith<PromoCode> get copyWith =>
      _$PromoCodeCopyWithImpl<PromoCode>(this as PromoCode, _$identity);

  /// Serializes this PromoCode to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PromoCode &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'PromoCode(name: $name)';
  }
}

/// @nodoc
abstract mixin class $PromoCodeCopyWith<$Res> {
  factory $PromoCodeCopyWith(PromoCode value, $Res Function(PromoCode) _then) =
      _$PromoCodeCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$PromoCodeCopyWithImpl<$Res> implements $PromoCodeCopyWith<$Res> {
  _$PromoCodeCopyWithImpl(this._self, this._then);

  final PromoCode _self;
  final $Res Function(PromoCode) _then;

  /// Create a copy of PromoCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PromoCode].
extension PromoCodePatterns on PromoCode {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PromoCode value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PromoCode() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PromoCode value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PromoCode():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PromoCode value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PromoCode() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'name') String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PromoCode() when $default != null:
        return $default(_that.name);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'name') String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PromoCode():
        return $default(_that.name);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'name') String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PromoCode() when $default != null:
        return $default(_that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PromoCode implements PromoCode {
  const _PromoCode({@JsonKey(name: 'name') this.name = ""});
  factory _PromoCode.fromJson(Map<String, dynamic> json) =>
      _$PromoCodeFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  /// Create a copy of PromoCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PromoCodeCopyWith<_PromoCode> get copyWith =>
      __$PromoCodeCopyWithImpl<_PromoCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PromoCodeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PromoCode &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'PromoCode(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$PromoCodeCopyWith<$Res>
    implements $PromoCodeCopyWith<$Res> {
  factory _$PromoCodeCopyWith(
          _PromoCode value, $Res Function(_PromoCode) _then) =
      __$PromoCodeCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$PromoCodeCopyWithImpl<$Res> implements _$PromoCodeCopyWith<$Res> {
  __$PromoCodeCopyWithImpl(this._self, this._then);

  final _PromoCode _self;
  final $Res Function(_PromoCode) _then;

  /// Create a copy of PromoCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_PromoCode(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Customer {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'user')
  User? get user;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<Customer> get copyWith =>
      _$CustomerCopyWithImpl<Customer>(this as Customer, _$identity);

  /// Serializes this Customer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @override
  String toString() {
    return 'Customer(id: $id, user: $user)';
  }
}

/// @nodoc
abstract mixin class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) _then) =
      _$CustomerCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'user') User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._self, this._then);

  final Customer _self;
  final $Res Function(Customer) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Customer].
extension CustomerPatterns on Customer {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Customer value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Customer() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Customer value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Customer():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Customer value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Customer() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id, @JsonKey(name: 'user') User? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Customer() when $default != null:
        return $default(_that.id, _that.user);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id, @JsonKey(name: 'user') User? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Customer():
        return $default(_that.id, _that.user);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id, @JsonKey(name: 'user') User? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Customer() when $default != null:
        return $default(_that.id, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Customer implements Customer {
  const _Customer(
      {@JsonKey(name: 'id') this.id = "", @JsonKey(name: 'user') this.user});
  factory _Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user')
  final User? user;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @override
  String toString() {
    return 'Customer(id: $id, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$CustomerCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) _then) =
      __$CustomerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'user') User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$CustomerCopyWithImpl<$Res> implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(this._self, this._then);

  final _Customer _self;
  final $Res Function(_Customer) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? user = freezed,
  }) {
    return _then(_Customer(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'firstName')
  String get firstName;
  @JsonKey(name: 'lastName')
  String get lastName;
  @JsonKey(name: 'phoneNumber')
  String get phoneNumber;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, phoneNumber);

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'firstName') String firstName,
      @JsonKey(name: 'lastName') String lastName,
      @JsonKey(name: 'phoneNumber') String phoneNumber});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'firstName') String firstName,
            @JsonKey(name: 'lastName') String lastName,
            @JsonKey(name: 'phoneNumber') String phoneNumber)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that.firstName, _that.lastName, _that.phoneNumber);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'firstName') String firstName,
            @JsonKey(name: 'lastName') String lastName,
            @JsonKey(name: 'phoneNumber') String phoneNumber)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
        return $default(_that.firstName, _that.lastName, _that.phoneNumber);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'firstName') String firstName,
            @JsonKey(name: 'lastName') String lastName,
            @JsonKey(name: 'phoneNumber') String phoneNumber)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that.firstName, _that.lastName, _that.phoneNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _User implements User {
  const _User(
      {@JsonKey(name: 'firstName') this.firstName = "",
      @JsonKey(name: 'lastName') this.lastName = "",
      @JsonKey(name: 'phoneNumber') this.phoneNumber = ""});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  @JsonKey(name: 'firstName')
  final String firstName;
  @override
  @JsonKey(name: 'lastName')
  final String lastName;
  @override
  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, phoneNumber);

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'firstName') String firstName,
      @JsonKey(name: 'lastName') String lastName,
      @JsonKey(name: 'phoneNumber') String phoneNumber});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_User(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$OrderedServices {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'service')
  Service? get service;
  @JsonKey(name: 'items')
  List<Item> get item;

  /// Create a copy of OrderedServices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderedServicesCopyWith<OrderedServices> get copyWith =>
      _$OrderedServicesCopyWithImpl<OrderedServices>(
          this as OrderedServices, _$identity);

  /// Serializes this OrderedServices to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderedServices &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.service, service) || other.service == service) &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, service, const DeepCollectionEquality().hash(item));

  @override
  String toString() {
    return 'OrderedServices(id: $id, service: $service, item: $item)';
  }
}

/// @nodoc
abstract mixin class $OrderedServicesCopyWith<$Res> {
  factory $OrderedServicesCopyWith(
          OrderedServices value, $Res Function(OrderedServices) _then) =
      _$OrderedServicesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'service') Service? service,
      @JsonKey(name: 'items') List<Item> item});

  $ServiceCopyWith<$Res>? get service;
}

/// @nodoc
class _$OrderedServicesCopyWithImpl<$Res>
    implements $OrderedServicesCopyWith<$Res> {
  _$OrderedServicesCopyWithImpl(this._self, this._then);

  final OrderedServices _self;
  final $Res Function(OrderedServices) _then;

  /// Create a copy of OrderedServices
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? service = freezed,
    Object? item = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      service: freezed == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      item: null == item
          ? _self.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }

  /// Create a copy of OrderedServices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_self.service!, (value) {
      return _then(_self.copyWith(service: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderedServices].
extension OrderedServicesPatterns on OrderedServices {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderedServices value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderedServices() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderedServices value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedServices():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderedServices value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedServices() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'service') Service? service,
            @JsonKey(name: 'items') List<Item> item)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderedServices() when $default != null:
        return $default(_that.id, _that.service, _that.item);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'service') Service? service,
            @JsonKey(name: 'items') List<Item> item)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedServices():
        return $default(_that.id, _that.service, _that.item);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'service') Service? service,
            @JsonKey(name: 'items') List<Item> item)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedServices() when $default != null:
        return $default(_that.id, _that.service, _that.item);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderedServices implements OrderedServices {
  const _OrderedServices(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'service') this.service,
      @JsonKey(name: 'items') final List<Item> item = const []})
      : _item = item;
  factory _OrderedServices.fromJson(Map<String, dynamic> json) =>
      _$OrderedServicesFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'service')
  final Service? service;
  final List<Item> _item;
  @override
  @JsonKey(name: 'items')
  List<Item> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  /// Create a copy of OrderedServices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderedServicesCopyWith<_OrderedServices> get copyWith =>
      __$OrderedServicesCopyWithImpl<_OrderedServices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderedServicesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderedServices &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.service, service) || other.service == service) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, service, const DeepCollectionEquality().hash(_item));

  @override
  String toString() {
    return 'OrderedServices(id: $id, service: $service, item: $item)';
  }
}

/// @nodoc
abstract mixin class _$OrderedServicesCopyWith<$Res>
    implements $OrderedServicesCopyWith<$Res> {
  factory _$OrderedServicesCopyWith(
          _OrderedServices value, $Res Function(_OrderedServices) _then) =
      __$OrderedServicesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'service') Service? service,
      @JsonKey(name: 'items') List<Item> item});

  @override
  $ServiceCopyWith<$Res>? get service;
}

/// @nodoc
class __$OrderedServicesCopyWithImpl<$Res>
    implements _$OrderedServicesCopyWith<$Res> {
  __$OrderedServicesCopyWithImpl(this._self, this._then);

  final _OrderedServices _self;
  final $Res Function(_OrderedServices) _then;

  /// Create a copy of OrderedServices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? service = freezed,
    Object? item = null,
  }) {
    return _then(_OrderedServices(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      service: freezed == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      item: null == item
          ? _self._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }

  /// Create a copy of OrderedServices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_self.service!, (value) {
      return _then(_self.copyWith(service: value));
    });
  }
}

/// @nodoc
mixin _$Service {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'tagLine')
  String get tagLine;
  @JsonKey(name: 'color')
  String get color;
  @JsonKey(name: 'icon')
  String get icon;
  @JsonKey(name: 'active')
  bool get active;
  @JsonKey(name: 'deleted')
  bool get deleted;
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @JsonKey(name: 'sortOrder')
  int get sortOrder;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<Service> get copyWith =>
      _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tagLine, tagLine) || other.tagLine == tagLine) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, tagLine,
      color, icon, active, deleted, createdAt, sortOrder);

  @override
  String toString() {
    return 'Service(id: $id, name: $name, description: $description, tagLine: $tagLine, color: $color, icon: $icon, active: $active, deleted: $deleted, createdAt: $createdAt, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) =
      _$ServiceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'tagLine') String tagLine,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'deleted') bool deleted,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'sortOrder') int sortOrder});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._self, this._then);

  final Service _self;
  final $Res Function(Service) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? tagLine = null,
    Object? color = null,
    Object? icon = null,
    Object? active = null,
    Object? deleted = null,
    Object? createdAt = null,
    Object? sortOrder = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tagLine: null == tagLine
          ? _self.tagLine
          : tagLine // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _self.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Service].
extension ServicePatterns on Service {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Service value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Service() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Service value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Service():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Service value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Service() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'tagLine') String tagLine,
            @JsonKey(name: 'color') String color,
            @JsonKey(name: 'icon') String icon,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'sortOrder') int sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Service() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.tagLine,
            _that.color,
            _that.icon,
            _that.active,
            _that.deleted,
            _that.createdAt,
            _that.sortOrder);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'tagLine') String tagLine,
            @JsonKey(name: 'color') String color,
            @JsonKey(name: 'icon') String icon,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'sortOrder') int sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Service():
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.tagLine,
            _that.color,
            _that.icon,
            _that.active,
            _that.deleted,
            _that.createdAt,
            _that.sortOrder);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'tagLine') String tagLine,
            @JsonKey(name: 'color') String color,
            @JsonKey(name: 'icon') String icon,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'sortOrder') int sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Service() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.tagLine,
            _that.color,
            _that.icon,
            _that.active,
            _that.deleted,
            _that.createdAt,
            _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Service implements Service {
  const _Service(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'description') this.description = "",
      @JsonKey(name: 'tagLine') this.tagLine = "",
      @JsonKey(name: 'color') this.color = "",
      @JsonKey(name: 'icon') this.icon = "",
      @JsonKey(name: 'active') this.active = false,
      @JsonKey(name: 'deleted') this.deleted = false,
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'sortOrder') this.sortOrder = 0});
  factory _Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'tagLine')
  final String tagLine;
  @override
  @JsonKey(name: 'color')
  final String color;
  @override
  @JsonKey(name: 'icon')
  final String icon;
  @override
  @JsonKey(name: 'active')
  final bool active;
  @override
  @JsonKey(name: 'deleted')
  final bool deleted;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'sortOrder')
  final int sortOrder;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServiceCopyWith<_Service> get copyWith =>
      __$ServiceCopyWithImpl<_Service>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tagLine, tagLine) || other.tagLine == tagLine) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, tagLine,
      color, icon, active, deleted, createdAt, sortOrder);

  @override
  String toString() {
    return 'Service(id: $id, name: $name, description: $description, tagLine: $tagLine, color: $color, icon: $icon, active: $active, deleted: $deleted, createdAt: $createdAt, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) _then) =
      __$ServiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'tagLine') String tagLine,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'deleted') bool deleted,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'sortOrder') int sortOrder});
}

/// @nodoc
class __$ServiceCopyWithImpl<$Res> implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(this._self, this._then);

  final _Service _self;
  final $Res Function(_Service) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? tagLine = null,
    Object? color = null,
    Object? icon = null,
    Object? active = null,
    Object? deleted = null,
    Object? createdAt = null,
    Object? sortOrder = null,
  }) {
    return _then(_Service(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tagLine: null == tagLine
          ? _self.tagLine
          : tagLine // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _self.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'orderedServiceId')
  String get orderedServiceId;
  @JsonKey(name: 'quantity')
  int get quantity;
  @JsonKey(name: 'itemId')
  String get itemId;
  @JsonKey(name: 'soldPrice')
  String get soldPrice;
  @JsonKey(name: 'listedPrice')
  String get listedPrice;
  @JsonKey(name: 'item')
  ItemDetails? get item;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemCopyWith<Item> get copyWith =>
      _$ItemCopyWithImpl<Item>(this as Item, _$identity);

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Item &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderedServiceId, orderedServiceId) ||
                other.orderedServiceId == orderedServiceId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.soldPrice, soldPrice) ||
                other.soldPrice == soldPrice) &&
            (identical(other.listedPrice, listedPrice) ||
                other.listedPrice == listedPrice) &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderedServiceId, quantity,
      itemId, soldPrice, listedPrice, item);

  @override
  String toString() {
    return 'Item(id: $id, orderedServiceId: $orderedServiceId, quantity: $quantity, itemId: $itemId, soldPrice: $soldPrice, listedPrice: $listedPrice, item: $item)';
  }
}

/// @nodoc
abstract mixin class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) _then) =
      _$ItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'orderedServiceId') String orderedServiceId,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'itemId') String itemId,
      @JsonKey(name: 'soldPrice') String soldPrice,
      @JsonKey(name: 'listedPrice') String listedPrice,
      @JsonKey(name: 'item') ItemDetails? item});

  $ItemDetailsCopyWith<$Res>? get item;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._self, this._then);

  final Item _self;
  final $Res Function(Item) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderedServiceId = null,
    Object? quantity = null,
    Object? itemId = null,
    Object? soldPrice = null,
    Object? listedPrice = null,
    Object? item = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderedServiceId: null == orderedServiceId
          ? _self.orderedServiceId
          : orderedServiceId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      soldPrice: null == soldPrice
          ? _self.soldPrice
          : soldPrice // ignore: cast_nullable_to_non_nullable
              as String,
      listedPrice: null == listedPrice
          ? _self.listedPrice
          : listedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      item: freezed == item
          ? _self.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDetails?,
    ));
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemDetailsCopyWith<$Res>? get item {
    if (_self.item == null) {
      return null;
    }

    return $ItemDetailsCopyWith<$Res>(_self.item!, (value) {
      return _then(_self.copyWith(item: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Item].
extension ItemPatterns on Item {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Item value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Item value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Item value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'orderedServiceId') String orderedServiceId,
            @JsonKey(name: 'quantity') int quantity,
            @JsonKey(name: 'itemId') String itemId,
            @JsonKey(name: 'soldPrice') String soldPrice,
            @JsonKey(name: 'listedPrice') String listedPrice,
            @JsonKey(name: 'item') ItemDetails? item)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
        return $default(_that.id, _that.orderedServiceId, _that.quantity,
            _that.itemId, _that.soldPrice, _that.listedPrice, _that.item);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'orderedServiceId') String orderedServiceId,
            @JsonKey(name: 'quantity') int quantity,
            @JsonKey(name: 'itemId') String itemId,
            @JsonKey(name: 'soldPrice') String soldPrice,
            @JsonKey(name: 'listedPrice') String listedPrice,
            @JsonKey(name: 'item') ItemDetails? item)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item():
        return $default(_that.id, _that.orderedServiceId, _that.quantity,
            _that.itemId, _that.soldPrice, _that.listedPrice, _that.item);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'orderedServiceId') String orderedServiceId,
            @JsonKey(name: 'quantity') int quantity,
            @JsonKey(name: 'itemId') String itemId,
            @JsonKey(name: 'soldPrice') String soldPrice,
            @JsonKey(name: 'listedPrice') String listedPrice,
            @JsonKey(name: 'item') ItemDetails? item)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
        return $default(_that.id, _that.orderedServiceId, _that.quantity,
            _that.itemId, _that.soldPrice, _that.listedPrice, _that.item);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Item implements Item {
  const _Item(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'orderedServiceId') this.orderedServiceId = "",
      @JsonKey(name: 'quantity') this.quantity = 0,
      @JsonKey(name: 'itemId') this.itemId = "",
      @JsonKey(name: 'soldPrice') this.soldPrice = "",
      @JsonKey(name: 'listedPrice') this.listedPrice = "",
      @JsonKey(name: 'item') this.item});
  factory _Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'orderedServiceId')
  final String orderedServiceId;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'itemId')
  final String itemId;
  @override
  @JsonKey(name: 'soldPrice')
  final String soldPrice;
  @override
  @JsonKey(name: 'listedPrice')
  final String listedPrice;
  @override
  @JsonKey(name: 'item')
  final ItemDetails? item;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Item &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderedServiceId, orderedServiceId) ||
                other.orderedServiceId == orderedServiceId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.soldPrice, soldPrice) ||
                other.soldPrice == soldPrice) &&
            (identical(other.listedPrice, listedPrice) ||
                other.listedPrice == listedPrice) &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderedServiceId, quantity,
      itemId, soldPrice, listedPrice, item);

  @override
  String toString() {
    return 'Item(id: $id, orderedServiceId: $orderedServiceId, quantity: $quantity, itemId: $itemId, soldPrice: $soldPrice, listedPrice: $listedPrice, item: $item)';
  }
}

/// @nodoc
abstract mixin class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) _then) =
      __$ItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'orderedServiceId') String orderedServiceId,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'itemId') String itemId,
      @JsonKey(name: 'soldPrice') String soldPrice,
      @JsonKey(name: 'listedPrice') String listedPrice,
      @JsonKey(name: 'item') ItemDetails? item});

  @override
  $ItemDetailsCopyWith<$Res>? get item;
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(this._self, this._then);

  final _Item _self;
  final $Res Function(_Item) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderedServiceId = null,
    Object? quantity = null,
    Object? itemId = null,
    Object? soldPrice = null,
    Object? listedPrice = null,
    Object? item = freezed,
  }) {
    return _then(_Item(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderedServiceId: null == orderedServiceId
          ? _self.orderedServiceId
          : orderedServiceId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      soldPrice: null == soldPrice
          ? _self.soldPrice
          : soldPrice // ignore: cast_nullable_to_non_nullable
              as String,
      listedPrice: null == listedPrice
          ? _self.listedPrice
          : listedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      item: freezed == item
          ? _self.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDetails?,
    ));
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemDetailsCopyWith<$Res>? get item {
    if (_self.item == null) {
      return null;
    }

    return $ItemDetailsCopyWith<$Res>(_self.item!, (value) {
      return _then(_self.copyWith(item: value));
    });
  }
}

/// @nodoc
mixin _$ItemDetails {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'categoryId')
  String get categoryId;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'salePrice')
  String get salePrice;
  @JsonKey(name: 'listingPrice')
  String get listingPrice;
  @JsonKey(name: 'active')
  bool get active;
  @JsonKey(name: 'deleted')
  bool get deleted;
  @JsonKey(name: 'sortOrder')
  int get sortOrder;
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @JsonKey(name: 'category')
  Category? get category;

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemDetailsCopyWith<ItemDetails> get copyWith =>
      _$ItemDetailsCopyWithImpl<ItemDetails>(this as ItemDetails, _$identity);

  /// Serializes this ItemDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemDetails &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.listingPrice, listingPrice) ||
                other.listingPrice == listingPrice) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, name, salePrice,
      listingPrice, active, deleted, sortOrder, createdAt, category);

  @override
  String toString() {
    return 'ItemDetails(id: $id, categoryId: $categoryId, name: $name, salePrice: $salePrice, listingPrice: $listingPrice, active: $active, deleted: $deleted, sortOrder: $sortOrder, createdAt: $createdAt, category: $category)';
  }
}

/// @nodoc
abstract mixin class $ItemDetailsCopyWith<$Res> {
  factory $ItemDetailsCopyWith(
          ItemDetails value, $Res Function(ItemDetails) _then) =
      _$ItemDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'categoryId') String categoryId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'salePrice') String salePrice,
      @JsonKey(name: 'listingPrice') String listingPrice,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'deleted') bool deleted,
      @JsonKey(name: 'sortOrder') int sortOrder,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'category') Category? category});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ItemDetailsCopyWithImpl<$Res> implements $ItemDetailsCopyWith<$Res> {
  _$ItemDetailsCopyWithImpl(this._self, this._then);

  final ItemDetails _self;
  final $Res Function(ItemDetails) _then;

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? salePrice = null,
    Object? listingPrice = null,
    Object? active = null,
    Object? deleted = null,
    Object? sortOrder = null,
    Object? createdAt = null,
    Object? category = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String,
      listingPrice: null == listingPrice
          ? _self.listingPrice
          : listingPrice // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _self.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ItemDetails].
extension ItemDetailsPatterns on ItemDetails {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ItemDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemDetails() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ItemDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemDetails():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ItemDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemDetails() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'categoryId') String categoryId,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'salePrice') String salePrice,
            @JsonKey(name: 'listingPrice') String listingPrice,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'sortOrder') int sortOrder,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'category') Category? category)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemDetails() when $default != null:
        return $default(
            _that.id,
            _that.categoryId,
            _that.name,
            _that.salePrice,
            _that.listingPrice,
            _that.active,
            _that.deleted,
            _that.sortOrder,
            _that.createdAt,
            _that.category);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'categoryId') String categoryId,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'salePrice') String salePrice,
            @JsonKey(name: 'listingPrice') String listingPrice,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'sortOrder') int sortOrder,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'category') Category? category)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemDetails():
        return $default(
            _that.id,
            _that.categoryId,
            _that.name,
            _that.salePrice,
            _that.listingPrice,
            _that.active,
            _that.deleted,
            _that.sortOrder,
            _that.createdAt,
            _that.category);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'categoryId') String categoryId,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'salePrice') String salePrice,
            @JsonKey(name: 'listingPrice') String listingPrice,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'sortOrder') int sortOrder,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'category') Category? category)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemDetails() when $default != null:
        return $default(
            _that.id,
            _that.categoryId,
            _that.name,
            _that.salePrice,
            _that.listingPrice,
            _that.active,
            _that.deleted,
            _that.sortOrder,
            _that.createdAt,
            _that.category);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ItemDetails implements ItemDetails {
  const _ItemDetails(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'categoryId') this.categoryId = "",
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'salePrice') this.salePrice = "",
      @JsonKey(name: 'listingPrice') this.listingPrice = "",
      @JsonKey(name: 'active') this.active = false,
      @JsonKey(name: 'deleted') this.deleted = false,
      @JsonKey(name: 'sortOrder') this.sortOrder = 0,
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'category') this.category});
  factory _ItemDetails.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailsFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'salePrice')
  final String salePrice;
  @override
  @JsonKey(name: 'listingPrice')
  final String listingPrice;
  @override
  @JsonKey(name: 'active')
  final bool active;
  @override
  @JsonKey(name: 'deleted')
  final bool deleted;
  @override
  @JsonKey(name: 'sortOrder')
  final int sortOrder;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'category')
  final Category? category;

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemDetailsCopyWith<_ItemDetails> get copyWith =>
      __$ItemDetailsCopyWithImpl<_ItemDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemDetails &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.listingPrice, listingPrice) ||
                other.listingPrice == listingPrice) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, name, salePrice,
      listingPrice, active, deleted, sortOrder, createdAt, category);

  @override
  String toString() {
    return 'ItemDetails(id: $id, categoryId: $categoryId, name: $name, salePrice: $salePrice, listingPrice: $listingPrice, active: $active, deleted: $deleted, sortOrder: $sortOrder, createdAt: $createdAt, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$ItemDetailsCopyWith<$Res>
    implements $ItemDetailsCopyWith<$Res> {
  factory _$ItemDetailsCopyWith(
          _ItemDetails value, $Res Function(_ItemDetails) _then) =
      __$ItemDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'categoryId') String categoryId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'salePrice') String salePrice,
      @JsonKey(name: 'listingPrice') String listingPrice,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'deleted') bool deleted,
      @JsonKey(name: 'sortOrder') int sortOrder,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'category') Category? category});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$ItemDetailsCopyWithImpl<$Res> implements _$ItemDetailsCopyWith<$Res> {
  __$ItemDetailsCopyWithImpl(this._self, this._then);

  final _ItemDetails _self;
  final $Res Function(_ItemDetails) _then;

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? salePrice = null,
    Object? listingPrice = null,
    Object? active = null,
    Object? deleted = null,
    Object? sortOrder = null,
    Object? createdAt = null,
    Object? category = freezed,
  }) {
    return _then(_ItemDetails(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String,
      listingPrice: null == listingPrice
          ? _self.listingPrice
          : listingPrice // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _self.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'service')
  ServiceInfo? get service;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<Category> get copyWith =>
      _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.service, service) || other.service == service));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, service);

  @override
  String toString() {
    return 'Category(id: $id, name: $name, service: $service)';
  }
}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) =
      _$CategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'service') ServiceInfo? service});

  $ServiceInfoCopyWith<$Res>? get service;
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? service = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      service: freezed == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceInfo?,
    ));
  }

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceInfoCopyWith<$Res>? get service {
    if (_self.service == null) {
      return null;
    }

    return $ServiceInfoCopyWith<$Res>(_self.service!, (value) {
      return _then(_self.copyWith(service: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Category value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Category value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Category value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'service') ServiceInfo? service)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that.id, _that.name, _that.service);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'service') ServiceInfo? service)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
        return $default(_that.id, _that.name, _that.service);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'service') ServiceInfo? service)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that.id, _that.name, _that.service);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Category implements Category {
  const _Category(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'service') this.service});
  factory _Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'service')
  final ServiceInfo? service;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.service, service) || other.service == service));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, service);

  @override
  String toString() {
    return 'Category(id: $id, name: $name, service: $service)';
  }
}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) =
      __$CategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'service') ServiceInfo? service});

  @override
  $ServiceInfoCopyWith<$Res>? get service;
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? service = freezed,
  }) {
    return _then(_Category(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      service: freezed == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceInfo?,
    ));
  }

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceInfoCopyWith<$Res>? get service {
    if (_self.service == null) {
      return null;
    }

    return $ServiceInfoCopyWith<$Res>(_self.service!, (value) {
      return _then(_self.copyWith(service: value));
    });
  }
}

/// @nodoc
mixin _$ServiceInfo {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceInfoCopyWith<ServiceInfo> get copyWith =>
      _$ServiceInfoCopyWithImpl<ServiceInfo>(this as ServiceInfo, _$identity);

  /// Serializes this ServiceInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ServiceInfo(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ServiceInfoCopyWith<$Res> {
  factory $ServiceInfoCopyWith(
          ServiceInfo value, $Res Function(ServiceInfo) _then) =
      _$ServiceInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$ServiceInfoCopyWithImpl<$Res> implements $ServiceInfoCopyWith<$Res> {
  _$ServiceInfoCopyWithImpl(this._self, this._then);

  final ServiceInfo _self;
  final $Res Function(ServiceInfo) _then;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ServiceInfo].
extension ServiceInfoPatterns on ServiceInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServiceInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServiceInfo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServiceInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServiceInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id, @JsonKey(name: 'name') String name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServiceInfo() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id, @JsonKey(name: 'name') String name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceInfo():
        return $default(_that.id, _that.name);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id, @JsonKey(name: 'name') String name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceInfo() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ServiceInfo implements ServiceInfo {
  const _ServiceInfo(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'name') this.name = ""});
  factory _ServiceInfo.fromJson(Map<String, dynamic> json) =>
      _$ServiceInfoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServiceInfoCopyWith<_ServiceInfo> get copyWith =>
      __$ServiceInfoCopyWithImpl<_ServiceInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ServiceInfo(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ServiceInfoCopyWith<$Res>
    implements $ServiceInfoCopyWith<$Res> {
  factory _$ServiceInfoCopyWith(
          _ServiceInfo value, $Res Function(_ServiceInfo) _then) =
      __$ServiceInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$ServiceInfoCopyWithImpl<$Res> implements _$ServiceInfoCopyWith<$Res> {
  __$ServiceInfoCopyWithImpl(this._self, this._then);

  final _ServiceInfo _self;
  final $Res Function(_ServiceInfo) _then;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_ServiceInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SelectedAddress {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'place')
  String get place;
  @JsonKey(name: 'houseNumber')
  String get houseNumber;
  @JsonKey(name: 'latitude')
  String get latitude;
  @JsonKey(name: 'longitude')
  String get longitude;
  @JsonKey(name: 'deleted')
  bool get deleted;
  @JsonKey(name: 'isDefault')
  bool get isDefault;
  @JsonKey(name: 'customerId')
  String get customerId;
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// Create a copy of SelectedAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectedAddressCopyWith<SelectedAddress> get copyWith =>
      _$SelectedAddressCopyWithImpl<SelectedAddress>(
          this as SelectedAddress, _$identity);

  /// Serializes this SelectedAddress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectedAddress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, place, houseNumber,
      latitude, longitude, deleted, isDefault, customerId, createdAt);

  @override
  String toString() {
    return 'SelectedAddress(id: $id, name: $name, place: $place, houseNumber: $houseNumber, latitude: $latitude, longitude: $longitude, deleted: $deleted, isDefault: $isDefault, customerId: $customerId, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $SelectedAddressCopyWith<$Res> {
  factory $SelectedAddressCopyWith(
          SelectedAddress value, $Res Function(SelectedAddress) _then) =
      _$SelectedAddressCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'place') String place,
      @JsonKey(name: 'houseNumber') String houseNumber,
      @JsonKey(name: 'latitude') String latitude,
      @JsonKey(name: 'longitude') String longitude,
      @JsonKey(name: 'deleted') bool deleted,
      @JsonKey(name: 'isDefault') bool isDefault,
      @JsonKey(name: 'customerId') String customerId,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class _$SelectedAddressCopyWithImpl<$Res>
    implements $SelectedAddressCopyWith<$Res> {
  _$SelectedAddressCopyWithImpl(this._self, this._then);

  final SelectedAddress _self;
  final $Res Function(SelectedAddress) _then;

  /// Create a copy of SelectedAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? place = null,
    Object? houseNumber = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? deleted = null,
    Object? isDefault = null,
    Object? customerId = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _self.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      houseNumber: null == houseNumber
          ? _self.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _self.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SelectedAddress].
extension SelectedAddressPatterns on SelectedAddress {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SelectedAddress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectedAddress() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SelectedAddress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectedAddress():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SelectedAddress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectedAddress() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'place') String place,
            @JsonKey(name: 'houseNumber') String houseNumber,
            @JsonKey(name: 'latitude') String latitude,
            @JsonKey(name: 'longitude') String longitude,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'isDefault') bool isDefault,
            @JsonKey(name: 'customerId') String customerId,
            @JsonKey(name: 'createdAt') String createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectedAddress() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.place,
            _that.houseNumber,
            _that.latitude,
            _that.longitude,
            _that.deleted,
            _that.isDefault,
            _that.customerId,
            _that.createdAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'place') String place,
            @JsonKey(name: 'houseNumber') String houseNumber,
            @JsonKey(name: 'latitude') String latitude,
            @JsonKey(name: 'longitude') String longitude,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'isDefault') bool isDefault,
            @JsonKey(name: 'customerId') String customerId,
            @JsonKey(name: 'createdAt') String createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectedAddress():
        return $default(
            _that.id,
            _that.name,
            _that.place,
            _that.houseNumber,
            _that.latitude,
            _that.longitude,
            _that.deleted,
            _that.isDefault,
            _that.customerId,
            _that.createdAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'place') String place,
            @JsonKey(name: 'houseNumber') String houseNumber,
            @JsonKey(name: 'latitude') String latitude,
            @JsonKey(name: 'longitude') String longitude,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'isDefault') bool isDefault,
            @JsonKey(name: 'customerId') String customerId,
            @JsonKey(name: 'createdAt') String createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectedAddress() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.place,
            _that.houseNumber,
            _that.latitude,
            _that.longitude,
            _that.deleted,
            _that.isDefault,
            _that.customerId,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SelectedAddress implements SelectedAddress {
  const _SelectedAddress(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'place') this.place = "",
      @JsonKey(name: 'houseNumber') this.houseNumber = "",
      @JsonKey(name: 'latitude') this.latitude = "",
      @JsonKey(name: 'longitude') this.longitude = "",
      @JsonKey(name: 'deleted') this.deleted = false,
      @JsonKey(name: 'isDefault') this.isDefault = false,
      @JsonKey(name: 'customerId') this.customerId = "",
      @JsonKey(name: 'createdAt') this.createdAt = ""});
  factory _SelectedAddress.fromJson(Map<String, dynamic> json) =>
      _$SelectedAddressFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'place')
  final String place;
  @override
  @JsonKey(name: 'houseNumber')
  final String houseNumber;
  @override
  @JsonKey(name: 'latitude')
  final String latitude;
  @override
  @JsonKey(name: 'longitude')
  final String longitude;
  @override
  @JsonKey(name: 'deleted')
  final bool deleted;
  @override
  @JsonKey(name: 'isDefault')
  final bool isDefault;
  @override
  @JsonKey(name: 'customerId')
  final String customerId;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  /// Create a copy of SelectedAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectedAddressCopyWith<_SelectedAddress> get copyWith =>
      __$SelectedAddressCopyWithImpl<_SelectedAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SelectedAddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectedAddress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, place, houseNumber,
      latitude, longitude, deleted, isDefault, customerId, createdAt);

  @override
  String toString() {
    return 'SelectedAddress(id: $id, name: $name, place: $place, houseNumber: $houseNumber, latitude: $latitude, longitude: $longitude, deleted: $deleted, isDefault: $isDefault, customerId: $customerId, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$SelectedAddressCopyWith<$Res>
    implements $SelectedAddressCopyWith<$Res> {
  factory _$SelectedAddressCopyWith(
          _SelectedAddress value, $Res Function(_SelectedAddress) _then) =
      __$SelectedAddressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'place') String place,
      @JsonKey(name: 'houseNumber') String houseNumber,
      @JsonKey(name: 'latitude') String latitude,
      @JsonKey(name: 'longitude') String longitude,
      @JsonKey(name: 'deleted') bool deleted,
      @JsonKey(name: 'isDefault') bool isDefault,
      @JsonKey(name: 'customerId') String customerId,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class __$SelectedAddressCopyWithImpl<$Res>
    implements _$SelectedAddressCopyWith<$Res> {
  __$SelectedAddressCopyWithImpl(this._self, this._then);

  final _SelectedAddress _self;
  final $Res Function(_SelectedAddress) _then;

  /// Create a copy of SelectedAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? place = null,
    Object? houseNumber = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? deleted = null,
    Object? isDefault = null,
    Object? customerId = null,
    Object? createdAt = null,
  }) {
    return _then(_SelectedAddress(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _self.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      houseNumber: null == houseNumber
          ? _self.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _self.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Store {
  @JsonKey(name: 'contactNumber')
  String get contactNumber;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreCopyWith<Store> get copyWith =>
      _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Store &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contactNumber);

  @override
  String toString() {
    return 'Store(contactNumber: $contactNumber)';
  }
}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) =
      _$StoreCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'contactNumber') String contactNumber});
}

/// @nodoc
class _$StoreCopyWithImpl<$Res> implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactNumber = null,
  }) {
    return _then(_self.copyWith(
      contactNumber: null == contactNumber
          ? _self.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Store].
extension StorePatterns on Store {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Store value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Store() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Store value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Store():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Store value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Store() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'contactNumber') String contactNumber)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Store() when $default != null:
        return $default(_that.contactNumber);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'contactNumber') String contactNumber)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Store():
        return $default(_that.contactNumber);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'contactNumber') String contactNumber)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Store() when $default != null:
        return $default(_that.contactNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Store implements Store {
  const _Store({@JsonKey(name: 'contactNumber') this.contactNumber = ""});
  factory _Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  @override
  @JsonKey(name: 'contactNumber')
  final String contactNumber;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreCopyWith<_Store> get copyWith =>
      __$StoreCopyWithImpl<_Store>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoreToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Store &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contactNumber);

  @override
  String toString() {
    return 'Store(contactNumber: $contactNumber)';
  }
}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) =
      __$StoreCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'contactNumber') String contactNumber});
}

/// @nodoc
class __$StoreCopyWithImpl<$Res> implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contactNumber = null,
  }) {
    return _then(_Store(
      contactNumber: null == contactNumber
          ? _self.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$TimeSlot {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'from')
  String get from;
  @JsonKey(name: 'to')
  String get to;
  @JsonKey(name: 'day')
  String get day;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<TimeSlot> get copyWith =>
      _$TimeSlotCopyWithImpl<TimeSlot>(this as TimeSlot, _$identity);

  /// Serializes this TimeSlot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeSlot &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, from, to, day);

  @override
  String toString() {
    return 'TimeSlot(id: $id, from: $from, to: $to, day: $day)';
  }
}

/// @nodoc
abstract mixin class $TimeSlotCopyWith<$Res> {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) _then) =
      _$TimeSlotCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'from') String from,
      @JsonKey(name: 'to') String to,
      @JsonKey(name: 'day') String day});
}

/// @nodoc
class _$TimeSlotCopyWithImpl<$Res> implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._self, this._then);

  final TimeSlot _self;
  final $Res Function(TimeSlot) _then;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? day = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TimeSlot].
extension TimeSlotPatterns on TimeSlot {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimeSlot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TimeSlot() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimeSlot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeSlot():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TimeSlot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeSlot() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'from') String from,
            @JsonKey(name: 'to') String to,
            @JsonKey(name: 'day') String day)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TimeSlot() when $default != null:
        return $default(_that.id, _that.from, _that.to, _that.day);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'from') String from,
            @JsonKey(name: 'to') String to,
            @JsonKey(name: 'day') String day)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeSlot():
        return $default(_that.id, _that.from, _that.to, _that.day);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'from') String from,
            @JsonKey(name: 'to') String to,
            @JsonKey(name: 'day') String day)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TimeSlot() when $default != null:
        return $default(_that.id, _that.from, _that.to, _that.day);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TimeSlot implements TimeSlot {
  const _TimeSlot(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'from') this.from = "",
      @JsonKey(name: 'to') this.to = "",
      @JsonKey(name: 'day') this.day = ""});
  factory _TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'from')
  final String from;
  @override
  @JsonKey(name: 'to')
  final String to;
  @override
  @JsonKey(name: 'day')
  final String day;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimeSlotCopyWith<_TimeSlot> get copyWith =>
      __$TimeSlotCopyWithImpl<_TimeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimeSlotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeSlot &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, from, to, day);

  @override
  String toString() {
    return 'TimeSlot(id: $id, from: $from, to: $to, day: $day)';
  }
}

/// @nodoc
abstract mixin class _$TimeSlotCopyWith<$Res>
    implements $TimeSlotCopyWith<$Res> {
  factory _$TimeSlotCopyWith(_TimeSlot value, $Res Function(_TimeSlot) _then) =
      __$TimeSlotCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'from') String from,
      @JsonKey(name: 'to') String to,
      @JsonKey(name: 'day') String day});
}

/// @nodoc
class __$TimeSlotCopyWithImpl<$Res> implements _$TimeSlotCopyWith<$Res> {
  __$TimeSlotCopyWithImpl(this._self, this._then);

  final _TimeSlot _self;
  final $Res Function(_TimeSlot) _then;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? day = null,
  }) {
    return _then(_TimeSlot(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Payment {
  @JsonKey(name: 'method')
  String get method;
  @JsonKey(name: 'walletTransaction')
  WalletItem? get walletTransaction;
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'amount')
  String get amount;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<Payment> get copyWith =>
      _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Payment &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.walletTransaction, walletTransaction) ||
                other.walletTransaction == walletTransaction) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, method, walletTransaction, status, amount);

  @override
  String toString() {
    return 'Payment(method: $method, walletTransaction: $walletTransaction, status: $status, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) =
      _$PaymentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'method') String method,
      @JsonKey(name: 'walletTransaction') WalletItem? walletTransaction,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'amount') String amount});

  $WalletItemCopyWith<$Res>? get walletTransaction;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res> implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? walletTransaction = freezed,
    Object? status = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      walletTransaction: freezed == walletTransaction
          ? _self.walletTransaction
          : walletTransaction // ignore: cast_nullable_to_non_nullable
              as WalletItem?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletItemCopyWith<$Res>? get walletTransaction {
    if (_self.walletTransaction == null) {
      return null;
    }

    return $WalletItemCopyWith<$Res>(_self.walletTransaction!, (value) {
      return _then(_self.copyWith(walletTransaction: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Payment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Payment() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Payment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Payment():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Payment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Payment() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'method') String method,
            @JsonKey(name: 'walletTransaction') WalletItem? walletTransaction,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'amount') String amount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Payment() when $default != null:
        return $default(
            _that.method, _that.walletTransaction, _that.status, _that.amount);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'method') String method,
            @JsonKey(name: 'walletTransaction') WalletItem? walletTransaction,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'amount') String amount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Payment():
        return $default(
            _that.method, _that.walletTransaction, _that.status, _that.amount);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'method') String method,
            @JsonKey(name: 'walletTransaction') WalletItem? walletTransaction,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'amount') String amount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Payment() when $default != null:
        return $default(
            _that.method, _that.walletTransaction, _that.status, _that.amount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Payment implements Payment {
  const _Payment(
      {@JsonKey(name: 'method') this.method = "",
      @JsonKey(name: 'walletTransaction') this.walletTransaction,
      @JsonKey(name: 'status') this.status = "",
      @JsonKey(name: 'amount') this.amount = ""});
  factory _Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  @override
  @JsonKey(name: 'method')
  final String method;
  @override
  @JsonKey(name: 'walletTransaction')
  final WalletItem? walletTransaction;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'amount')
  final String amount;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentCopyWith<_Payment> get copyWith =>
      __$PaymentCopyWithImpl<_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Payment &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.walletTransaction, walletTransaction) ||
                other.walletTransaction == walletTransaction) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, method, walletTransaction, status, amount);

  @override
  String toString() {
    return 'Payment(method: $method, walletTransaction: $walletTransaction, status: $status, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) =
      __$PaymentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'method') String method,
      @JsonKey(name: 'walletTransaction') WalletItem? walletTransaction,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'amount') String amount});

  @override
  $WalletItemCopyWith<$Res>? get walletTransaction;
}

/// @nodoc
class __$PaymentCopyWithImpl<$Res> implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? method = null,
    Object? walletTransaction = freezed,
    Object? status = null,
    Object? amount = null,
  }) {
    return _then(_Payment(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      walletTransaction: freezed == walletTransaction
          ? _self.walletTransaction
          : walletTransaction // ignore: cast_nullable_to_non_nullable
              as WalletItem?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletItemCopyWith<$Res>? get walletTransaction {
    if (_self.walletTransaction == null) {
      return null;
    }

    return $WalletItemCopyWith<$Res>(_self.walletTransaction!, (value) {
      return _then(_self.copyWith(walletTransaction: value));
    });
  }
}

/// @nodoc
mixin _$WalletItem {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'walletId')
  String get walletId;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'amount')
  double get amount;
  @JsonKey(name: 'type')
  String get type;

  /// Create a copy of WalletItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WalletItemCopyWith<WalletItem> get copyWith =>
      _$WalletItemCopyWithImpl<WalletItem>(this as WalletItem, _$identity);

  /// Serializes this WalletItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, walletId, description, amount, type);

  @override
  String toString() {
    return 'WalletItem(id: $id, walletId: $walletId, description: $description, amount: $amount, type: $type)';
  }
}

/// @nodoc
abstract mixin class $WalletItemCopyWith<$Res> {
  factory $WalletItemCopyWith(
          WalletItem value, $Res Function(WalletItem) _then) =
      _$WalletItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'walletId') String walletId,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$WalletItemCopyWithImpl<$Res> implements $WalletItemCopyWith<$Res> {
  _$WalletItemCopyWithImpl(this._self, this._then);

  final WalletItem _self;
  final $Res Function(WalletItem) _then;

  /// Create a copy of WalletItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? walletId = null,
    Object? description = null,
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      walletId: null == walletId
          ? _self.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [WalletItem].
extension WalletItemPatterns on WalletItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WalletItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WalletItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WalletItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WalletItem():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WalletItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WalletItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'walletId') String walletId,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'amount') double amount,
            @JsonKey(name: 'type') String type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WalletItem() when $default != null:
        return $default(_that.id, _that.walletId, _that.description,
            _that.amount, _that.type);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'walletId') String walletId,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'amount') double amount,
            @JsonKey(name: 'type') String type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WalletItem():
        return $default(_that.id, _that.walletId, _that.description,
            _that.amount, _that.type);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'walletId') String walletId,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'amount') double amount,
            @JsonKey(name: 'type') String type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WalletItem() when $default != null:
        return $default(_that.id, _that.walletId, _that.description,
            _that.amount, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WalletItem implements WalletItem {
  const _WalletItem(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'walletId') this.walletId = "",
      @JsonKey(name: 'description') this.description = "",
      @JsonKey(name: 'amount') this.amount = 0.0,
      @JsonKey(name: 'type') this.type = ""});
  factory _WalletItem.fromJson(Map<String, dynamic> json) =>
      _$WalletItemFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'walletId')
  final String walletId;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'type')
  final String type;

  /// Create a copy of WalletItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WalletItemCopyWith<_WalletItem> get copyWith =>
      __$WalletItemCopyWithImpl<_WalletItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WalletItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, walletId, description, amount, type);

  @override
  String toString() {
    return 'WalletItem(id: $id, walletId: $walletId, description: $description, amount: $amount, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$WalletItemCopyWith<$Res>
    implements $WalletItemCopyWith<$Res> {
  factory _$WalletItemCopyWith(
          _WalletItem value, $Res Function(_WalletItem) _then) =
      __$WalletItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'walletId') String walletId,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class __$WalletItemCopyWithImpl<$Res> implements _$WalletItemCopyWith<$Res> {
  __$WalletItemCopyWithImpl(this._self, this._then);

  final _WalletItem _self;
  final $Res Function(_WalletItem) _then;

  /// Create a copy of WalletItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? walletId = null,
    Object? description = null,
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_WalletItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      walletId: null == walletId
          ? _self.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
