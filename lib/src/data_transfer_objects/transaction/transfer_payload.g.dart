// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: package_api_docs, non_constant_identifier_names

part of 'transfer_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransferPayload _$TransferPayloadFromJson(Map<String, dynamic> json) =>
    _TransferPayload(
      asset: json['asset'] as String,
      destination: json['destination'],
      amount: (json['amount'] as num).toInt(),
      extraData: json['extra_data'],
    );

Map<String, dynamic> _$TransferPayloadToJson(_TransferPayload instance) =>
    <String, dynamic>{
      'asset': instance.asset,
      'destination': instance.destination,
      'amount': instance.amount,
      'extra_data': instance.extraData,
    };
