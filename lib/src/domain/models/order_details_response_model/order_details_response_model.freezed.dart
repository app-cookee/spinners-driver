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
  @JsonKey(name: 'customerNote')
  CustomerNote? get customerNote;
  String get type;
  String get status;
  String get refId;
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
  String? get assignedPickupDriverId;
  String? get assignedDeliveryDriverId;
  @JsonKey(name: 'driverNote')
  DriverNote? get driverNote;
  Customer get customer;
  List<OrderStatus> get statusHistory;
  SelectedAddress get selectedAddress;
  TimeSlot get pickupSlot;
  TimeSlot get deliverySlot;
  List<OrderedServices> get orderedServices;
  List<PromoItem> get promoUsages;
  List<Payment> get payment;
  List<AdditionalCharges> get additionalCharges;
  @JsonKey(name: 'serviceMenu')
  ServiceCategoryItemModel? get serviceMenu;

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
            (identical(other.driverNote, driverNote) ||
                other.driverNote == driverNote) &&
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
                .equals(other.orderedServices, orderedServices) &&
            const DeepCollectionEquality()
                .equals(other.promoUsages, promoUsages) &&
            const DeepCollectionEquality().equals(other.payment, payment) &&
            const DeepCollectionEquality()
                .equals(other.additionalCharges, additionalCharges) &&
            (identical(other.serviceMenu, serviceMenu) ||
                other.serviceMenu == serviceMenu));
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
        driverNote,
        customer,
        const DeepCollectionEquality().hash(statusHistory),
        selectedAddress,
        pickupSlot,
        deliverySlot,
        const DeepCollectionEquality().hash(orderedServices),
        const DeepCollectionEquality().hash(promoUsages),
        const DeepCollectionEquality().hash(payment),
        const DeepCollectionEquality().hash(additionalCharges),
        serviceMenu
      ]);

  @override
  String toString() {
    return 'OrderDetailsResponseModel(id: $id, customerId: $customerId, storeId: $storeId, orderedFrom: $orderedFrom, customerNote: $customerNote, type: $type, status: $status, refId: $refId, pickupSlotId: $pickupSlotId, deliverySlotId: $deliverySlotId, selectedAddressId: $selectedAddressId, expressService: $expressService, pickupAt: $pickupAt, deliveryAt: $deliveryAt, createdAt: $createdAt, totalAmount: $totalAmount, discount: $discount, paidAmount: $paidAmount, assignedPickupDriverId: $assignedPickupDriverId, assignedDeliveryDriverId: $assignedDeliveryDriverId, driverNote: $driverNote, customer: $customer, statusHistory: $statusHistory, selectedAddress: $selectedAddress, pickupSlot: $pickupSlot, deliverySlot: $deliverySlot, orderedServices: $orderedServices, promoUsages: $promoUsages, payment: $payment, additionalCharges: $additionalCharges, serviceMenu: $serviceMenu)';
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
      @JsonKey(name: 'customerNote') CustomerNote? customerNote,
      String type,
      String status,
      String refId,
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
      String? assignedPickupDriverId,
      String? assignedDeliveryDriverId,
      @JsonKey(name: 'driverNote') DriverNote? driverNote,
      Customer customer,
      List<OrderStatus> statusHistory,
      SelectedAddress selectedAddress,
      TimeSlot pickupSlot,
      TimeSlot deliverySlot,
      List<OrderedServices> orderedServices,
      List<PromoItem> promoUsages,
      List<Payment> payment,
      List<AdditionalCharges> additionalCharges,
      @JsonKey(name: 'serviceMenu') ServiceCategoryItemModel? serviceMenu});

  $CustomerNoteCopyWith<$Res>? get customerNote;
  $DriverNoteCopyWith<$Res>? get driverNote;
  $CustomerCopyWith<$Res> get customer;
  $SelectedAddressCopyWith<$Res> get selectedAddress;
  $TimeSlotCopyWith<$Res> get pickupSlot;
  $TimeSlotCopyWith<$Res> get deliverySlot;
  $ServiceCategoryItemModelCopyWith<$Res>? get serviceMenu;
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
    Object? customerNote = freezed,
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
    Object? assignedPickupDriverId = freezed,
    Object? assignedDeliveryDriverId = freezed,
    Object? driverNote = freezed,
    Object? customer = null,
    Object? statusHistory = null,
    Object? selectedAddress = null,
    Object? pickupSlot = null,
    Object? deliverySlot = null,
    Object? orderedServices = null,
    Object? promoUsages = null,
    Object? payment = null,
    Object? additionalCharges = null,
    Object? serviceMenu = freezed,
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
      assignedPickupDriverId: freezed == assignedPickupDriverId
          ? _self.assignedPickupDriverId
          : assignedPickupDriverId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedDeliveryDriverId: freezed == assignedDeliveryDriverId
          ? _self.assignedDeliveryDriverId
          : assignedDeliveryDriverId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverNote: freezed == driverNote
          ? _self.driverNote
          : driverNote // ignore: cast_nullable_to_non_nullable
              as DriverNote?,
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
      orderedServices: null == orderedServices
          ? _self.orderedServices
          : orderedServices // ignore: cast_nullable_to_non_nullable
              as List<OrderedServices>,
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
      serviceMenu: freezed == serviceMenu
          ? _self.serviceMenu
          : serviceMenu // ignore: cast_nullable_to_non_nullable
              as ServiceCategoryItemModel?,
    ));
  }

  /// Create a copy of OrderDetailsResponseModel
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

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverNoteCopyWith<$Res>? get driverNote {
    if (_self.driverNote == null) {
      return null;
    }

    return $DriverNoteCopyWith<$Res>(_self.driverNote!, (value) {
      return _then(_self.copyWith(driverNote: value));
    });
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

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCategoryItemModelCopyWith<$Res>? get serviceMenu {
    if (_self.serviceMenu == null) {
      return null;
    }

    return $ServiceCategoryItemModelCopyWith<$Res>(_self.serviceMenu!, (value) {
      return _then(_self.copyWith(serviceMenu: value));
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
            @JsonKey(name: 'customerNote') CustomerNote? customerNote,
            String type,
            String status,
            String refId,
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
            String? assignedPickupDriverId,
            String? assignedDeliveryDriverId,
            @JsonKey(name: 'driverNote') DriverNote? driverNote,
            Customer customer,
            List<OrderStatus> statusHistory,
            SelectedAddress selectedAddress,
            TimeSlot pickupSlot,
            TimeSlot deliverySlot,
            List<OrderedServices> orderedServices,
            List<PromoItem> promoUsages,
            List<Payment> payment,
            List<AdditionalCharges> additionalCharges,
            @JsonKey(name: 'serviceMenu')
            ServiceCategoryItemModel? serviceMenu)?
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
            _that.driverNote,
            _that.customer,
            _that.statusHistory,
            _that.selectedAddress,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.orderedServices,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges,
            _that.serviceMenu);
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
            @JsonKey(name: 'customerNote') CustomerNote? customerNote,
            String type,
            String status,
            String refId,
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
            String? assignedPickupDriverId,
            String? assignedDeliveryDriverId,
            @JsonKey(name: 'driverNote') DriverNote? driverNote,
            Customer customer,
            List<OrderStatus> statusHistory,
            SelectedAddress selectedAddress,
            TimeSlot pickupSlot,
            TimeSlot deliverySlot,
            List<OrderedServices> orderedServices,
            List<PromoItem> promoUsages,
            List<Payment> payment,
            List<AdditionalCharges> additionalCharges,
            @JsonKey(name: 'serviceMenu') ServiceCategoryItemModel? serviceMenu)
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
            _that.driverNote,
            _that.customer,
            _that.statusHistory,
            _that.selectedAddress,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.orderedServices,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges,
            _that.serviceMenu);
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
            @JsonKey(name: 'customerNote') CustomerNote? customerNote,
            String type,
            String status,
            String refId,
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
            String? assignedPickupDriverId,
            String? assignedDeliveryDriverId,
            @JsonKey(name: 'driverNote') DriverNote? driverNote,
            Customer customer,
            List<OrderStatus> statusHistory,
            SelectedAddress selectedAddress,
            TimeSlot pickupSlot,
            TimeSlot deliverySlot,
            List<OrderedServices> orderedServices,
            List<PromoItem> promoUsages,
            List<Payment> payment,
            List<AdditionalCharges> additionalCharges,
            @JsonKey(name: 'serviceMenu')
            ServiceCategoryItemModel? serviceMenu)?
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
            _that.driverNote,
            _that.customer,
            _that.statusHistory,
            _that.selectedAddress,
            _that.pickupSlot,
            _that.deliverySlot,
            _that.orderedServices,
            _that.promoUsages,
            _that.payment,
            _that.additionalCharges,
            _that.serviceMenu);
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
      @JsonKey(name: 'customerNote') this.customerNote,
      this.type = '',
      this.status = '',
      this.refId = '',
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
      @JsonKey(name: 'driverNote') this.driverNote,
      this.customer = const Customer(),
      final List<OrderStatus> statusHistory = const [],
      this.selectedAddress = const SelectedAddress(),
      this.pickupSlot = const TimeSlot(),
      this.deliverySlot = const TimeSlot(),
      final List<OrderedServices> orderedServices = const [],
      final List<PromoItem> promoUsages = const [],
      final List<Payment> payment = const [],
      final List<AdditionalCharges> additionalCharges = const [],
      @JsonKey(name: 'serviceMenu') this.serviceMenu})
      : _statusHistory = statusHistory,
        _orderedServices = orderedServices,
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
  @JsonKey(name: 'customerNote')
  final CustomerNote? customerNote;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String refId;
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
  final String? assignedPickupDriverId;
  @override
  @JsonKey()
  final String? assignedDeliveryDriverId;
  @override
  @JsonKey(name: 'driverNote')
  final DriverNote? driverNote;
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
  final List<OrderedServices> _orderedServices;
  @override
  @JsonKey()
  List<OrderedServices> get orderedServices {
    if (_orderedServices is EqualUnmodifiableListView) return _orderedServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderedServices);
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

  @override
  @JsonKey(name: 'serviceMenu')
  final ServiceCategoryItemModel? serviceMenu;

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
            (identical(other.driverNote, driverNote) ||
                other.driverNote == driverNote) &&
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
                .equals(other._orderedServices, _orderedServices) &&
            const DeepCollectionEquality()
                .equals(other._promoUsages, _promoUsages) &&
            const DeepCollectionEquality().equals(other._payment, _payment) &&
            const DeepCollectionEquality()
                .equals(other._additionalCharges, _additionalCharges) &&
            (identical(other.serviceMenu, serviceMenu) ||
                other.serviceMenu == serviceMenu));
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
        driverNote,
        customer,
        const DeepCollectionEquality().hash(_statusHistory),
        selectedAddress,
        pickupSlot,
        deliverySlot,
        const DeepCollectionEquality().hash(_orderedServices),
        const DeepCollectionEquality().hash(_promoUsages),
        const DeepCollectionEquality().hash(_payment),
        const DeepCollectionEquality().hash(_additionalCharges),
        serviceMenu
      ]);

  @override
  String toString() {
    return 'OrderDetailsResponseModel(id: $id, customerId: $customerId, storeId: $storeId, orderedFrom: $orderedFrom, customerNote: $customerNote, type: $type, status: $status, refId: $refId, pickupSlotId: $pickupSlotId, deliverySlotId: $deliverySlotId, selectedAddressId: $selectedAddressId, expressService: $expressService, pickupAt: $pickupAt, deliveryAt: $deliveryAt, createdAt: $createdAt, totalAmount: $totalAmount, discount: $discount, paidAmount: $paidAmount, assignedPickupDriverId: $assignedPickupDriverId, assignedDeliveryDriverId: $assignedDeliveryDriverId, driverNote: $driverNote, customer: $customer, statusHistory: $statusHistory, selectedAddress: $selectedAddress, pickupSlot: $pickupSlot, deliverySlot: $deliverySlot, orderedServices: $orderedServices, promoUsages: $promoUsages, payment: $payment, additionalCharges: $additionalCharges, serviceMenu: $serviceMenu)';
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
      @JsonKey(name: 'customerNote') CustomerNote? customerNote,
      String type,
      String status,
      String refId,
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
      String? assignedPickupDriverId,
      String? assignedDeliveryDriverId,
      @JsonKey(name: 'driverNote') DriverNote? driverNote,
      Customer customer,
      List<OrderStatus> statusHistory,
      SelectedAddress selectedAddress,
      TimeSlot pickupSlot,
      TimeSlot deliverySlot,
      List<OrderedServices> orderedServices,
      List<PromoItem> promoUsages,
      List<Payment> payment,
      List<AdditionalCharges> additionalCharges,
      @JsonKey(name: 'serviceMenu') ServiceCategoryItemModel? serviceMenu});

  @override
  $CustomerNoteCopyWith<$Res>? get customerNote;
  @override
  $DriverNoteCopyWith<$Res>? get driverNote;
  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $SelectedAddressCopyWith<$Res> get selectedAddress;
  @override
  $TimeSlotCopyWith<$Res> get pickupSlot;
  @override
  $TimeSlotCopyWith<$Res> get deliverySlot;
  @override
  $ServiceCategoryItemModelCopyWith<$Res>? get serviceMenu;
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
    Object? customerNote = freezed,
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
    Object? assignedPickupDriverId = freezed,
    Object? assignedDeliveryDriverId = freezed,
    Object? driverNote = freezed,
    Object? customer = null,
    Object? statusHistory = null,
    Object? selectedAddress = null,
    Object? pickupSlot = null,
    Object? deliverySlot = null,
    Object? orderedServices = null,
    Object? promoUsages = null,
    Object? payment = null,
    Object? additionalCharges = null,
    Object? serviceMenu = freezed,
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
      customerNote: freezed == customerNote
          ? _self.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as CustomerNote?,
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
      assignedPickupDriverId: freezed == assignedPickupDriverId
          ? _self.assignedPickupDriverId
          : assignedPickupDriverId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedDeliveryDriverId: freezed == assignedDeliveryDriverId
          ? _self.assignedDeliveryDriverId
          : assignedDeliveryDriverId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverNote: freezed == driverNote
          ? _self.driverNote
          : driverNote // ignore: cast_nullable_to_non_nullable
              as DriverNote?,
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
      orderedServices: null == orderedServices
          ? _self._orderedServices
          : orderedServices // ignore: cast_nullable_to_non_nullable
              as List<OrderedServices>,
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
      serviceMenu: freezed == serviceMenu
          ? _self.serviceMenu
          : serviceMenu // ignore: cast_nullable_to_non_nullable
              as ServiceCategoryItemModel?,
    ));
  }

  /// Create a copy of OrderDetailsResponseModel
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

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverNoteCopyWith<$Res>? get driverNote {
    if (_self.driverNote == null) {
      return null;
    }

    return $DriverNoteCopyWith<$Res>(_self.driverNote!, (value) {
      return _then(_self.copyWith(driverNote: value));
    });
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

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCategoryItemModelCopyWith<$Res>? get serviceMenu {
    if (_self.serviceMenu == null) {
      return null;
    }

    return $ServiceCategoryItemModelCopyWith<$Res>(_self.serviceMenu!, (value) {
      return _then(_self.copyWith(serviceMenu: value));
    });
  }
}

