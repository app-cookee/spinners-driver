import 'package:freezed_annotation/freezed_annotation.dart';
part 'service_list_datamodel.g.dart';
part 'service_list_datamodel.freezed.dart';
@freezed
abstract class ServiceListDatamodel with _$ServiceListDatamodel{
  const factory ServiceListDatamodel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String tagLine,
    @Default('') String color,
    @Default('') String icon,
    @Default(false) bool active,
    @Default(false) bool deleted,
    @Default('') String createdAt,
    @Default(0) int sortOrder,
    // ignore: invalid_annotation_target
    @JsonKey(name: '_count') @Default(CountModel()) CountModel count,
  }) = _ServiceListDatamodel;

  factory ServiceListDatamodel.fromJson(Map<String, dynamic> json) => _$ServiceListDatamodelFromJson(json);
}
@freezed
abstract class CountModel with _$CountModel{
  const factory CountModel({
    @Default(0) int availableForCategories,
  }) = _CountModel;

  factory CountModel.fromJson(Map<String, dynamic> json) => _$CountModelFromJson(json);
}

