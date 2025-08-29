// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetailsResponseModel {
  String get id;
  String get customerId;
  String get storeId;
  String get orderedFrom;
  String get customerNote;
  String get type;
  String get status;
  int get refId;
  String get pickupSlotId;
  String get deliverySlotId;
  String get selectedAddressId;
  bool get expressService;
  String get pickupAt;
  String get deliveryAt;
  String get createdAt;
  String get totalAmount;
  String get discount;
  String get paidAmount;
  String get assignedPickupDriverId;
  String get assignedDeliveryDriverId;
  String get driverNotes;
  Customer get customer;
  List<OrderStatus> get statusHistory;
  SelectedAddress get selectedAddress;
  TimeSlot get pickupSlot;
  TimeSlot get deliverySlot;
  List<OrderedItems> get orderedItems;
  List<PromoItem> get promoUsages;
  List<Payment> get payment;
  List<AdditionalCharges> get additionalCharges;

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderDetailsResponseModelCopyWith<OrderDetailsResponseModel> get copyWith =>
      _$OrderDetailsResponseModelCopyWithImpl<OrderDetailsResponseModel>(
          this as OrderDetailsResponseModel, _$identity);

  /// Serializes this OrderDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderDetailsResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.orderedFrom, orderedFrom) ||
                other.orderedFrom == orderedFrom) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
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
            (identical(other.assignedPickupDriverId, assignedPickupDriverId) ||
                other.assignedPickupDriverId == assignedPickupDriverId) &&
            (identical(
                    other.assignedDeliveryDriverId, assignedDeliveryDriverId) ||
                other.assignedDeliveryDriverId == assignedDeliveryDriverId) &&
            (identical(other.driverNotes, driverNotes) ||
                other.driverNotes == driverNotes) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other.statusHistory, statusHistory) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.pickupSlot, pickupSlot) ||
                other.pickupSlot == pickupSlot) &&
            (identical(other.deliverySlot, deliverySlot) ||
                other.deliverySlot == deliverySlot) &&
            const DeepCollectionEquality()
                .equals(other.orderedItems, orderedItems) &&
            const DeepCollectionEquality()
                .equals(other.promoUsages, promoUsages) &&
            const DeepCollectionEquality().equals(other.payment, payment) &&
            const DeepCollectionEquality()
                .equals(other.additionalCharges, additionalCharges));
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
        assignedPickupDriverId,
        assignedDeliveryDriverId,
        driverNotes,
        customer,
        const DeepCollectionEquality().hash(statusHistory),
        selectedAddress,
        pickupSlot,
        deliverySlot,
        const DeepCollectionEquality().hash(orderedItems),
        const DeepCollectionEquality().hash(promoUsages),
        const DeepCollectionEquality().hash(payment),
        const DeepCollectionEquality().hash(additionalCharges)
      ]);

  @override
  String toString() {
    return 'OrderDetailsResponseModel(id: $id, customerId: $customerId, storeId: $storeId, orderedFrom: $orderedFrom, customerNote: $customerNote, type: $type, status: $status, refId: $refId, pickupSlotId: $pickupSlotId, deliverySlotId: $deliverySlotId, selectedAddressId: $selectedAddressId, expressService: $expressService, pickupAt: $pickupAt, deliveryAt: $deliveryAt, createdAt: $createdAt, totalAmount: $totalAmount, discount: $discount, paidAmount: $paidAmount, assignedPickupDriverId: $assignedPickupDriverId, assignedDeliveryDriverId: $assignedDeliveryDriverId, driverNotes: $driverNotes, customer: $customer, statusHistory: $statusHistory, selectedAddress: $selectedAddress, pickupSlot: $pickupSlot, deliverySlot: $deliverySlot, orderedItems: $orderedItems, promoUsages: $promoUsages, payment: $payment, additionalCharges: $additionalCharges)';
  }
}

/// @nodoc
abstract mixin class $OrderDetailsResponseModelCopyWith<$Res> {
  factory $OrderDetailsResponseModelCopyWith(OrderDetailsResponseModel value,
          $Res Function(OrderDetailsResponseModel) _then) =
      _$OrderDetailsResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String customerId,
      String storeId,
      String orderedFrom,
      String customerNote,
      String type,
      String status,
      int refId,
      String pickupSlotId,
      String deliverySlotId,
      String selectedAddressId,
      bool expressService,
      String pickupAt,
      String deliveryAt,
      String createdAt,
      String totalAmount,
      String discount,
      String paidAmount,
      String assignedPickupDriverId,
      String assignedDeliveryDriverId,
      String driverNotes,
      Customer customer,
      List<OrderStatus> statusHistory,
      SelectedAddress selectedAddress,
      TimeSlot pickupSlot,
      TimeSlot deliverySlot,
      List<OrderedItems> orderedItems,
      List<PromoItem> promoUsages,
      List<Payment> payment,
      List<AdditionalCharges> additionalCharges});

  $CustomerCopyWith<$Res> get customer;
  $SelectedAddressCopyWith<$Res> get selectedAddress;
  $TimeSlotCopyWith<$Res> get pickupSlot;
  $TimeSlotCopyWith<$Res> get deliverySlot;
}

