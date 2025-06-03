// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryStateModel {

 CategoryApiResponseModel? get data;
/// Create a copy of CategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateModelCopyWith<CategoryStateModel> get copyWith => _$CategoryStateModelCopyWithImpl<CategoryStateModel>(this as CategoryStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryStateModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CategoryStateModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $CategoryStateModelCopyWith<$Res>  {
  factory $CategoryStateModelCopyWith(CategoryStateModel value, $Res Function(CategoryStateModel) _then) = _$CategoryStateModelCopyWithImpl;
@useResult
$Res call({
 CategoryApiResponseModel? data
});


$CategoryApiResponseModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$CategoryStateModelCopyWithImpl<$Res>
    implements $CategoryStateModelCopyWith<$Res> {
  _$CategoryStateModelCopyWithImpl(this._self, this._then);

  final CategoryStateModel _self;
  final $Res Function(CategoryStateModel) _then;

/// Create a copy of CategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryApiResponseModel?,
  ));
}
/// Create a copy of CategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryApiResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CategoryApiResponseModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc


class _CategoryStateModel implements CategoryStateModel {
  const _CategoryStateModel({this.data});
  

@override final  CategoryApiResponseModel? data;

/// Create a copy of CategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryStateModelCopyWith<_CategoryStateModel> get copyWith => __$CategoryStateModelCopyWithImpl<_CategoryStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryStateModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CategoryStateModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CategoryStateModelCopyWith<$Res> implements $CategoryStateModelCopyWith<$Res> {
  factory _$CategoryStateModelCopyWith(_CategoryStateModel value, $Res Function(_CategoryStateModel) _then) = __$CategoryStateModelCopyWithImpl;
@override @useResult
$Res call({
 CategoryApiResponseModel? data
});


@override $CategoryApiResponseModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$CategoryStateModelCopyWithImpl<$Res>
    implements _$CategoryStateModelCopyWith<$Res> {
  __$CategoryStateModelCopyWithImpl(this._self, this._then);

  final _CategoryStateModel _self;
  final $Res Function(_CategoryStateModel) _then;

/// Create a copy of CategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_CategoryStateModel(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryApiResponseModel?,
  ));
}

/// Create a copy of CategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryApiResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CategoryApiResponseModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
