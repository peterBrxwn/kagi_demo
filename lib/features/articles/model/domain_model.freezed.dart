// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DomainModel {

 String get name; String get favicon;
/// Create a copy of DomainModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DomainModelCopyWith<DomainModel> get copyWith => _$DomainModelCopyWithImpl<DomainModel>(this as DomainModel, _$identity);

  /// Serializes this DomainModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DomainModel&&(identical(other.name, name) || other.name == name)&&(identical(other.favicon, favicon) || other.favicon == favicon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,favicon);

@override
String toString() {
  return 'DomainModel(name: $name, favicon: $favicon)';
}


}

/// @nodoc
abstract mixin class $DomainModelCopyWith<$Res>  {
  factory $DomainModelCopyWith(DomainModel value, $Res Function(DomainModel) _then) = _$DomainModelCopyWithImpl;
@useResult
$Res call({
 String name, String favicon
});




}
/// @nodoc
class _$DomainModelCopyWithImpl<$Res>
    implements $DomainModelCopyWith<$Res> {
  _$DomainModelCopyWithImpl(this._self, this._then);

  final DomainModel _self;
  final $Res Function(DomainModel) _then;

/// Create a copy of DomainModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? favicon = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,favicon: null == favicon ? _self.favicon : favicon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DomainModel implements DomainModel {
  const _DomainModel({required this.name, required this.favicon});
  factory _DomainModel.fromJson(Map<String, dynamic> json) => _$DomainModelFromJson(json);

@override final  String name;
@override final  String favicon;

/// Create a copy of DomainModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DomainModelCopyWith<_DomainModel> get copyWith => __$DomainModelCopyWithImpl<_DomainModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DomainModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DomainModel&&(identical(other.name, name) || other.name == name)&&(identical(other.favicon, favicon) || other.favicon == favicon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,favicon);

@override
String toString() {
  return 'DomainModel(name: $name, favicon: $favicon)';
}


}

/// @nodoc
abstract mixin class _$DomainModelCopyWith<$Res> implements $DomainModelCopyWith<$Res> {
  factory _$DomainModelCopyWith(_DomainModel value, $Res Function(_DomainModel) _then) = __$DomainModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String favicon
});




}
/// @nodoc
class __$DomainModelCopyWithImpl<$Res>
    implements _$DomainModelCopyWith<$Res> {
  __$DomainModelCopyWithImpl(this._self, this._then);

  final _DomainModel _self;
  final $Res Function(_DomainModel) _then;

/// Create a copy of DomainModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? favicon = null,}) {
  return _then(_DomainModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,favicon: null == favicon ? _self.favicon : favicon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