/// @nodoc
class _$OrderDetailsResponseModelCopyWithImpl<$Res>
    implements $OrderDetailsResponseModelCopyWith<$Res> {
  _$OrderDetailsResponseModelCopyWithImpl(this._self, this._then);

  final OrderDetailsResponseModel _self;
  final $Res Function(OrderDetailsResponseModel) _then;

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? storeId = null,
    Object? orderedFrom = null,
    Object? customerNote = null,
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
    Object? assignedPickupDriverId = null,
    Object? assignedDeliveryDriverId = null,
    Object? driverNotes = null,
    Object? customer = null,
    Object? statusHistory = null,
    Object? selectedAddress = null,
    Object? pickupSlot = null,
    Object? deliverySlot = null,
    Object? orderedItems = null,
    Object? promoUsages = null,
    Object? payment = null,
    Object? additionalCharges = null,
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
      customerNote: null == customerNote
          ? _self.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int,
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
      assignedPickupDriverId: null == assignedPickupDriverId
          ? _self.assignedPickupDriverId
          : assignedPickupDriverId // ignore: cast_nullable_to_non_nullable
              as String,
      assignedDeliveryDriverId: null == assignedDeliveryDriverId
          ? _self.assignedDeliveryDriverId
          : assignedDeliveryDriverId // ignore: cast_nullable_to_non_nullable
              as String,
      driverNotes: null == driverNotes
          ? _self.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      statusHistory: null == statusHistory
          ? _self.statusHistory
          : statusHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
      selectedAddress: null == selectedAddress
          ? _self.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as SelectedAddress,
      pickupSlot: null == pickupSlot
          ? _self.pickupSlot
          : pickupSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot,
      deliverySlot: null == deliverySlot
          ? _self.deliverySlot
          : deliverySlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot,
      orderedItems: null == orderedItems
          ? _self.orderedItems
          : orderedItems // ignore: cast_nullable_to_non_nullable
              as List<OrderedItems>,
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
    ));
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_self.customer, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedAddressCopyWith<$Res> get selectedAddress {
    return $SelectedAddressCopyWith<$Res>(_self.selectedAddress, (value) {
      return _then(_self.copyWith(selectedAddress: value));
    });
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res> get pickupSlot {
    return $TimeSlotCopyWith<$Res>(_self.pickupSlot, (value) {
      return _then(_self.copyWith(pickupSlot: value));
    });
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res> get deliverySlot {
    return $TimeSlotCopyWith<$Res>(_self.deliverySlot, (value) {
      return _then(_self.copyWith(deliverySlot: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderDetailsResponseModel].
extension OrderDetailsResponseModelPatterns on OrderDetailsResponseModel {
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
    TResult Function(_OrderDetailsResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderDetailsResponseModel() when $default != null:
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
    TResult Function(_OrderDetailsResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDetailsResponseModel():
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
    TResult? Function(_OrderDetailsResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDetailsResponseModel() when $default != null:
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
            String id,
            String customerId,
            String storeId,
            String orderedFrom,
            String customerNote,
            String type,
            String status,
            int refId,
            String pickupSlotId,
            String deliverySlotId,
            String selectedAddressId,
            bool expressService,
            String pickupAt,
            String deliveryAt,
            String createdAt,
            String totalAmount,
            String discount,
            String paidAmount,
            String assignedPickupDriverId,
            String assignedDeliveryDriverId,
            String driverNotes,
            Customer customer,
            List<OrderStatus> statusHistory,
            SelectedAddress selectedAddress,
            TimeSlot pickupSlot,
            TimeSlot deliverySlot,
            List<OrderedItems> orderedItems,
            List<PromoItem> promoUsages,
            List<Payment> payment,
            List<AdditionalCharges> additionalCharges)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderDetailsResponseModel() when $default != null:
        return $default(
            _that.id,
            _that.customerId,
            _that.storeId,
            _that.orderedFrom,
            _that.customerNote,
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
            _that.assignedPickupDriverId,
            _that.assignedDeliveryDriverId,
            _that.driverNotes,
            _that.customer,
            _that.statusHistory,
            _that.selectedAddress,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.orderedItems,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges);
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
            String id,
            String customerId,
            String storeId,
            String orderedFrom,
            String customerNote,
            String type,
            String status,
            int refId,
            String pickupSlotId,
            String deliverySlotId,
            String selectedAddressId,
            bool expressService,
            String pickupAt,
            String deliveryAt,
            String createdAt,
            String totalAmount,
            String discount,
            String paidAmount,
            String assignedPickupDriverId,
            String assignedDeliveryDriverId,
            String driverNotes,
            Customer customer,
            List<OrderStatus> statusHistory,
            SelectedAddress selectedAddress,
            TimeSlot pickupSlot,
            TimeSlot deliverySlot,
            List<OrderedItems> orderedItems,
            List<PromoItem> promoUsages,
            List<Payment> payment,
            List<AdditionalCharges> additionalCharges)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDetailsResponseModel():
        return $default(
            _that.id,
            _that.customerId,
            _that.storeId,
            _that.orderedFrom,
            _that.customerNote,
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
            _that.assignedPickupDriverId,
            _that.assignedDeliveryDriverId,
            _that.driverNotes,
            _that.customer,
            _that.statusHistory,
            _that.selectedAddress,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.orderedItems,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges);
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
            String id,
            String customerId,
            String storeId,
            String orderedFrom,
            String customerNote,
            String type,
            String status,
            int refId,
            String pickupSlotId,
            String deliverySlotId,
            String selectedAddressId,
            bool expressService,
            String pickupAt,
            String deliveryAt,
            String createdAt,
            String totalAmount,
            String discount,
            String paidAmount,
            String assignedPickupDriverId,
            String assignedDeliveryDriverId,
            String driverNotes,
            Customer customer,
            List<OrderStatus> statusHistory,
            SelectedAddress selectedAddress,
            TimeSlot pickupSlot,
            TimeSlot deliverySlot,
            List<OrderedItems> orderedItems,
            List<PromoItem> promoUsages,
            List<Payment> payment,
            List<AdditionalCharges> additionalCharges)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDetailsResponseModel() when $default != null:
        return $default(
            _that.id,
            _that.customerId,
            _that.storeId,
            _that.orderedFrom,
            _that.customerNote,
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
            _that.assignedPickupDriverId,
            _that.assignedDeliveryDriverId,
            _that.driverNotes,
            _that.customer,
            _that.statusHistory,
            _that.selectedAddress,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.orderedItems,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderDetailsResponseModel implements OrderDetailsResponseModel {
  const _OrderDetailsResponseModel(
      {this.id = '',
      this.customerId = '',
      this.storeId = '',
      this.orderedFrom = '',
      this.customerNote = '',
      this.type = '',
      this.status = '',
      this.refId = 0,
      this.pickupSlotId = '',
      this.deliverySlotId = '',
      this.selectedAddressId = '',
      this.expressService = false,
      this.pickupAt = '',
      this.deliveryAt = '',
      this.createdAt = '',
      this.totalAmount = '',
      this.discount = '',
      this.paidAmount = '',
      this.assignedPickupDriverId = '',
      this.assignedDeliveryDriverId = '',
      this.driverNotes = '',
      this.customer = const Customer(),
      final List<OrderStatus> statusHistory = const [],
      this.selectedAddress = const SelectedAddress(),
      this.pickupSlot = const TimeSlot(),
      this.deliverySlot = const TimeSlot(),
      final List<OrderedItems> orderedItems = const [],
      final List<PromoItem> promoUsages = const [],
      final List<Payment> payment = const [],
      final List<AdditionalCharges> additionalCharges = const []})
      : _statusHistory = statusHistory,
        _orderedItems = orderedItems,
        _promoUsages = promoUsages,
        _payment = payment,
        _additionalCharges = additionalCharges;
  factory _OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseModelFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String customerId;
  @override
  @JsonKey()
  final String storeId;
  @override
  @JsonKey()
  final String orderedFrom;
  @override
  @JsonKey()
  final String customerNote;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final int refId;
  @override
  @JsonKey()
  final String pickupSlotId;
  @override
  @JsonKey()
  final String deliverySlotId;
  @override
  @JsonKey()
  final String selectedAddressId;
  @override
  @JsonKey()
  final bool expressService;
  @override
  @JsonKey()
  final String pickupAt;
  @override
  @JsonKey()
  final String deliveryAt;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String totalAmount;
  @override
  @JsonKey()
  final String discount;
  @override
  @JsonKey()
  final String paidAmount;
  @override
  @JsonKey()
  final String assignedPickupDriverId;
  @override
  @JsonKey()
  final String assignedDeliveryDriverId;
  @override
  @JsonKey()
  final String driverNotes;
  @override
  @JsonKey()
  final Customer customer;
  final List<OrderStatus> _statusHistory;
  @override
  @JsonKey()
  List<OrderStatus> get statusHistory {
    if (_statusHistory is EqualUnmodifiableListView) return _statusHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusHistory);
  }

  @override
  @JsonKey()
  final SelectedAddress selectedAddress;
  @override
  @JsonKey()
  final TimeSlot pickupSlot;
  @override
  @JsonKey()
  final TimeSlot deliverySlot;
  final List<OrderedItems> _orderedItems;
  @override
  @JsonKey()
  List<OrderedItems> get orderedItems {
    if (_orderedItems is EqualUnmodifiableListView) return _orderedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderedItems);
  }

  final List<PromoItem> _promoUsages;
  @override
  @JsonKey()
  List<PromoItem> get promoUsages {
    if (_promoUsages is EqualUnmodifiableListView) return _promoUsages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promoUsages);
  }

  final List<Payment> _payment;
  @override
  @JsonKey()
  List<Payment> get payment {
    if (_payment is EqualUnmodifiableListView) return _payment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payment);
  }

  final List<AdditionalCharges> _additionalCharges;
  @override
  @JsonKey()
  List<AdditionalCharges> get additionalCharges {
    if (_additionalCharges is EqualUnmodifiableListView)
      return _additionalCharges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalCharges);
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderDetailsResponseModelCopyWith<_OrderDetailsResponseModel>
      get copyWith =>
          __$OrderDetailsResponseModelCopyWithImpl<_OrderDetailsResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderDetailsResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDetailsResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.orderedFrom, orderedFrom) ||
                other.orderedFrom == orderedFrom) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
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
            (identical(other.assignedPickupDriverId, assignedPickupDriverId) ||
                other.assignedPickupDriverId == assignedPickupDriverId) &&
            (identical(
                    other.assignedDeliveryDriverId, assignedDeliveryDriverId) ||
                other.assignedDeliveryDriverId == assignedDeliveryDriverId) &&
            (identical(other.driverNotes, driverNotes) ||
                other.driverNotes == driverNotes) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other._statusHistory, _statusHistory) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.pickupSlot, pickupSlot) ||
                other.pickupSlot == pickupSlot) &&
            (identical(other.deliverySlot, deliverySlot) ||
                other.deliverySlot == deliverySlot) &&
            const DeepCollectionEquality()
                .equals(other._orderedItems, _orderedItems) &&
            const DeepCollectionEquality()
                .equals(other._promoUsages, _promoUsages) &&
            const DeepCollectionEquality().equals(other._payment, _payment) &&
            const DeepCollectionEquality()
                .equals(other._additionalCharges, _additionalCharges));
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
        assignedPickupDriverId,
        assignedDeliveryDriverId,
        driverNotes,
        customer,
        const DeepCollectionEquality().hash(_statusHistory),
        selectedAddress,
        pickupSlot,
        deliverySlot,
        const DeepCollectionEquality().hash(_orderedItems),
        const DeepCollectionEquality().hash(_promoUsages),
        const DeepCollectionEquality().hash(_payment),
        const DeepCollectionEquality().hash(_additionalCharges)
      ]);

  @override
  String toString() {
    return 'OrderDetailsResponseModel(id: $id, customerId: $customerId, storeId: $storeId, orderedFrom: $orderedFrom, customerNote: $customerNote, type: $type, status: $status, refId: $refId, pickupSlotId: $pickupSlotId, deliverySlotId: $deliverySlotId, selectedAddressId: $selectedAddressId, expressService: $expressService, pickupAt: $pickupAt, deliveryAt: $deliveryAt, createdAt: $createdAt, totalAmount: $totalAmount, discount: $discount, paidAmount: $paidAmount, assignedPickupDriverId: $assignedPickupDriverId, assignedDeliveryDriverId: $assignedDeliveryDriverId, driverNotes: $driverNotes, customer: $customer, statusHistory: $statusHistory, selectedAddress: $selectedAddress, pickupSlot: $pickupSlot, deliverySlot: $deliverySlot, orderedItems: $orderedItems, promoUsages: $promoUsages, payment: $payment, additionalCharges: $additionalCharges)';
  }
}

