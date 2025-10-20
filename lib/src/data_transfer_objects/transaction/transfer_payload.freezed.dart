// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransferPayload {

@JsonKey(name: 'asset') String get asset;@JsonKey(name: 'destination') dynamic get destination;@JsonKey(name: 'amount') int get amount;@JsonKey(name: 'extra_data') dynamic get extraData;
/// Create a copy of TransferPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferPayloadCopyWith<TransferPayload> get copyWith => _$TransferPayloadCopyWithImpl<TransferPayload>(this as TransferPayload, _$identity);

  /// Serializes this TransferPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferPayload&&(identical(other.asset, asset) || other.asset == asset)&&const DeepCollectionEquality().equals(other.destination, destination)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.extraData, extraData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asset,const DeepCollectionEquality().hash(destination),amount,const DeepCollectionEquality().hash(extraData));

@override
String toString() {
  return 'TransferPayload(asset: $asset, destination: $destination, amount: $amount, extraData: $extraData)';
}


}

/// @nodoc
abstract mixin class $TransferPayloadCopyWith<$Res>  {
  factory $TransferPayloadCopyWith(TransferPayload value, $Res Function(TransferPayload) _then) = _$TransferPayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'asset') String asset,@JsonKey(name: 'destination') dynamic destination,@JsonKey(name: 'amount') int amount,@JsonKey(name: 'extra_data') dynamic extraData
});




}
/// @nodoc
class _$TransferPayloadCopyWithImpl<$Res>
    implements $TransferPayloadCopyWith<$Res> {
  _$TransferPayloadCopyWithImpl(this._self, this._then);

  final TransferPayload _self;
  final $Res Function(TransferPayload) _then;

/// Create a copy of TransferPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asset = null,Object? destination = freezed,Object? amount = null,Object? extraData = freezed,}) {
  return _then(_self.copyWith(
asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as String,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as dynamic,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,extraData: freezed == extraData ? _self.extraData : extraData // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [TransferPayload].
extension TransferPayloadPatterns on TransferPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransferPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransferPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransferPayload value)  $default,){
final _that = this;
switch (_that) {
case _TransferPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransferPayload value)?  $default,){
final _that = this;
switch (_that) {
case _TransferPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'asset')  String asset, @JsonKey(name: 'destination')  dynamic destination, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'extra_data')  dynamic extraData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransferPayload() when $default != null:
return $default(_that.asset,_that.destination,_that.amount,_that.extraData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'asset')  String asset, @JsonKey(name: 'destination')  dynamic destination, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'extra_data')  dynamic extraData)  $default,) {final _that = this;
switch (_that) {
case _TransferPayload():
return $default(_that.asset,_that.destination,_that.amount,_that.extraData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'asset')  String asset, @JsonKey(name: 'destination')  dynamic destination, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'extra_data')  dynamic extraData)?  $default,) {final _that = this;
switch (_that) {
case _TransferPayload() when $default != null:
return $default(_that.asset,_that.destination,_that.amount,_that.extraData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransferPayload implements TransferPayload {
  const _TransferPayload({@JsonKey(name: 'asset') required this.asset, @JsonKey(name: 'destination') required this.destination, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'extra_data') this.extraData});
  factory _TransferPayload.fromJson(Map<String, dynamic> json) => _$TransferPayloadFromJson(json);

@override@JsonKey(name: 'asset') final  String asset;
@override@JsonKey(name: 'destination') final  dynamic destination;
@override@JsonKey(name: 'amount') final  int amount;
@override@JsonKey(name: 'extra_data') final  dynamic extraData;

/// Create a copy of TransferPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransferPayloadCopyWith<_TransferPayload> get copyWith => __$TransferPayloadCopyWithImpl<_TransferPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransferPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransferPayload&&(identical(other.asset, asset) || other.asset == asset)&&const DeepCollectionEquality().equals(other.destination, destination)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.extraData, extraData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asset,const DeepCollectionEquality().hash(destination),amount,const DeepCollectionEquality().hash(extraData));

@override
String toString() {
  return 'TransferPayload(asset: $asset, destination: $destination, amount: $amount, extraData: $extraData)';
}


}

/// @nodoc
abstract mixin class _$TransferPayloadCopyWith<$Res> implements $TransferPayloadCopyWith<$Res> {
  factory _$TransferPayloadCopyWith(_TransferPayload value, $Res Function(_TransferPayload) _then) = __$TransferPayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'asset') String asset,@JsonKey(name: 'destination') dynamic destination,@JsonKey(name: 'amount') int amount,@JsonKey(name: 'extra_data') dynamic extraData
});




}
/// @nodoc
class __$TransferPayloadCopyWithImpl<$Res>
    implements _$TransferPayloadCopyWith<$Res> {
  __$TransferPayloadCopyWithImpl(this._self, this._then);

  final _TransferPayload _self;
  final $Res Function(_TransferPayload) _then;

/// Create a copy of TransferPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asset = null,Object? destination = freezed,Object? amount = null,Object? extraData = freezed,}) {
  return _then(_TransferPayload(
asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as String,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as dynamic,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,extraData: freezed == extraData ? _self.extraData : extraData // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
