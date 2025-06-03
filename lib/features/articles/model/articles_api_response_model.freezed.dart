// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticlesApiResponseModel {

 String get category; int get timestamp; int get read; List<ClusterModel> get clusters;
/// Create a copy of ArticlesApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesApiResponseModelCopyWith<ArticlesApiResponseModel> get copyWith => _$ArticlesApiResponseModelCopyWithImpl<ArticlesApiResponseModel>(this as ArticlesApiResponseModel, _$identity);

  /// Serializes this ArticlesApiResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesApiResponseModel&&(identical(other.category, category) || other.category == category)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.read, read) || other.read == read)&&const DeepCollectionEquality().equals(other.clusters, clusters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,timestamp,read,const DeepCollectionEquality().hash(clusters));

@override
String toString() {
  return 'ArticlesApiResponseModel(category: $category, timestamp: $timestamp, read: $read, clusters: $clusters)';
}


}

/// @nodoc
abstract mixin class $ArticlesApiResponseModelCopyWith<$Res>  {
  factory $ArticlesApiResponseModelCopyWith(ArticlesApiResponseModel value, $Res Function(ArticlesApiResponseModel) _then) = _$ArticlesApiResponseModelCopyWithImpl;
@useResult
$Res call({
 String category, int timestamp, int read, List<ClusterModel> clusters
});




}
/// @nodoc
class _$ArticlesApiResponseModelCopyWithImpl<$Res>
    implements $ArticlesApiResponseModelCopyWith<$Res> {
  _$ArticlesApiResponseModelCopyWithImpl(this._self, this._then);

  final ArticlesApiResponseModel _self;
  final $Res Function(ArticlesApiResponseModel) _then;

/// Create a copy of ArticlesApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? timestamp = null,Object? read = null,Object? clusters = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as int,clusters: null == clusters ? _self.clusters : clusters // ignore: cast_nullable_to_non_nullable
as List<ClusterModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ArticlesApiResponseModel extends ArticlesApiResponseModel {
  const _ArticlesApiResponseModel({required this.category, required this.timestamp, required this.read, required final  List<ClusterModel> clusters}): _clusters = clusters,super._();
  factory _ArticlesApiResponseModel.fromJson(Map<String, dynamic> json) => _$ArticlesApiResponseModelFromJson(json);

@override final  String category;
@override final  int timestamp;
@override final  int read;
 final  List<ClusterModel> _clusters;
@override List<ClusterModel> get clusters {
  if (_clusters is EqualUnmodifiableListView) return _clusters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clusters);
}


/// Create a copy of ArticlesApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesApiResponseModelCopyWith<_ArticlesApiResponseModel> get copyWith => __$ArticlesApiResponseModelCopyWithImpl<_ArticlesApiResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticlesApiResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesApiResponseModel&&(identical(other.category, category) || other.category == category)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.read, read) || other.read == read)&&const DeepCollectionEquality().equals(other._clusters, _clusters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,timestamp,read,const DeepCollectionEquality().hash(_clusters));

@override
String toString() {
  return 'ArticlesApiResponseModel(category: $category, timestamp: $timestamp, read: $read, clusters: $clusters)';
}


}

/// @nodoc
abstract mixin class _$ArticlesApiResponseModelCopyWith<$Res> implements $ArticlesApiResponseModelCopyWith<$Res> {
  factory _$ArticlesApiResponseModelCopyWith(_ArticlesApiResponseModel value, $Res Function(_ArticlesApiResponseModel) _then) = __$ArticlesApiResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String category, int timestamp, int read, List<ClusterModel> clusters
});




}
/// @nodoc
class __$ArticlesApiResponseModelCopyWithImpl<$Res>
    implements _$ArticlesApiResponseModelCopyWith<$Res> {
  __$ArticlesApiResponseModelCopyWithImpl(this._self, this._then);

  final _ArticlesApiResponseModel _self;
  final $Res Function(_ArticlesApiResponseModel) _then;

/// Create a copy of ArticlesApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? timestamp = null,Object? read = null,Object? clusters = null,}) {
  return _then(_ArticlesApiResponseModel(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as int,clusters: null == clusters ? _self._clusters : clusters // ignore: cast_nullable_to_non_nullable
as List<ClusterModel>,
  ));
}


}

// dart format on
