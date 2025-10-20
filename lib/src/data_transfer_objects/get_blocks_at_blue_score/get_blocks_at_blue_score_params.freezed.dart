// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_blocks_at_blue_score_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBlocksAtBlueScoreParams {

@JsonKey(name: 'blue_score') int get blueScore;@JsonKey(name: 'include_txs') bool? get includeTxs;
/// Create a copy of GetBlocksAtBlueScoreParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBlocksAtBlueScoreParamsCopyWith<GetBlocksAtBlueScoreParams> get copyWith => _$GetBlocksAtBlueScoreParamsCopyWithImpl<GetBlocksAtBlueScoreParams>(this as GetBlocksAtBlueScoreParams, _$identity);

  /// Serializes this GetBlocksAtBlueScoreParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBlocksAtBlueScoreParams&&(identical(other.blueScore, blueScore) || other.blueScore == blueScore)&&(identical(other.includeTxs, includeTxs) || other.includeTxs == includeTxs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,blueScore,includeTxs);

@override
String toString() {
  return 'GetBlocksAtBlueScoreParams(blueScore: $blueScore, includeTxs: $includeTxs)';
}


}

/// @nodoc
abstract mixin class $GetBlocksAtBlueScoreParamsCopyWith<$Res>  {
  factory $GetBlocksAtBlueScoreParamsCopyWith(GetBlocksAtBlueScoreParams value, $Res Function(GetBlocksAtBlueScoreParams) _then) = _$GetBlocksAtBlueScoreParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'blue_score') int blueScore,@JsonKey(name: 'include_txs') bool? includeTxs
});




}
/// @nodoc
class _$GetBlocksAtBlueScoreParamsCopyWithImpl<$Res>
    implements $GetBlocksAtBlueScoreParamsCopyWith<$Res> {
  _$GetBlocksAtBlueScoreParamsCopyWithImpl(this._self, this._then);

  final GetBlocksAtBlueScoreParams _self;
  final $Res Function(GetBlocksAtBlueScoreParams) _then;

/// Create a copy of GetBlocksAtBlueScoreParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blueScore = null,Object? includeTxs = freezed,}) {
  return _then(_self.copyWith(
blueScore: null == blueScore ? _self.blueScore : blueScore // ignore: cast_nullable_to_non_nullable
as int,includeTxs: freezed == includeTxs ? _self.includeTxs : includeTxs // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBlocksAtBlueScoreParams].
extension GetBlocksAtBlueScoreParamsPatterns on GetBlocksAtBlueScoreParams {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBlocksAtBlueScoreParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBlocksAtBlueScoreParams() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBlocksAtBlueScoreParams value)  $default,){
final _that = this;
switch (_that) {
case _GetBlocksAtBlueScoreParams():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBlocksAtBlueScoreParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetBlocksAtBlueScoreParams() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'blue_score')  int blueScore, @JsonKey(name: 'include_txs')  bool? includeTxs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBlocksAtBlueScoreParams() when $default != null:
return $default(_that.blueScore,_that.includeTxs);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'blue_score')  int blueScore, @JsonKey(name: 'include_txs')  bool? includeTxs)  $default,) {final _that = this;
switch (_that) {
case _GetBlocksAtBlueScoreParams():
return $default(_that.blueScore,_that.includeTxs);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'blue_score')  int blueScore, @JsonKey(name: 'include_txs')  bool? includeTxs)?  $default,) {final _that = this;
switch (_that) {
case _GetBlocksAtBlueScoreParams() when $default != null:
return $default(_that.blueScore,_that.includeTxs);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _GetBlocksAtBlueScoreParams implements GetBlocksAtBlueScoreParams {
  const _GetBlocksAtBlueScoreParams({@JsonKey(name: 'blue_score') required this.blueScore, @JsonKey(name: 'include_txs') this.includeTxs});
  factory _GetBlocksAtBlueScoreParams.fromJson(Map<String, dynamic> json) => _$GetBlocksAtBlueScoreParamsFromJson(json);

@override@JsonKey(name: 'blue_score') final  int blueScore;
@override@JsonKey(name: 'include_txs') final  bool? includeTxs;

/// Create a copy of GetBlocksAtBlueScoreParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBlocksAtBlueScoreParamsCopyWith<_GetBlocksAtBlueScoreParams> get copyWith => __$GetBlocksAtBlueScoreParamsCopyWithImpl<_GetBlocksAtBlueScoreParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBlocksAtBlueScoreParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBlocksAtBlueScoreParams&&(identical(other.blueScore, blueScore) || other.blueScore == blueScore)&&(identical(other.includeTxs, includeTxs) || other.includeTxs == includeTxs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,blueScore,includeTxs);

@override
String toString() {
  return 'GetBlocksAtBlueScoreParams(blueScore: $blueScore, includeTxs: $includeTxs)';
}


}

/// @nodoc
abstract mixin class _$GetBlocksAtBlueScoreParamsCopyWith<$Res> implements $GetBlocksAtBlueScoreParamsCopyWith<$Res> {
  factory _$GetBlocksAtBlueScoreParamsCopyWith(_GetBlocksAtBlueScoreParams value, $Res Function(_GetBlocksAtBlueScoreParams) _then) = __$GetBlocksAtBlueScoreParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'blue_score') int blueScore,@JsonKey(name: 'include_txs') bool? includeTxs
});




}
/// @nodoc
class __$GetBlocksAtBlueScoreParamsCopyWithImpl<$Res>
    implements _$GetBlocksAtBlueScoreParamsCopyWith<$Res> {
  __$GetBlocksAtBlueScoreParamsCopyWithImpl(this._self, this._then);

  final _GetBlocksAtBlueScoreParams _self;
  final $Res Function(_GetBlocksAtBlueScoreParams) _then;

/// Create a copy of GetBlocksAtBlueScoreParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blueScore = null,Object? includeTxs = freezed,}) {
  return _then(_GetBlocksAtBlueScoreParams(
blueScore: null == blueScore ? _self.blueScore : blueScore // ignore: cast_nullable_to_non_nullable
as int,includeTxs: freezed == includeTxs ? _self.includeTxs : includeTxs // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