/// @nodoc
mixin _$ServiceCategoryItemModel {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'active')
  bool get active;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'subTitle')
  String get subTitle;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'shortDesc')
  String get shortDesc;
  @JsonKey(name: 'coverPhoto')
  String get coverPhoto;
  @JsonKey(name: 'sortOrder')
  int get sortOrder;
  @JsonKey(name: 'placeOrderText')
  String get placeOrderText;
  @JsonKey(name: 'quickPickupText')
  String get quickPickupText;

  /// Create a copy of ServiceCategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceCategoryItemModelCopyWith<ServiceCategoryItemModel> get copyWith =>
      _$ServiceCategoryItemModelCopyWithImpl<ServiceCategoryItemModel>(
          this as ServiceCategoryItemModel, _$identity);

  /// Serializes this ServiceCategoryItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceCategoryItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.shortDesc, shortDesc) ||
                other.shortDesc == shortDesc) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.placeOrderText, placeOrderText) ||
                other.placeOrderText == placeOrderText) &&
            (identical(other.quickPickupText, quickPickupText) ||
                other.quickPickupText == quickPickupText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, active, type, subTitle,
      title, shortDesc, coverPhoto, sortOrder, placeOrderText, quickPickupText);

  @override
  String toString() {
    return 'ServiceCategoryItemModel(id: $id, active: $active, type: $type, subTitle: $subTitle, title: $title, shortDesc: $shortDesc, coverPhoto: $coverPhoto, sortOrder: $sortOrder, placeOrderText: $placeOrderText, quickPickupText: $quickPickupText)';
  }
}