/// @nodoc
abstract mixin class _$OrderDetailsResponseModelCopyWith<$Res>
    implements $OrderDetailsResponseModelCopyWith<$Res> {
  factory _$OrderDetailsResponseModelCopyWith(_OrderDetailsResponseModel value,
          $Res Function(_OrderDetailsResponseModel) _then) =
      __$OrderDetailsResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String customerId,
      String storeId,
      String orderedFrom,
      String customerNote,
      String type,
      String status,
      int refId,
      String pickupSlotId,
      String deliverySlotId,
      String selectedAddressId,
      bool expressService,
      String pickupAt,
      String deliveryAt,
      String createdAt,
      String totalAmount,
      String discount,
      String paidAmount,
      String assignedPickupDriverId,
      String assignedDeliveryDriverId,
      String driverNotes,
      Customer customer,
      List<OrderStatus> statusHistory,
      SelectedAddress selectedAddress,
      TimeSlot pickupSlot,
      TimeSlot deliverySlot,
      List<OrderedItems> orderedItems,
      List<PromoItem> promoUsages,
      List<Payment> payment,
      List<AdditionalCharges> additionalCharges});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $SelectedAddressCopyWith<$Res> get selectedAddress;
  @override
  $TimeSlotCopyWith<$Res> get pickupSlot;
  @override
  $TimeSlotCopyWith<$Res> get deliverySlot;
}

