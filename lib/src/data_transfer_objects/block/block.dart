// Ignore invalid_annotation_target warnings from freezed-generated code
// ignore_for_file: invalid_annotation_target
// ignore_for_file: always_put_required_named_parameters_first

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tos_dart_sdk/src/data_transfer_objects/dtos.dart';

part 'block.freezed.dart';

part 'block.g.dart';

/// @nodoc
@freezed
abstract class Block with _$Block {
  /// @nodoc
  const factory Block({
    @JsonKey(name: 'block_type') required String blockType,
    @JsonKey(name: 'cumulative_difficulty') String? cumulativeDifficulty,
    @JsonKey(name: 'difficulty') String? difficulty,
    @JsonKey(name: 'extra_nonce') String? extraNonce,
    @JsonKey(name: 'hash') required String hash,
    @JsonKey(name: 'blue_score') required int blueScore,
    @JsonKey(name: 'miner') String? miner,
    @JsonKey(name: 'nonce') required int nonce,
    @JsonKey(name: 'reward') int? reward,
    @JsonKey(name: 'miner_reward') int? minerReward,
    @JsonKey(name: 'dev_reward') int? devReward,
    @JsonKey(name: 'supply') int? supply,
    // TODO convert timestamp to DateTime
    @JsonKey(name: 'timestamp') required int timestamp,
    @JsonKey(name: 'tips') required List<String> tips,
    @JsonKey(name: 'topoheight') int? topoHeight,
    @JsonKey(name: 'total_size_in_bytes') required int totalSizeInBytes,
    @JsonKey(name: 'total_fees') int? totalFees,
    @JsonKey(name: 'txs_hashes') required List<String> txsHashes,
    @JsonKey(name: 'version') required int version,
    @JsonKey(name: 'transactions') List<RPCTransaction>? transactions,
  }) = _Block;

  /// @nodoc
  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);
}