/// @nodoc
abstract mixin class $ServiceCategoryItemModelCopyWith<$Res> {
  factory $ServiceCategoryItemModelCopyWith(ServiceCategoryItemModel value,
          $Res Function(ServiceCategoryItemModel) _then) =
      _$ServiceCategoryItemModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'subTitle') String subTitle,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'shortDesc') String shortDesc,
      @JsonKey(name: 'coverPhoto') String coverPhoto,
      @JsonKey(name: 'sortOrder') int sortOrder,
      @JsonKey(name: 'placeOrderText') String placeOrderText,
      @JsonKey(name: 'quickPickupText') String quickPickupText});
}

/// @nodoc
class _$ServiceCategoryItemModelCopyWithImpl<$Res>
    implements $ServiceCategoryItemModelCopyWith<$Res> {
  _$ServiceCategoryItemModelCopyWithImpl(this._self, this._then);

  final ServiceCategoryItemModel _self;
  final $Res Function(ServiceCategoryItemModel) _then;

  /// Create a copy of ServiceCategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? type = null,
    Object? subTitle = null,
    Object? title = null,
    Object? shortDesc = null,
    Object? coverPhoto = null,
    Object? sortOrder = null,
    Object? placeOrderText = null,
    Object? quickPickupText = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _self.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortDesc: null == shortDesc
          ? _self.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhoto: null == coverPhoto
          ? _self.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      placeOrderText: null == placeOrderText
          ? _self.placeOrderText
          : placeOrderText // ignore: cast_nullable_to_non_nullable
              as String,
      quickPickupText: null == quickPickupText
          ? _self.quickPickupText
          : quickPickupText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ServiceCategoryItemModel].