/// @nodoc
class __$OrderDetailsResponseModelCopyWithImpl<$Res>
    implements _$OrderDetailsResponseModelCopyWith<$Res> {
  __$OrderDetailsResponseModelCopyWithImpl(this._self, this._then);

  final _OrderDetailsResponseModel _self;
  final $Res Function(_OrderDetailsResponseModel) _then;

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? storeId = null,
    Object? orderedFrom = null,
    Object? customerNote = null,
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
    Object? assignedPickupDriverId = null,
    Object? assignedDeliveryDriverId = null,
    Object? driverNotes = null,
    Object? customer = null,
    Object? statusHistory = null,
    Object? selectedAddress = null,
    Object? pickupSlot = null,
    Object? deliverySlot = null,
    Object? orderedItems = null,
    Object? promoUsages = null,
    Object? payment = null,
    Object? additionalCharges = null,
  }) {
    return _then(_OrderDetailsResponseModel(
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
      customerNote: null == customerNote
          ? _self.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int,
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
      assignedPickupDriverId: null == assignedPickupDriverId
          ? _self.assignedPickupDriverId
          : assignedPickupDriverId // ignore: cast_nullable_to_non_nullable
              as String,
      assignedDeliveryDriverId: null == assignedDeliveryDriverId
          ? _self.assignedDeliveryDriverId
          : assignedDeliveryDriverId // ignore: cast_nullable_to_non_nullable
              as String,
      driverNotes: null == driverNotes
          ? _self.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      statusHistory: null == statusHistory
          ? _self._statusHistory
          : statusHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
      selectedAddress: null == selectedAddress
          ? _self.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as SelectedAddress,
      pickupSlot: null == pickupSlot
          ? _self.pickupSlot
          : pickupSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot,
      deliverySlot: null == deliverySlot
          ? _self.deliverySlot
          : deliverySlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot,
      orderedItems: null == orderedItems
          ? _self._orderedItems
          : orderedItems // ignore: cast_nullable_to_non_nullable
              as List<OrderedItems>,
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
    ));
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_self.customer, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedAddressCopyWith<$Res> get selectedAddress {
    return $SelectedAddressCopyWith<$Res>(_self.selectedAddress, (value) {
      return _then(_self.copyWith(selectedAddress: value));
    });
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res> get pickupSlot {
    return $TimeSlotCopyWith<$Res>(_self.pickupSlot, (value) {
      return _then(_self.copyWith(pickupSlot: value));
    });
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res> get deliverySlot {
    return $TimeSlotCopyWith<$Res>(_self.deliverySlot, (value) {
      return _then(_self.copyWith(deliverySlot: value));
    });
  }
}

/// @nodoc
mixin _$OrderedItems {
  String get id;
  int get quantity;
  String get soldPrice;
  String get listedPrice;
  @JsonKey(name: 'service')
  OrderItemService get service;
  Item get item;
  String get driverNotes;

  /// Create a copy of OrderedItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderedItemsCopyWith<OrderedItems> get copyWith =>
      _$OrderedItemsCopyWithImpl<OrderedItems>(
          this as OrderedItems, _$identity);

  /// Serializes this OrderedItems to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderedItems &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.soldPrice, soldPrice) ||
                other.soldPrice == soldPrice) &&
            (identical(other.listedPrice, listedPrice) ||
                other.listedPrice == listedPrice) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.driverNotes, driverNotes) ||
                other.driverNotes == driverNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, soldPrice,
      listedPrice, service, item, driverNotes);

  @override
  String toString() {
    return 'OrderedItems(id: $id, quantity: $quantity, soldPrice: $soldPrice, listedPrice: $listedPrice, service: $service, item: $item, driverNotes: $driverNotes)';
  }
}

