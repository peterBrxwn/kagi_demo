// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'perspective_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PerspectiveModel {

 String get text; List<SourceModel>? get sources;
/// Create a copy of PerspectiveModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerspectiveModelCopyWith<PerspectiveModel> get copyWith => _$PerspectiveModelCopyWithImpl<PerspectiveModel>(this as PerspectiveModel, _$identity);

  /// Serializes this PerspectiveModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerspectiveModel&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.sources, sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(sources));

@override
String toString() {
  return 'PerspectiveModel(text: $text, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $PerspectiveModelCopyWith<$Res>  {
  factory $PerspectiveModelCopyWith(PerspectiveModel value, $Res Function(PerspectiveModel) _then) = _$PerspectiveModelCopyWithImpl;
@useResult
$Res call({
 String text, List<SourceModel>? sources
});




}
/// @nodoc
class _$PerspectiveModelCopyWithImpl<$Res>
    implements $PerspectiveModelCopyWith<$Res> {
  _$PerspectiveModelCopyWithImpl(this._self, this._then);

  final PerspectiveModel _self;
  final $Res Function(PerspectiveModel) _then;

/// Create a copy of PerspectiveModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? sources = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<SourceModel>?,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PerspectiveModel implements PerspectiveModel {
  const _PerspectiveModel({required this.text, final  List<SourceModel>? sources}): _sources = sources;
  factory _PerspectiveModel.fromJson(Map<String, dynamic> json) => _$PerspectiveModelFromJson(json);

@override final  String text;
 final  List<SourceModel>? _sources;
@override List<SourceModel>? get sources {
  final value = _sources;
  if (value == null) return null;
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PerspectiveModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerspectiveModelCopyWith<_PerspectiveModel> get copyWith => __$PerspectiveModelCopyWithImpl<_PerspectiveModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PerspectiveModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerspectiveModel&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._sources, _sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'PerspectiveModel(text: $text, sources: $sources)';
}


}

/// @nodoc
abstract mixin class _$PerspectiveModelCopyWith<$Res> implements $PerspectiveModelCopyWith<$Res> {
  factory _$PerspectiveModelCopyWith(_PerspectiveModel value, $Res Function(_PerspectiveModel) _then) = __$PerspectiveModelCopyWithImpl;
@override @useResult
$Res call({
 String text, List<SourceModel>? sources
});




}
/// @nodoc
class __$PerspectiveModelCopyWithImpl<$Res>
    implements _$PerspectiveModelCopyWith<$Res> {
  __$PerspectiveModelCopyWithImpl(this._self, this._then);

  final _PerspectiveModel _self;
  final $Res Function(_PerspectiveModel) _then;

/// Create a copy of PerspectiveModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? sources = freezed,}) {
  return _then(_PerspectiveModel(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,sources: freezed == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<SourceModel>?,
  ));
}


}

// dart format on
