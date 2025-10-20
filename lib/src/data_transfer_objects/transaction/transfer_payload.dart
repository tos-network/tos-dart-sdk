// Ignore invalid_annotation_target warnings from freezed-generated code
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_payload.freezed.dart';

part 'transfer_payload.g.dart';

/// @nodoc
@freezed
abstract class TransferPayload with _$TransferPayload {
  /// @nodoc
  const factory TransferPayload({
    @JsonKey(name: 'asset') required String asset,
    @JsonKey(name: 'destination') required dynamic destination,
    @JsonKey(name: 'amount') required int amount,
    @JsonKey(name: 'extra_data') dynamic extraData,
  }) = _TransferPayload;

  /// @nodoc
  factory TransferPayload.fromJson(Map<String, dynamic> json) =>
      _$TransferPayloadFromJson(json);
}
