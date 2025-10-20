// Ignore invalid_annotation_target warnings from freezed-generated code
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_balance_result.freezed.dart';

part 'get_balance_result.g.dart';

/// @nodoc
@freezed
abstract class GetBalanceResult with _$GetBalanceResult {
  /// @nodoc
  const factory GetBalanceResult({
    @JsonKey(name: 'balance') required int balance,
    @JsonKey(name: 'topoheight') required int topoheight,
  }) = _GetBalanceResult;

  /// @nodoc
  factory GetBalanceResult.fromJson(Map<String, dynamic> json) =>
      _$GetBalanceResultFromJson(json);
}
