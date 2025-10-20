// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: package_api_docs, non_constant_identifier_names

part of 'get_miner_work_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMinerWorkResult _$GetMinerWorkResultFromJson(Map<String, dynamic> json) =>
    _GetMinerWorkResult(
      algorithm: json['algorithm'] as String,
      minerWork: json['miner_work'] as String,
      blueScore: (json['blue_score'] as num).toInt(),
      difficulty: (json['difficulty'] as num).toInt(),
      topoheight: (json['topoheight'] as num).toInt(),
    );

Map<String, dynamic> _$GetMinerWorkResultToJson(_GetMinerWorkResult instance) =>
    <String, dynamic>{
      'algorithm': instance.algorithm,
      'miner_work': instance.minerWork,
      'blue_score': instance.blueScore,
      'difficulty': instance.difficulty,
      'topoheight': instance.topoheight,
    };