/// @nodoc
abstract mixin class $OrderedItemsCopyWith<$Res> {
  factory $OrderedItemsCopyWith(
          OrderedItems value, $Res Function(OrderedItems) _then) =
      _$OrderedItemsCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      int quantity,
      String soldPrice,
      String listedPrice,
      @JsonKey(name: 'service') OrderItemService service,
      Item item,
      String driverNotes});

  $OrderItemServiceCopyWith<$Res> get service;
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$OrderedItemsCopyWithImpl<$Res> implements $OrderedItemsCopyWith<$Res> {
  _$OrderedItemsCopyWithImpl(this._self, this._then);

  final OrderedItems _self;
  final $Res Function(OrderedItems) _then;

  /// Create a copy of OrderedItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? soldPrice = null,
    Object? listedPrice = null,
    Object? service = null,
    Object? item = null,
    Object? driverNotes = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      soldPrice: null == soldPrice
          ? _self.soldPrice
          : soldPrice // ignore: cast_nullable_to_non_nullable
              as String,
      listedPrice: null == listedPrice
          ? _self.listedPrice
          : listedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as OrderItemService,
      item: null == item
          ? _self.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      driverNotes: null == driverNotes
          ? _self.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of OrderedItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemServiceCopyWith<$Res> get service {
    return $OrderItemServiceCopyWith<$Res>(_self.service, (value) {
      return _then(_self.copyWith(service: value));
    });
  }

  /// Create a copy of OrderedItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_self.item, (value) {
      return _then(_self.copyWith(item: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderedItems].
extension OrderedItemsPatterns on OrderedItems {
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
    TResult Function(_OrderedItems value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderedItems() when $default != null:
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
    TResult Function(_OrderedItems value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedItems():
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
    TResult? Function(_OrderedItems value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedItems() when $default != null:
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
            String id,
            int quantity,
            String soldPrice,
            String listedPrice,
            @JsonKey(name: 'service') OrderItemService service,
            Item item,
            String driverNotes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderedItems() when $default != null:
        return $default(_that.id, _that.quantity, _that.soldPrice,
            _that.listedPrice, _that.service, _that.item, _that.driverNotes);
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
            String id,
            int quantity,
            String soldPrice,
            String listedPrice,
            @JsonKey(name: 'service') OrderItemService service,
            Item item,
            String driverNotes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedItems():
        return $default(_that.id, _that.quantity, _that.soldPrice,
            _that.listedPrice, _that.service, _that.item, _that.driverNotes);
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
            String id,
            int quantity,
            String soldPrice,
            String listedPrice,
            @JsonKey(name: 'service') OrderItemService service,
            Item item,
            String driverNotes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedItems() when $default != null:
        return $default(_that.id, _that.quantity, _that.soldPrice,
            _that.listedPrice, _that.service, _that.item, _that.driverNotes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderedItems implements OrderedItems {
  const _OrderedItems(
      {this.id = "",
      this.quantity = 0,
      this.soldPrice = "",
      this.listedPrice = "",
      @JsonKey(name: 'service') this.service = const OrderItemService(),
      this.item = const Item(),
      this.driverNotes = ""});
  factory _OrderedItems.fromJson(Map<String, dynamic> json) =>
      _$OrderedItemsFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final String soldPrice;
  @override
  @JsonKey()
  final String listedPrice;
  @override
  @JsonKey(name: 'service')
  final OrderItemService service;
  @override
  @JsonKey()
  final Item item;
  @override
  @JsonKey()
  final String driverNotes;

  /// Create a copy of OrderedItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderedItemsCopyWith<_OrderedItems> get copyWith =>
      __$OrderedItemsCopyWithImpl<_OrderedItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderedItemsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderedItems &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.soldPrice, soldPrice) ||
                other.soldPrice == soldPrice) &&
            (identical(other.listedPrice, listedPrice) ||
                other.listedPrice == listedPrice) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.driverNotes, driverNotes) ||
                other.driverNotes == driverNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, soldPrice,
      listedPrice, service, item, driverNotes);

  @override
  String toString() {
    return 'OrderedItems(id: $id, quantity: $quantity, soldPrice: $soldPrice, listedPrice: $listedPrice, service: $service, item: $item, driverNotes: $driverNotes)';
  }
}

/// @nodoc
abstract mixin class _$OrderedItemsCopyWith<$Res>
    implements $OrderedItemsCopyWith<$Res> {
  factory _$OrderedItemsCopyWith(
          _OrderedItems value, $Res Function(_OrderedItems) _then) =
      __$OrderedItemsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      int quantity,
      String soldPrice,
      String listedPrice,
      @JsonKey(name: 'service') OrderItemService service,
      Item item,
      String driverNotes});

  @override
  $OrderItemServiceCopyWith<$Res> get service;
  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$OrderedItemsCopyWithImpl<$Res>
    implements _$OrderedItemsCopyWith<$Res> {
  __$OrderedItemsCopyWithImpl(this._self, this._then);

  final _OrderedItems _self;
  final $Res Function(_OrderedItems) _then;

  /// Create a copy of OrderedItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? soldPrice = null,
    Object? listedPrice = null,
    Object? service = null,
    Object? item = null,
    Object? driverNotes = null,
  }) {
    return _then(_OrderedItems(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      soldPrice: null == soldPrice
          ? _self.soldPrice
          : soldPrice // ignore: cast_nullable_to_non_nullable
              as String,
      listedPrice: null == listedPrice
          ? _self.listedPrice
          : listedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as OrderItemService,
      item: null == item
          ? _self.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      driverNotes: null == driverNotes
          ? _self.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of OrderedItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemServiceCopyWith<$Res> get service {
    return $OrderItemServiceCopyWith<$Res>(_self.service, (value) {
      return _then(_self.copyWith(service: value));
    });
  }

  /// Create a copy of OrderedItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_self.item, (value) {
      return _then(_self.copyWith(item: value));
    });
  }
}