extension ServiceCategoryItemModelPatterns on ServiceCategoryItemModel {
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
    TResult Function(_ServiceCategoryItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServiceCategoryItemModel() when $default != null:
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
    TResult Function(_ServiceCategoryItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceCategoryItemModel():
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
    TResult? Function(_ServiceCategoryItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceCategoryItemModel() when $default != null:
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
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'subTitle') String subTitle,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'shortDesc') String shortDesc,
            @JsonKey(name: 'coverPhoto') String coverPhoto,
            @JsonKey(name: 'sortOrder') int sortOrder,
            @JsonKey(name: 'placeOrderText') String placeOrderText,
            @JsonKey(name: 'quickPickupText') String quickPickupText)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServiceCategoryItemModel() when $default != null:
        return $default(
            _that.id,
            _that.active,
            _that.type,
            _that.subTitle,
            _that.title,
            _that.shortDesc,
            _that.coverPhoto,
            _that.sortOrder,
            _that.placeOrderText,
            _that.quickPickupText);
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
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'subTitle') String subTitle,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'shortDesc') String shortDesc,
            @JsonKey(name: 'coverPhoto') String coverPhoto,
            @JsonKey(name: 'sortOrder') int sortOrder,
            @JsonKey(name: 'placeOrderText') String placeOrderText,
            @JsonKey(name: 'quickPickupText') String quickPickupText)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceCategoryItemModel():
        return $default(
            _that.id,
            _that.active,
            _that.type,
            _that.subTitle,
            _that.title,
            _that.shortDesc,
            _that.coverPhoto,
            _that.sortOrder,
            _that.placeOrderText,
            _that.quickPickupText);
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
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'subTitle') String subTitle,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'shortDesc') String shortDesc,
            @JsonKey(name: 'coverPhoto') String coverPhoto,
            @JsonKey(name: 'sortOrder') int sortOrder,
            @JsonKey(name: 'placeOrderText') String placeOrderText,
            @JsonKey(name: 'quickPickupText') String quickPickupText)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceCategoryItemModel() when $default != null:
        return $default(
            _that.id,
            _that.active,
            _that.type,
            _that.subTitle,
            _that.title,
            _that.shortDesc,
            _that.coverPhoto,
            _that.sortOrder,
            _that.placeOrderText,
            _that.quickPickupText);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ServiceCategoryItemModel implements ServiceCategoryItemModel {
  _ServiceCategoryItemModel(
      {@JsonKey(name: 'id') this.id = '',
      @JsonKey(name: 'active') this.active = true,
      @JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'subTitle') this.subTitle = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'shortDesc') this.shortDesc = '',
      @JsonKey(name: 'coverPhoto') this.coverPhoto = '',
      @JsonKey(name: 'sortOrder') this.sortOrder = 0,
      @JsonKey(name: 'placeOrderText') this.placeOrderText = '',
      @JsonKey(name: 'quickPickupText') this.quickPickupText = ''});
  factory _ServiceCategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategoryItemModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'active')
  final bool active;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'subTitle')
  final String subTitle;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'shortDesc')
  final String shortDesc;
  @override
  @JsonKey(name: 'coverPhoto')
  final String coverPhoto;
  @override
  @JsonKey(name: 'sortOrder')
  final int sortOrder;
  @override
  @JsonKey(name: 'placeOrderText')
  final String placeOrderText;
  @override
  @JsonKey(name: 'quickPickupText')
  final String quickPickupText;

  /// Create a copy of ServiceCategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServiceCategoryItemModelCopyWith<_ServiceCategoryItemModel> get copyWith =>
      __$ServiceCategoryItemModelCopyWithImpl<_ServiceCategoryItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceCategoryItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceCategoryItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.shortDesc, shortDesc) ||
                other.shortDesc == shortDesc) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.placeOrderText, placeOrderText) ||
                other.placeOrderText == placeOrderText) &&
            (identical(other.quickPickupText, quickPickupText) ||
                other.quickPickupText == quickPickupText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, active, type, subTitle,
      title, shortDesc, coverPhoto, sortOrder, placeOrderText, quickPickupText);

  @override
  String toString() {
    return 'ServiceCategoryItemModel(id: $id, active: $active, type: $type, subTitle: $subTitle, title: $title, shortDesc: $shortDesc, coverPhoto: $coverPhoto, sortOrder: $sortOrder, placeOrderText: $placeOrderText, quickPickupText: $quickPickupText)';
  }
}

