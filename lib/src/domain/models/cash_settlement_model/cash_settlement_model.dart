// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';


part 'cash_settlement_model.freezed.dart';
part 'cash_settlement_model.g.dart';
@freezed
abstract class CashSettlementModel with _$CashSettlementModel {
  const factory CashSettlementModel({
    @JsonKey(name: 'data') @Default([]) List<CashSettlementResponse> cashSettlementList,
    @JsonKey(name: 'totalCount') @Default(0) int totalCount,
  }) = _CashSettlementModel;

  factory CashSettlementModel.fromJson(Map<String, dynamic> json) =>
      _$CashSettlementModelFromJson(json);
}

@freezed
abstract class CashSettlementResponse with _$CashSettlementResponse {
  const factory CashSettlementResponse({
    @JsonKey(name: 'id') @Default("") String id,
    @JsonKey(name: 'driverId') @Default("") String driverId,
    @JsonKey(name: 'amount') @Default("") String amount,
    @JsonKey(name: 'createdAt') @Default("") String createdAt,
    @JsonKey(name: 'currentPending') @Default("") String currentPending,
  }) = _CashSettlementResponse;

  factory CashSettlementResponse.fromJson(Map<String, dynamic> json) =>
      _$CashSettlementResponseFromJson(json);
}