/// @nodoc
mixin _$ScannedBags {
  String get id;
  String get orderServiceId;
  String get bagId;

  /// Create a copy of ScannedBags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScannedBagsCopyWith<ScannedBags> get copyWith =>
      _$ScannedBagsCopyWithImpl<ScannedBags>(this as ScannedBags, _$identity);

  /// Serializes this ScannedBags to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScannedBags &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderServiceId, orderServiceId) ||
                other.orderServiceId == orderServiceId) &&
            (identical(other.bagId, bagId) || other.bagId == bagId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderServiceId, bagId);

  @override
  String toString() {
    return 'ScannedBags(id: $id, orderServiceId: $orderServiceId, bagId: $bagId)';
  }
}

/// @nodoc
abstract mixin class $ScannedBagsCopyWith<$Res> {
  factory $ScannedBagsCopyWith(
          ScannedBags value, $Res Function(ScannedBags) _then) =
      _$ScannedBagsCopyWithImpl;
  @useResult
  $Res call({String id, String orderServiceId, String bagId});
}

/// @nodoc
class _$ScannedBagsCopyWithImpl<$Res> implements $ScannedBagsCopyWith<$Res> {
  _$ScannedBagsCopyWithImpl(this._self, this._then);

  final ScannedBags _self;
  final $Res Function(ScannedBags) _then;