/// @nodoc
abstract mixin class _$ServiceCategoryItemModelCopyWith<$Res>
    implements $ServiceCategoryItemModelCopyWith<$Res> {
  factory _$ServiceCategoryItemModelCopyWith(_ServiceCategoryItemModel value,
          $Res Function(_ServiceCategoryItemModel) _then) =
      __$ServiceCategoryItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'active') bool active,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'subTitle') String subTitle,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'shortDesc') String shortDesc,
      @JsonKey(name: 'coverPhoto') String coverPhoto,
      @JsonKey(name: 'sortOrder') int sortOrder,
      @JsonKey(name: 'placeOrderText') String placeOrderText,
      @JsonKey(name: 'quickPickupText') String quickPickupText});
}

/// @nodoc
class __$ServiceCategoryItemModelCopyWithImpl<$Res>
    implements _$ServiceCategoryItemModelCopyWith<$Res> {
  __$ServiceCategoryItemModelCopyWithImpl(this._self, this._then);

  final _ServiceCategoryItemModel _self;
  final $Res Function(_ServiceCategoryItemModel) _then;

  /// Create a copy of ServiceCategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? type = null,
    Object? subTitle = null,
    Object? title = null,
    Object? shortDesc = null,
    Object? coverPhoto = null,
    Object? sortOrder = null,
    Object? placeOrderText = null,
    Object? quickPickupText = null,
  }) {
    return _then(_ServiceCategoryItemModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _self.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortDesc: null == shortDesc
          ? _self.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhoto: null == coverPhoto
          ? _self.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      placeOrderText: null == placeOrderText
          ? _self.placeOrderText
          : placeOrderText // ignore: cast_nullable_to_non_nullable
              as String,
      quickPickupText: null == quickPickupText
          ? _self.quickPickupText
          : quickPickupText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DriverNote {
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

  /// Create a copy of DriverNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DriverNoteCopyWith<DriverNote> get copyWith =>
      _$DriverNoteCopyWithImpl<DriverNote>(this as DriverNote, _$identity);

  /// Serializes this DriverNote to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriverNote &&
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
    return 'DriverNote(note: $note, handledAt: $handledAt, createdAt: $createdAt, id: $id, actionTaken: $actionTaken)';
  }
}

/// @nodoc
abstract mixin class $DriverNoteCopyWith<$Res> {
  factory $DriverNoteCopyWith(
          DriverNote value, $Res Function(DriverNote) _then) =
      _$DriverNoteCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'note') String note,
      @JsonKey(name: 'handledAt') String? handledAt,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'actionTaken') String actionTaken});
}

