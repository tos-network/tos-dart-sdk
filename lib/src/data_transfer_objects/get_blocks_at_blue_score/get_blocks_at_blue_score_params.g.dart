// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: package_api_docs, non_constant_identifier_names

part of 'get_blocks_at_blue_score_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBlocksAtBlueScoreParams _$GetBlocksAtBlueScoreParamsFromJson(
  Map<String, dynamic> json,
) => _GetBlocksAtBlueScoreParams(
  blueScore: (json['blue_score'] as num).toInt(),
  includeTxs: json['include_txs'] as bool?,
);

Map<String, dynamic> _$GetBlocksAtBlueScoreParamsToJson(
  _GetBlocksAtBlueScoreParams instance,
) => <String, dynamic>{
  'blue_score': instance.blueScore,
  'include_txs': ?instance.includeTxs,
};
