// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cash_settlement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CashSettlementModel {
  @JsonKey(name: 'data')
  List<CashSettlementResponse> get cashSettlementList;
  @JsonKey(name: 'totalCount')
  int get totalCount;

  /// Create a copy of CashSettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CashSettlementModelCopyWith<CashSettlementModel> get copyWith =>
      _$CashSettlementModelCopyWithImpl<CashSettlementModel>(
          this as CashSettlementModel, _$identity);

  /// Serializes this CashSettlementModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CashSettlementModel &&
            const DeepCollectionEquality()
                .equals(other.cashSettlementList, cashSettlementList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(cashSettlementList), totalCount);

  @override
  String toString() {
    return 'CashSettlementModel(cashSettlementList: $cashSettlementList, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class $CashSettlementModelCopyWith<$Res> {
  factory $CashSettlementModelCopyWith(
          CashSettlementModel value, $Res Function(CashSettlementModel) _then) =
      _$CashSettlementModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<CashSettlementResponse> cashSettlementList,
      @JsonKey(name: 'totalCount') int totalCount});
}

/// @nodoc
class _$CashSettlementModelCopyWithImpl<$Res>
    implements $CashSettlementModelCopyWith<$Res> {
  _$CashSettlementModelCopyWithImpl(this._self, this._then);

  final CashSettlementModel _self;
  final $Res Function(CashSettlementModel) _then;

  /// Create a copy of CashSettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashSettlementList = null,
    Object? totalCount = null,
  }) {
    return _then(_self.copyWith(
      cashSettlementList: null == cashSettlementList
          ? _self.cashSettlementList
          : cashSettlementList // ignore: cast_nullable_to_non_nullable
              as List<CashSettlementResponse>,
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CashSettlementModel].
extension CashSettlementModelPatterns on CashSettlementModel {
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
    TResult Function(_CashSettlementModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CashSettlementModel() when $default != null:
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
    TResult Function(_CashSettlementModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CashSettlementModel():
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
    TResult? Function(_CashSettlementModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CashSettlementModel() when $default != null:
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
            @JsonKey(name: 'data')
            List<CashSettlementResponse> cashSettlementList,
            @JsonKey(name: 'totalCount') int totalCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CashSettlementModel() when $default != null:
        return $default(_that.cashSettlementList, _that.totalCount);
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
            @JsonKey(name: 'data')
            List<CashSettlementResponse> cashSettlementList,
            @JsonKey(name: 'totalCount') int totalCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CashSettlementModel():
        return $default(_that.cashSettlementList, _that.totalCount);
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
            @JsonKey(name: 'data')
            List<CashSettlementResponse> cashSettlementList,
            @JsonKey(name: 'totalCount') int totalCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CashSettlementModel() when $default != null:
        return $default(_that.cashSettlementList, _that.totalCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CashSettlementModel implements CashSettlementModel {
  const _CashSettlementModel(
      {@JsonKey(name: 'data')
      final List<CashSettlementResponse> cashSettlementList = const [],
      @JsonKey(name: 'totalCount') this.totalCount = 0})
      : _cashSettlementList = cashSettlementList;
  factory _CashSettlementModel.fromJson(Map<String, dynamic> json) =>
      _$CashSettlementModelFromJson(json);

  final List<CashSettlementResponse> _cashSettlementList;
  @override
  @JsonKey(name: 'data')
  List<CashSettlementResponse> get cashSettlementList {
    if (_cashSettlementList is EqualUnmodifiableListView)
      return _cashSettlementList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cashSettlementList);
  }

  @override
  @JsonKey(name: 'totalCount')
  final int totalCount;

  /// Create a copy of CashSettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CashSettlementModelCopyWith<_CashSettlementModel> get copyWith =>
      __$CashSettlementModelCopyWithImpl<_CashSettlementModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CashSettlementModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashSettlementModel &&
            const DeepCollectionEquality()
                .equals(other._cashSettlementList, _cashSettlementList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cashSettlementList), totalCount);

  @override
  String toString() {
    return 'CashSettlementModel(cashSettlementList: $cashSettlementList, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class _$CashSettlementModelCopyWith<$Res>
    implements $CashSettlementModelCopyWith<$Res> {
  factory _$CashSettlementModelCopyWith(_CashSettlementModel value,
          $Res Function(_CashSettlementModel) _then) =
      __$CashSettlementModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<CashSettlementResponse> cashSettlementList,
      @JsonKey(name: 'totalCount') int totalCount});
}

/// @nodoc
class __$CashSettlementModelCopyWithImpl<$Res>
    implements _$CashSettlementModelCopyWith<$Res> {
  __$CashSettlementModelCopyWithImpl(this._self, this._then);

  final _CashSettlementModel _self;
  final $Res Function(_CashSettlementModel) _then;

  /// Create a copy of CashSettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cashSettlementList = null,
    Object? totalCount = null,
  }) {
    return _then(_CashSettlementModel(
      cashSettlementList: null == cashSettlementList
          ? _self._cashSettlementList
          : cashSettlementList // ignore: cast_nullable_to_non_nullable
              as List<CashSettlementResponse>,
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$CashSettlementResponse {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'driverId')
  String get driverId;
  @JsonKey(name: 'amount')
  String get amount;
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @JsonKey(name: 'currentPending')
  String get currentPending;

  /// Create a copy of CashSettlementResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CashSettlementResponseCopyWith<CashSettlementResponse> get copyWith =>
      _$CashSettlementResponseCopyWithImpl<CashSettlementResponse>(
          this as CashSettlementResponse, _$identity);

  /// Serializes this CashSettlementResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CashSettlementResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.currentPending, currentPending) ||
                other.currentPending == currentPending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, driverId, amount, createdAt, currentPending);

  @override
  String toString() {
    return 'CashSettlementResponse(id: $id, driverId: $driverId, amount: $amount, createdAt: $createdAt, currentPending: $currentPending)';
  }
}

/// @nodoc
abstract mixin class $CashSettlementResponseCopyWith<$Res> {
  factory $CashSettlementResponseCopyWith(CashSettlementResponse value,
          $Res Function(CashSettlementResponse) _then) =
      _$CashSettlementResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'driverId') String driverId,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'currentPending') String currentPending});
}

/// @nodoc
class _$CashSettlementResponseCopyWithImpl<$Res>
    implements $CashSettlementResponseCopyWith<$Res> {
  _$CashSettlementResponseCopyWithImpl(this._self, this._then);

  final CashSettlementResponse _self;
  final $Res Function(CashSettlementResponse) _then;

  /// Create a copy of CashSettlementResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? driverId = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? currentPending = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: null == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      currentPending: null == currentPending
          ? _self.currentPending
          : currentPending // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CashSettlementResponse].
extension CashSettlementResponsePatterns on CashSettlementResponse {
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
    TResult Function(_CashSettlementResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CashSettlementResponse() when $default != null:
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
    TResult Function(_CashSettlementResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CashSettlementResponse():
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
    TResult? Function(_CashSettlementResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CashSettlementResponse() when $default != null:
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
            @JsonKey(name: 'driverId') String driverId,
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'currentPending') String currentPending)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CashSettlementResponse() when $default != null:
        return $default(_that.id, _that.driverId, _that.amount, _that.createdAt,
            _that.currentPending);
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
            @JsonKey(name: 'driverId') String driverId,
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'currentPending') String currentPending)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CashSettlementResponse():
        return $default(_that.id, _that.driverId, _that.amount, _that.createdAt,
            _that.currentPending);
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
            @JsonKey(name: 'driverId') String driverId,
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'createdAt') String createdAt,
            @JsonKey(name: 'currentPending') String currentPending)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CashSettlementResponse() when $default != null:
        return $default(_that.id, _that.driverId, _that.amount, _that.createdAt,
            _that.currentPending);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CashSettlementResponse implements CashSettlementResponse {
  const _CashSettlementResponse(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'driverId') this.driverId = "",
      @JsonKey(name: 'amount') this.amount = "",
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'currentPending') this.currentPending = ""});
  factory _CashSettlementResponse.fromJson(Map<String, dynamic> json) =>
      _$CashSettlementResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'driverId')
  final String driverId;
  @override
  @JsonKey(name: 'amount')
  final String amount;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'currentPending')
  final String currentPending;

  /// Create a copy of CashSettlementResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CashSettlementResponseCopyWith<_CashSettlementResponse> get copyWith =>
      __$CashSettlementResponseCopyWithImpl<_CashSettlementResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CashSettlementResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashSettlementResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.currentPending, currentPending) ||
                other.currentPending == currentPending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, driverId, amount, createdAt, currentPending);

  @override
  String toString() {
    return 'CashSettlementResponse(id: $id, driverId: $driverId, amount: $amount, createdAt: $createdAt, currentPending: $currentPending)';
  }
}

/// @nodoc
abstract mixin class _$CashSettlementResponseCopyWith<$Res>
    implements $CashSettlementResponseCopyWith<$Res> {
  factory _$CashSettlementResponseCopyWith(_CashSettlementResponse value,
          $Res Function(_CashSettlementResponse) _then) =
      __$CashSettlementResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'driverId') String driverId,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'currentPending') String currentPending});
}

/// @nodoc
class __$CashSettlementResponseCopyWithImpl<$Res>
    implements _$CashSettlementResponseCopyWith<$Res> {
  __$CashSettlementResponseCopyWithImpl(this._self, this._then);

  final _CashSettlementResponse _self;
  final $Res Function(_CashSettlementResponse) _then;

  /// Create a copy of CashSettlementResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? driverId = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? currentPending = null,
  }) {
    return _then(_CashSettlementResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: null == driverId
          ? _self.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      currentPending: null == currentPending
          ? _self.currentPending
          : currentPending // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
