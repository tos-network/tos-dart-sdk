// Ignore invalid_annotation_target warnings from freezed-generated code
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimate_extra_data_size_result.freezed.dart';

part 'estimate_extra_data_size_result.g.dart';

/// @nodoc
@freezed
abstract class EstimateExtraDataSizeResult with _$EstimateExtraDataSizeResult {
  /// @nodoc
  const factory EstimateExtraDataSizeResult({
    @JsonKey(name: 'size') required int size,
  }) = _EstimateExtraDataSizeResult;

  /// @nodoc
  factory EstimateExtraDataSizeResult.fromJson(Map<String, dynamic> json) =>
      _$EstimateExtraDataSizeResultFromJson(json);
}
