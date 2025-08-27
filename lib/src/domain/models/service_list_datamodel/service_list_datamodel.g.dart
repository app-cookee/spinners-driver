// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_list_datamodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceListDatamodel _$ServiceListDatamodelFromJson(
        Map<String, dynamic> json) =>
    _ServiceListDatamodel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      tagLine: json['tagLine'] as String? ?? '',
      color: json['color'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      active: json['active'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? '',
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
      count: json['_count'] == null
          ? const CountModel()
          : CountModel.fromJson(json['_count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServiceListDatamodelToJson(
        _ServiceListDatamodel instance) =>
    <String, dynamic>{
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
      '_count': instance.count,
    };

_CountModel _$CountModelFromJson(Map<String, dynamic> json) => _CountModel(
      availableForCategories:
          (json['availableForCategories'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CountModelToJson(_CountModel instance) =>
    <String, dynamic>{
      'availableForCategories': instance.availableForCategories,
    };