  /// Create a copy of ScannedBags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderServiceId = null,
    Object? bagId = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderServiceId: null == orderServiceId
          ? _self.orderServiceId
          : orderServiceId // ignore: cast_nullable_to_non_nullable
              as String,
      bagId: null == bagId
          ? _self.bagId
          : bagId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ScannedBags].
extension ScannedBagsPatterns on ScannedBags {
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
    TResult Function(_ScannedBags value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScannedBags() when $default != null:
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
    TResult Function(_ScannedBags value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScannedBags():
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
    TResult? Function(_ScannedBags value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScannedBags() when $default != null:
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
    TResult Function(String id, String orderServiceId, String bagId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScannedBags() when $default != null:
        return $default(_that.id, _that.orderServiceId, _that.bagId);
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
    TResult Function(String id, String orderServiceId, String bagId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScannedBags():
        return $default(_that.id, _that.orderServiceId, _that.bagId);
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
    TResult? Function(String id, String orderServiceId, String bagId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScannedBags() when $default != null:
        return $default(_that.id, _that.orderServiceId, _that.bagId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ScannedBags implements ScannedBags {
  const _ScannedBags({this.id = "", this.orderServiceId = "", this.bagId = ""});
  factory _ScannedBags.fromJson(Map<String, dynamic> json) =>
      _$ScannedBagsFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String orderServiceId;
  @override
  @JsonKey()
  final String bagId;

  /// Create a copy of ScannedBags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScannedBagsCopyWith<_ScannedBags> get copyWith =>
      __$ScannedBagsCopyWithImpl<_ScannedBags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ScannedBagsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScannedBags &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderServiceId, orderServiceId) ||
                other.orderServiceId == orderServiceId) &&
            (identical(other.bagId, bagId) || other.bagId == bagId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderServiceId, bagId);

  @override
  String toString() {
    return 'ScannedBags(id: $id, orderServiceId: $orderServiceId, bagId: $bagId)';
  }
}

/// @nodoc
abstract mixin class _$ScannedBagsCopyWith<$Res>
    implements $ScannedBagsCopyWith<$Res> {
  factory _$ScannedBagsCopyWith(
          _ScannedBags value, $Res Function(_ScannedBags) _then) =
      __$ScannedBagsCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String orderServiceId, String bagId});
}

/// @nodoc
class __$ScannedBagsCopyWithImpl<$Res> implements _$ScannedBagsCopyWith<$Res> {
  __$ScannedBagsCopyWithImpl(this._self, this._then);

  final _ScannedBags _self;
  final $Res Function(_ScannedBags) _then;

  /// Create a copy of ScannedBags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderServiceId = null,
    Object? bagId = null,
  }) {
    return _then(_ScannedBags(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderServiceId: null == orderServiceId
          ? _self.orderServiceId
          : orderServiceId // ignore: cast_nullable_to_non_nullable
              as String,
      bagId: null == bagId
          ? _self.bagId
          : bagId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$OrderItemService {
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
  List<ScannedBags> get scannedBags;

  /// Create a copy of OrderItemService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderItemServiceCopyWith<OrderItemService> get copyWith =>
      _$OrderItemServiceCopyWithImpl<OrderItemService>(
          this as OrderItemService, _$identity);

  /// Serializes this OrderItemService to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderItemService &&
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
                other.sortOrder == sortOrder) &&
            const DeepCollectionEquality()
                .equals(other.scannedBags, scannedBags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      tagLine,
      color,
      icon,
      active,
      deleted,
      createdAt,
      sortOrder,
      const DeepCollectionEquality().hash(scannedBags));

  @override
  String toString() {
    return 'OrderItemService(id: $id, name: $name, description: $description, tagLine: $tagLine, color: $color, icon: $icon, active: $active, deleted: $deleted, createdAt: $createdAt, sortOrder: $sortOrder, scannedBags: $scannedBags)';
  }
}

/// @nodoc
abstract mixin class $OrderItemServiceCopyWith<$Res> {
  factory $OrderItemServiceCopyWith(
          OrderItemService value, $Res Function(OrderItemService) _then) =
      _$OrderItemServiceCopyWithImpl;
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
      @JsonKey(name: 'sortOrder') int sortOrder,
      List<ScannedBags> scannedBags});
}

/// @nodoc
class _$OrderItemServiceCopyWithImpl<$Res>
    implements $OrderItemServiceCopyWith<$Res> {
  _$OrderItemServiceCopyWithImpl(this._self, this._then);

  final OrderItemService _self;
  final $Res Function(OrderItemService) _then;

  /// Create a copy of OrderItemService
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
    Object? scannedBags = null,
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
      scannedBags: null == scannedBags
          ? _self.scannedBags
          : scannedBags // ignore: cast_nullable_to_non_nullable
              as List<ScannedBags>,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderItemService].
extension OrderItemServicePatterns on OrderItemService {
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
    TResult Function(_OrderItemService value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemService() when $default != null:
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
    TResult Function(_OrderItemService value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemService():
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
    TResult? Function(_OrderItemService value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemService() when $default != null:
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
            @JsonKey(name: 'sortOrder') int sortOrder,
            List<ScannedBags> scannedBags)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemService() when $default != null:
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
            _that.sortOrder,
            _that.scannedBags);
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
            @JsonKey(name: 'sortOrder') int sortOrder,
            List<ScannedBags> scannedBags)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemService():
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
            _that.sortOrder,
            _that.scannedBags);
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
            @JsonKey(name: 'sortOrder') int sortOrder,
            List<ScannedBags> scannedBags)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemService() when $default != null:
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
            _that.sortOrder,
            _that.scannedBags);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderItemService implements OrderItemService {
  const _OrderItemService(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'description') this.description = "",
      @JsonKey(name: 'tagLine') this.tagLine = "",
      @JsonKey(name: 'color') this.color = "",
      @JsonKey(name: 'icon') this.icon = "",
      @JsonKey(name: 'active') this.active = false,
      @JsonKey(name: 'deleted') this.deleted = false,
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'sortOrder') this.sortOrder = 0,
      final List<ScannedBags> scannedBags = const []})
      : _scannedBags = scannedBags;
  factory _OrderItemService.fromJson(Map<String, dynamic> json) =>
      _$OrderItemServiceFromJson(json);

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
  final List<ScannedBags> _scannedBags;
  @override
  @JsonKey()
  List<ScannedBags> get scannedBags {
    if (_scannedBags is EqualUnmodifiableListView) return _scannedBags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scannedBags);
  }

  /// Create a copy of OrderItemService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderItemServiceCopyWith<_OrderItemService> get copyWith =>
      __$OrderItemServiceCopyWithImpl<_OrderItemService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderItemServiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItemService &&
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
                other.sortOrder == sortOrder) &&
            const DeepCollectionEquality()
                .equals(other._scannedBags, _scannedBags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      tagLine,
      color,
      icon,
      active,
      deleted,
      createdAt,
      sortOrder,
      const DeepCollectionEquality().hash(_scannedBags));

  @override
  String toString() {
    return 'OrderItemService(id: $id, name: $name, description: $description, tagLine: $tagLine, color: $color, icon: $icon, active: $active, deleted: $deleted, createdAt: $createdAt, sortOrder: $sortOrder, scannedBags: $scannedBags)';
  }
}

/// @nodoc
abstract mixin class _$OrderItemServiceCopyWith<$Res>
    implements $OrderItemServiceCopyWith<$Res> {
  factory _$OrderItemServiceCopyWith(
          _OrderItemService value, $Res Function(_OrderItemService) _then) =
      __$OrderItemServiceCopyWithImpl;
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
      @JsonKey(name: 'sortOrder') int sortOrder,
      List<ScannedBags> scannedBags});
}

/// @nodoc
class __$OrderItemServiceCopyWithImpl<$Res>
    implements _$OrderItemServiceCopyWith<$Res> {
  __$OrderItemServiceCopyWithImpl(this._self, this._then);

  final _OrderItemService _self;
  final $Res Function(_OrderItemService) _then;

  /// Create a copy of OrderItemService
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
    Object? scannedBags = null,
  }) {
    return _then(_OrderItemService(
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
      scannedBags: null == scannedBags
          ? _self._scannedBags
          : scannedBags // ignore: cast_nullable_to_non_nullable
              as List<ScannedBags>,
    ));
  }
}

// dart format on
