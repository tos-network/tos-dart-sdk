// Ignore invalid_annotation_target warnings from freezed-generated code
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimate_extra_data_size_params.freezed.dart';

part 'estimate_extra_data_size_params.g.dart';

/// @nodoc
@freezed
abstract class EstimateExtraDataSizeParams with _$EstimateExtraDataSizeParams {
  /// @nodoc
  const factory EstimateExtraDataSizeParams({
    @JsonKey(name: 'destinations') required List<String> destinations,
  }) = _EstimateExtraDataSizeParams;

  /// @nodoc
  factory EstimateExtraDataSizeParams.fromJson(Map<String, dynamic> json) =>
      _$EstimateExtraDataSizeParamsFromJson(json);
}
