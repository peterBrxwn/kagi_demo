// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryApiResponseModel {

 int get timestamp; List<CategoryModel> get categories;
/// Create a copy of CategoryApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryApiResponseModelCopyWith<CategoryApiResponseModel> get copyWith => _$CategoryApiResponseModelCopyWithImpl<CategoryApiResponseModel>(this as CategoryApiResponseModel, _$identity);

  /// Serializes this CategoryApiResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryApiResponseModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CategoryApiResponseModel(timestamp: $timestamp, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryApiResponseModelCopyWith<$Res>  {
  factory $CategoryApiResponseModelCopyWith(CategoryApiResponseModel value, $Res Function(CategoryApiResponseModel) _then) = _$CategoryApiResponseModelCopyWithImpl;
@useResult
$Res call({
 int timestamp, List<CategoryModel> categories
});




}
/// @nodoc
class _$CategoryApiResponseModelCopyWithImpl<$Res>
    implements $CategoryApiResponseModelCopyWith<$Res> {
  _$CategoryApiResponseModelCopyWithImpl(this._self, this._then);

  final CategoryApiResponseModel _self;
  final $Res Function(CategoryApiResponseModel) _then;

/// Create a copy of CategoryApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? categories = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CategoryApiResponseModel extends CategoryApiResponseModel {
  const _CategoryApiResponseModel({required this.timestamp, required final  List<CategoryModel> categories}): _categories = categories,super._();
  factory _CategoryApiResponseModel.fromJson(Map<String, dynamic> json) => _$CategoryApiResponseModelFromJson(json);

@override final  int timestamp;
 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryApiResponseModelCopyWith<_CategoryApiResponseModel> get copyWith => __$CategoryApiResponseModelCopyWithImpl<_CategoryApiResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryApiResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryApiResponseModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryApiResponseModel(timestamp: $timestamp, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoryApiResponseModelCopyWith<$Res> implements $CategoryApiResponseModelCopyWith<$Res> {
  factory _$CategoryApiResponseModelCopyWith(_CategoryApiResponseModel value, $Res Function(_CategoryApiResponseModel) _then) = __$CategoryApiResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, List<CategoryModel> categories
});




}
/// @nodoc
class __$CategoryApiResponseModelCopyWithImpl<$Res>
    implements _$CategoryApiResponseModelCopyWith<$Res> {
  __$CategoryApiResponseModelCopyWithImpl(this._self, this._then);

  final _CategoryApiResponseModel _self;
  final $Res Function(_CategoryApiResponseModel) _then;

/// Create a copy of CategoryApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? categories = null,}) {
  return _then(_CategoryApiResponseModel(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}

// dart format on
