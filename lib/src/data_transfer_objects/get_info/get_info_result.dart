// Ignore invalid_annotation_target warnings from freezed-generated code
// ignore_for_file: invalid_annotation_target
// ignore_for_file: always_put_required_named_parameters_first

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tos_dart_sdk/src/data_transfer_objects/network/network.dart';

part 'get_info_result.freezed.dart';
part 'get_info_result.g.dart';

/// @nodoc
@freezed
abstract class GetInfoResult with _$GetInfoResult {
  /// @nodoc
  const factory GetInfoResult({
    @JsonKey(name: 'height') required int height,
    @JsonKey(name: 'topoheight') required int topoHeight,
    @JsonKey(name: 'stable_height') int? stableHeight,
    @JsonKey(name: 'pruned_topoheight') int? prunedTopoHeight,
    @JsonKey(name: 'top_block_hash') required String topBlockHash,
    @JsonKey(name: 'circulating_supply') int? circulatingSupply,
    @JsonKey(name: 'maximum_supply') int? maximumSupply,
    @JsonKey(name: 'burned_supply') int? burnedSupply,
    @JsonKey(name: 'emitted_supply') int? emittedSupply,
    @JsonKey(name: 'difficulty') required String difficulty,
    @JsonKey(name: 'block_time_target') int? blockTimeTarget,
    @JsonKey(name: 'average_block_time') int? averageBlockTime,
    @JsonKey(name: 'bps') int? bps,
    @JsonKey(name: 'actual_bps') int? actualBps,
    @JsonKey(name: 'block_reward') int? blockReward,
    @JsonKey(name: 'mempool_size') required int mempoolSize,
    @JsonKey(name: 'version') required String version,
    @JsonKey(name: 'block_version') int? blockVersion,
    @JsonKey(name: 'network') required Network network,
    @JsonKey(name: 'miner_reward') int? minerReward,
    @JsonKey(name: 'dev_reward') int? devReward,
  }) = _GetInfoResult;

  /// @nodoc
  factory GetInfoResult.fromJson(Map<String, dynamic> json) =>
      _$GetInfoResultFromJson(json);
}
