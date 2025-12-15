// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: package_api_docs, non_constant_identifier_names

part of 'get_info_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetInfoResult _$GetInfoResultFromJson(Map<String, dynamic> json) =>
    _GetInfoResult(
      height: (json['height'] as num).toInt(),
      topoHeight: (json['topoheight'] as num).toInt(),
      stableHeight: (json['stable_height'] as num?)?.toInt(),
      prunedTopoHeight: (json['pruned_topoheight'] as num?)?.toInt(),
      topBlockHash: json['top_block_hash'] as String,
      circulatingSupply: (json['circulating_supply'] as num?)?.toInt(),
      maximumSupply: (json['maximum_supply'] as num?)?.toInt(),
      burnedSupply: (json['burned_supply'] as num?)?.toInt(),
      emittedSupply: (json['emitted_supply'] as num?)?.toInt(),
      difficulty: json['difficulty'] as String,
      blockTimeTarget: (json['block_time_target'] as num?)?.toInt(),
      averageBlockTime: (json['average_block_time'] as num?)?.toInt(),
      bps: (json['bps'] as num?)?.toInt(),
      actualBps: (json['actual_bps'] as num?)?.toInt(),
      blockReward: (json['block_reward'] as num?)?.toInt(),
      mempoolSize: (json['mempool_size'] as num).toInt(),
      version: json['version'] as String,
      blockVersion: (json['block_version'] as num?)?.toInt(),
      network: $enumDecode(_$NetworkEnumMap, json['network']),
      minerReward: (json['miner_reward'] as num?)?.toInt(),
      devReward: (json['dev_reward'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetInfoResultToJson(_GetInfoResult instance) =>
    <String, dynamic>{
      'height': instance.height,
      'topoheight': instance.topoHeight,
      'stable_height': instance.stableHeight,
      'pruned_topoheight': instance.prunedTopoHeight,
      'top_block_hash': instance.topBlockHash,
      'circulating_supply': instance.circulatingSupply,
      'maximum_supply': instance.maximumSupply,
      'burned_supply': instance.burnedSupply,
      'emitted_supply': instance.emittedSupply,
      'difficulty': instance.difficulty,
      'block_time_target': instance.blockTimeTarget,
      'average_block_time': instance.averageBlockTime,
      'bps': instance.bps,
      'actual_bps': instance.actualBps,
      'block_reward': instance.blockReward,
      'mempool_size': instance.mempoolSize,
      'version': instance.version,
      'block_version': instance.blockVersion,
      'network': _$NetworkEnumMap[instance.network]!,
      'miner_reward': instance.minerReward,
      'dev_reward': instance.devReward,
    };

const _$NetworkEnumMap = {
  Network.mainnet: 'Mainnet',
  Network.testnet: 'Testnet',
  Network.devnet: 'Dev',
  Network.stagenet: 'Stagenet',
};
