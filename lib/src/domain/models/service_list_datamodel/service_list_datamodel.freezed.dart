// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_list_datamodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceListDatamodel {
  String get id;
  String get name;
  String get description;
  String get tagLine;
  String get color;
  String get icon;
  bool get active;
  bool get deleted;
  String get createdAt;
  int get sortOrder; // ignore: invalid_annotation_target
  @JsonKey(name: '_count')
  CountModel get count;

  /// Create a copy of ServiceListDatamodel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceListDatamodelCopyWith<ServiceListDatamodel> get copyWith =>
      _$ServiceListDatamodelCopyWithImpl<ServiceListDatamodel>(
          this as ServiceListDatamodel, _$identity);

  /// Serializes this ServiceListDatamodel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceListDatamodel &&
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
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, tagLine,
      color, icon, active, deleted, createdAt, sortOrder, count);

  @override
  String toString() {
    return 'ServiceListDatamodel(id: $id, name: $name, description: $description, tagLine: $tagLine, color: $color, icon: $icon, active: $active, deleted: $deleted, createdAt: $createdAt, sortOrder: $sortOrder, count: $count)';
  }
}

/// @nodoc
abstract mixin class $ServiceListDatamodelCopyWith<$Res> {
  factory $ServiceListDatamodelCopyWith(ServiceListDatamodel value,
          $Res Function(ServiceListDatamodel) _then) =
      _$ServiceListDatamodelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String tagLine,
      String color,
      String icon,
      bool active,
      bool deleted,
      String createdAt,
      int sortOrder,
      @JsonKey(name: '_count') CountModel count});

  $CountModelCopyWith<$Res> get count;
}

/// @nodoc
class _$ServiceListDatamodelCopyWithImpl<$Res>
    implements $ServiceListDatamodelCopyWith<$Res> {
  _$ServiceListDatamodelCopyWithImpl(this._self, this._then);

  final ServiceListDatamodel _self;
  final $Res Function(ServiceListDatamodel) _then;

  /// Create a copy of ServiceListDatamodel
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
    Object? count = null,
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
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as CountModel,
    ));
  }

  /// Create a copy of ServiceListDatamodel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountModelCopyWith<$Res> get count {
    return $CountModelCopyWith<$Res>(_self.count, (value) {
      return _then(_self.copyWith(count: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ServiceListDatamodel].
extension ServiceListDatamodelPatterns on ServiceListDatamodel {
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
    TResult Function(_ServiceListDatamodel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServiceListDatamodel() when $default != null:
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
    TResult Function(_ServiceListDatamodel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceListDatamodel():
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
    TResult? Function(_ServiceListDatamodel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceListDatamodel() when $default != null:
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
            String name,
            String description,
            String tagLine,
            String color,
            String icon,
            bool active,
            bool deleted,
            String createdAt,
            int sortOrder,
            @JsonKey(name: '_count') CountModel count)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServiceListDatamodel() when $default != null:
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
            _that.count);
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
            String name,
            String description,
            String tagLine,
            String color,
            String icon,
            bool active,
            bool deleted,
            String createdAt,
            int sortOrder,
            @JsonKey(name: '_count') CountModel count)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceListDatamodel():
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
            _that.count);
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
            String name,
            String description,
            String tagLine,
            String color,
            String icon,
            bool active,
            bool deleted,
            String createdAt,
            int sortOrder,
            @JsonKey(name: '_count') CountModel count)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ServiceListDatamodel() when $default != null:
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
            _that.count);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ServiceListDatamodel implements ServiceListDatamodel {
  const _ServiceListDatamodel(
      {this.id = '',
      this.name = '',
      this.description = '',
      this.tagLine = '',
      this.color = '',
      this.icon = '',
      this.active = false,
      this.deleted = false,
      this.createdAt = '',
      this.sortOrder = 0,
      @JsonKey(name: '_count') this.count = const CountModel()});
  factory _ServiceListDatamodel.fromJson(Map<String, dynamic> json) =>
      _$ServiceListDatamodelFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String tagLine;
  @override
  @JsonKey()
  final String color;
  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final bool deleted;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final int sortOrder;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: '_count')
  final CountModel count;

  /// Create a copy of ServiceListDatamodel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServiceListDatamodelCopyWith<_ServiceListDatamodel> get copyWith =>
      __$ServiceListDatamodelCopyWithImpl<_ServiceListDatamodel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceListDatamodelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceListDatamodel &&
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
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, tagLine,
      color, icon, active, deleted, createdAt, sortOrder, count);

  @override
  String toString() {
    return 'ServiceListDatamodel(id: $id, name: $name, description: $description, tagLine: $tagLine, color: $color, icon: $icon, active: $active, deleted: $deleted, createdAt: $createdAt, sortOrder: $sortOrder, count: $count)';
  }
}

