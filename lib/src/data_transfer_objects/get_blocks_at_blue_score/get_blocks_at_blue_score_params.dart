// Ignore invalid_annotation_target warnings from freezed-generated code
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_blocks_at_blue_score_params.freezed.dart';

part 'get_blocks_at_blue_score_params.g.dart';

/// Parameters for getting all blocks at a specific blue score (DAG height).
@freezed
abstract class GetBlocksAtBlueScoreParams with _$GetBlocksAtBlueScoreParams {
  /// @nodoc
  @JsonSerializable(includeIfNull: false)
  const factory GetBlocksAtBlueScoreParams({
    @JsonKey(name: 'blue_score') required int blueScore,
    @JsonKey(name: 'include_txs') bool? includeTxs,
  }) = _GetBlocksAtBlueScoreParams;

  /// @nodoc
  factory GetBlocksAtBlueScoreParams.fromJson(Map<String, dynamic> json) =>
      _$GetBlocksAtBlueScoreParamsFromJson(json);
}