/// @nodoc
class _$DriverNoteCopyWithImpl<$Res> implements $DriverNoteCopyWith<$Res> {
  _$DriverNoteCopyWithImpl(this._self, this._then);

  final DriverNote _self;
  final $Res Function(DriverNote) _then;

  /// Create a copy of DriverNote
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

/// Adds pattern-matching-related methods to [DriverNote].
extension DriverNotePatterns on DriverNote {
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
    TResult Function(_DriverNote value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DriverNote() when $default != null:
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
    TResult Function(_DriverNote value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverNote():
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
    TResult? Function(_DriverNote value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DriverNote() when $default != null:
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
      case _DriverNote() when $default != null:
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
      case _DriverNote():
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
      case _DriverNote() when $default != null:
        return $default(_that.note, _that.handledAt, _that.createdAt, _that.id,
            _that.actionTaken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DriverNote implements DriverNote {
  const _DriverNote(
      {@JsonKey(name: 'note') this.note = "",
      @JsonKey(name: 'handledAt') this.handledAt = "",
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'actionTaken') this.actionTaken = ""});
  factory _DriverNote.fromJson(Map<String, dynamic> json) =>
      _$DriverNoteFromJson(json);

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

  /// Create a copy of DriverNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DriverNoteCopyWith<_DriverNote> get copyWith =>
      __$DriverNoteCopyWithImpl<_DriverNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DriverNoteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverNote &&
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
    return 'DriverNote(note: $note, handledAt: $handledAt, createdAt: $createdAt, id: $id, actionTaken: $actionTaken)';
  }
}

/// @nodoc
abstract mixin class _$DriverNoteCopyWith<$Res>
    implements $DriverNoteCopyWith<$Res> {
  factory _$DriverNoteCopyWith(
          _DriverNote value, $Res Function(_DriverNote) _then) =
      __$DriverNoteCopyWithImpl;
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
class __$DriverNoteCopyWithImpl<$Res> implements _$DriverNoteCopyWith<$Res> {
  __$DriverNoteCopyWithImpl(this._self, this._then);

  final _DriverNote _self;
  final $Res Function(_DriverNote) _then;

  /// Create a copy of DriverNote
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
    return _then(_DriverNote(
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
mixin _$OrderedServices {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'service')
  Service get service;
  @JsonKey(name: 'items')
  List<Item> get item;
  @JsonKey(name: 'bags')
  List<ScannedBags> get bags;

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
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.bags, bags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      service,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(bags));

  @override
  String toString() {
    return 'OrderedServices(id: $id, service: $service, item: $item, bags: $bags)';
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
      @JsonKey(name: 'service') Service service,
      @JsonKey(name: 'items') List<Item> item,
      @JsonKey(name: 'bags') List<ScannedBags> bags});

  $ServiceCopyWith<$Res> get service;
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
    Object? service = null,
    Object? item = null,
    Object? bags = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      item: null == item
          ? _self.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      bags: null == bags
          ? _self.bags
          : bags // ignore: cast_nullable_to_non_nullable
              as List<ScannedBags>,
    ));
  }

  /// Create a copy of OrderedServices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res> get service {
    return $ServiceCopyWith<$Res>(_self.service, (value) {
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
            @JsonKey(name: 'service') Service service,
            @JsonKey(name: 'items') List<Item> item,
            @JsonKey(name: 'bags') List<ScannedBags> bags)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderedServices() when $default != null:
        return $default(_that.id, _that.service, _that.item, _that.bags);
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
            @JsonKey(name: 'service') Service service,
            @JsonKey(name: 'items') List<Item> item,
            @JsonKey(name: 'bags') List<ScannedBags> bags)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedServices():
        return $default(_that.id, _that.service, _that.item, _that.bags);
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
            @JsonKey(name: 'service') Service service,
            @JsonKey(name: 'items') List<Item> item,
            @JsonKey(name: 'bags') List<ScannedBags> bags)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderedServices() when $default != null:
        return $default(_that.id, _that.service, _that.item, _that.bags);
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
      @JsonKey(name: 'service') this.service = const Service(),
      @JsonKey(name: 'items') final List<Item> item = const [],
      @JsonKey(name: 'bags') final List<ScannedBags> bags = const []})
      : _item = item,
        _bags = bags;
  factory _OrderedServices.fromJson(Map<String, dynamic> json) =>
      _$OrderedServicesFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'service')
  final Service service;
  final List<Item> _item;
  @override
  @JsonKey(name: 'items')
  List<Item> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  final List<ScannedBags> _bags;
  @override
  @JsonKey(name: 'bags')
  List<ScannedBags> get bags {
    if (_bags is EqualUnmodifiableListView) return _bags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bags);
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
            const DeepCollectionEquality().equals(other._item, _item) &&
            const DeepCollectionEquality().equals(other._bags, _bags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      service,
      const DeepCollectionEquality().hash(_item),
      const DeepCollectionEquality().hash(_bags));

  @override
  String toString() {
    return 'OrderedServices(id: $id, service: $service, item: $item, bags: $bags)';
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
      @JsonKey(name: 'service') Service service,
      @JsonKey(name: 'items') List<Item> item,
      @JsonKey(name: 'bags') List<ScannedBags> bags});

  @override
  $ServiceCopyWith<$Res> get service;
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
    Object? service = null,
    Object? item = null,
    Object? bags = null,
  }) {
    return _then(_OrderedServices(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      item: null == item
          ? _self._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      bags: null == bags
          ? _self._bags
          : bags // ignore: cast_nullable_to_non_nullable
              as List<ScannedBags>,
    ));
  }

  /// Create a copy of OrderedServices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res> get service {
    return $ServiceCopyWith<$Res>(_self.service, (value) {
      return _then(_self.copyWith(service: value));
    });
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
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, name, salePrice,
      listingPrice, active, deleted, sortOrder, createdAt);

  @override
  String toString() {
    return 'ItemDetails(id: $id, categoryId: $categoryId, name: $name, salePrice: $salePrice, listingPrice: $listingPrice, active: $active, deleted: $deleted, sortOrder: $sortOrder, createdAt: $createdAt)';
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
      @JsonKey(name: 'createdAt') String createdAt});
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
    ));
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
            @JsonKey(name: 'createdAt') String createdAt)?
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
            @JsonKey(name: 'categoryId') String categoryId,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'salePrice') String salePrice,
            @JsonKey(name: 'listingPrice') String listingPrice,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'sortOrder') int sortOrder,
            @JsonKey(name: 'createdAt') String createdAt)
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
            @JsonKey(name: 'categoryId') String categoryId,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'salePrice') String salePrice,
            @JsonKey(name: 'listingPrice') String listingPrice,
            @JsonKey(name: 'active') bool active,
            @JsonKey(name: 'deleted') bool deleted,
            @JsonKey(name: 'sortOrder') int sortOrder,
            @JsonKey(name: 'createdAt') String createdAt)?
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
            _that.createdAt);
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
      @JsonKey(name: 'createdAt') this.createdAt = ""});
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
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, name, salePrice,
      listingPrice, active, deleted, sortOrder, createdAt);

  @override
  String toString() {
    return 'ItemDetails(id: $id, categoryId: $categoryId, name: $name, salePrice: $salePrice, listingPrice: $listingPrice, active: $active, deleted: $deleted, sortOrder: $sortOrder, createdAt: $createdAt)';
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
      @JsonKey(name: 'createdAt') String createdAt});
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
    ));
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

// dart format on