/// @nodoc
abstract mixin class _$ServiceListDatamodelCopyWith<$Res>
    implements $ServiceListDatamodelCopyWith<$Res> {
  factory _$ServiceListDatamodelCopyWith(_ServiceListDatamodel value,
          $Res Function(_ServiceListDatamodel) _then) =
      __$ServiceListDatamodelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String tagLine,
      String color,
      String icon,
      bool active,
      bool deleted,
      String createdAt,
      int sortOrder,
      @JsonKey(name: '_count') CountModel count});

  @override
  $CountModelCopyWith<$Res> get count;
}

/// @nodoc
class __$ServiceListDatamodelCopyWithImpl<$Res>
    implements _$ServiceListDatamodelCopyWith<$Res> {
  __$ServiceListDatamodelCopyWithImpl(this._self, this._then);

  final _ServiceListDatamodel _self;
  final $Res Function(_ServiceListDatamodel) _then;

  /// Create a copy of ServiceListDatamodel
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
    Object? count = null,
  }) {
    return _then(_ServiceListDatamodel(
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
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as CountModel,
    ));
  }

  /// Create a copy of ServiceListDatamodel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountModelCopyWith<$Res> get count {
    return $CountModelCopyWith<$Res>(_self.count, (value) {
      return _then(_self.copyWith(count: value));
    });
  }
}

/// @nodoc
mixin _$CountModel {
  int get availableForCategories;

  /// Create a copy of CountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CountModelCopyWith<CountModel> get copyWith =>
      _$CountModelCopyWithImpl<CountModel>(this as CountModel, _$identity);

  /// Serializes this CountModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CountModel &&
            (identical(other.availableForCategories, availableForCategories) ||
                other.availableForCategories == availableForCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, availableForCategories);

  @override
  String toString() {
    return 'CountModel(availableForCategories: $availableForCategories)';
  }
}

/// @nodoc
abstract mixin class $CountModelCopyWith<$Res> {
  factory $CountModelCopyWith(
          CountModel value, $Res Function(CountModel) _then) =
      _$CountModelCopyWithImpl;
  @useResult
  $Res call({int availableForCategories});
}

/// @nodoc
class _$CountModelCopyWithImpl<$Res> implements $CountModelCopyWith<$Res> {
  _$CountModelCopyWithImpl(this._self, this._then);

  final CountModel _self;
  final $Res Function(CountModel) _then;

  /// Create a copy of CountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableForCategories = null,
  }) {
    return _then(_self.copyWith(
      availableForCategories: null == availableForCategories
          ? _self.availableForCategories
          : availableForCategories // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CountModel].
extension CountModelPatterns on CountModel {
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
    TResult Function(_CountModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CountModel() when $default != null:
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
    TResult Function(_CountModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CountModel():
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
    TResult? Function(_CountModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CountModel() when $default != null:
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
    TResult Function(int availableForCategories)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CountModel() when $default != null:
        return $default(_that.availableForCategories);
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
    TResult Function(int availableForCategories) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CountModel():
        return $default(_that.availableForCategories);
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
    TResult? Function(int availableForCategories)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CountModel() when $default != null:
        return $default(_that.availableForCategories);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CountModel implements CountModel {
  const _CountModel({this.availableForCategories = 0});
  factory _CountModel.fromJson(Map<String, dynamic> json) =>
      _$CountModelFromJson(json);

  @override
  @JsonKey()
  final int availableForCategories;

  /// Create a copy of CountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CountModelCopyWith<_CountModel> get copyWith =>
      __$CountModelCopyWithImpl<_CountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CountModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountModel &&
            (identical(other.availableForCategories, availableForCategories) ||
                other.availableForCategories == availableForCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, availableForCategories);

  @override
  String toString() {
    return 'CountModel(availableForCategories: $availableForCategories)';
  }
}

/// @nodoc
abstract mixin class _$CountModelCopyWith<$Res>
    implements $CountModelCopyWith<$Res> {
  factory _$CountModelCopyWith(
          _CountModel value, $Res Function(_CountModel) _then) =
      __$CountModelCopyWithImpl;
  @override
  @useResult
  $Res call({int availableForCategories});
}

/// @nodoc
class __$CountModelCopyWithImpl<$Res> implements _$CountModelCopyWith<$Res> {
  __$CountModelCopyWithImpl(this._self, this._then);

  final _CountModel _self;
  final $Res Function(_CountModel) _then;

  /// Create a copy of CountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? availableForCategories = null,
  }) {
    return _then(_CountModel(
      availableForCategories: null == availableForCategories
          ? _self.availableForCategories
          : availableForCategories // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
