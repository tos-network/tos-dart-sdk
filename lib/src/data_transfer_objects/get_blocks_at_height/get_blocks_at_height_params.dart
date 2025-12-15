// Ignore invalid_annotation_target warnings from freezed-generated code
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_blocks_at_height_params.freezed.dart';

part 'get_blocks_at_height_params.g.dart';

/// Parameters for getting all blocks at a specific height (DAG height).
@freezed
abstract class GetBlocksAtHeightParams with _$GetBlocksAtHeightParams {
  /// @nodoc
  @JsonSerializable(includeIfNull: false)
  const factory GetBlocksAtHeightParams({
    @JsonKey(name: 'height') required int height,
    @JsonKey(name: 'include_txs') bool? includeTxs,
  }) = _GetBlocksAtHeightParams;

  /// @nodoc
  factory GetBlocksAtHeightParams.fromJson(Map<String, dynamic> json) =>
      _$GetBlocksAtHeightParamsFromJson(json);
}
