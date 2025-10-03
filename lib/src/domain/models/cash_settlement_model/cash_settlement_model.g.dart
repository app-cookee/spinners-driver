// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_settlement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CashSettlementModel _$CashSettlementModelFromJson(Map<String, dynamic> json) =>
    _CashSettlementModel(
      cashSettlementList: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  CashSettlementResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CashSettlementModelToJson(
        _CashSettlementModel instance) =>
    <String, dynamic>{
      'data': instance.cashSettlementList,
      'totalCount': instance.totalCount,
    };

_CashSettlementResponse _$CashSettlementResponseFromJson(
        Map<String, dynamic> json) =>
    _CashSettlementResponse(
      id: json['id'] as String? ?? "",
      driverId: json['driverId'] as String? ?? "",
      amount: json['amount'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      currentPending: json['currentPending'] as String? ?? "",
    );

Map<String, dynamic> _$CashSettlementResponseToJson(
        _CashSettlementResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driverId': instance.driverId,
      'amount': instance.amount,
      'createdAt': instance.createdAt,
      'currentPending': instance.currentPending,
    };
