// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticlesStateModel {

 ArticlesApiResponseModel? get data;
/// Create a copy of ArticlesStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesStateModelCopyWith<ArticlesStateModel> get copyWith => _$ArticlesStateModelCopyWithImpl<ArticlesStateModel>(this as ArticlesStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesStateModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ArticlesStateModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $ArticlesStateModelCopyWith<$Res>  {
  factory $ArticlesStateModelCopyWith(ArticlesStateModel value, $Res Function(ArticlesStateModel) _then) = _$ArticlesStateModelCopyWithImpl;
@useResult
$Res call({
 ArticlesApiResponseModel? data
});


$ArticlesApiResponseModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$ArticlesStateModelCopyWithImpl<$Res>
    implements $ArticlesStateModelCopyWith<$Res> {
  _$ArticlesStateModelCopyWithImpl(this._self, this._then);

  final ArticlesStateModel _self;
  final $Res Function(ArticlesStateModel) _then;

/// Create a copy of ArticlesStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ArticlesApiResponseModel?,
  ));
}
/// Create a copy of ArticlesStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesApiResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ArticlesApiResponseModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc


class _ArticlesStateModel implements ArticlesStateModel {
  const _ArticlesStateModel({this.data});
  

@override final  ArticlesApiResponseModel? data;

/// Create a copy of ArticlesStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesStateModelCopyWith<_ArticlesStateModel> get copyWith => __$ArticlesStateModelCopyWithImpl<_ArticlesStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesStateModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ArticlesStateModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ArticlesStateModelCopyWith<$Res> implements $ArticlesStateModelCopyWith<$Res> {
  factory _$ArticlesStateModelCopyWith(_ArticlesStateModel value, $Res Function(_ArticlesStateModel) _then) = __$ArticlesStateModelCopyWithImpl;
@override @useResult
$Res call({
 ArticlesApiResponseModel? data
});


@override $ArticlesApiResponseModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$ArticlesStateModelCopyWithImpl<$Res>
    implements _$ArticlesStateModelCopyWith<$Res> {
  __$ArticlesStateModelCopyWithImpl(this._self, this._then);

  final _ArticlesStateModel _self;
  final $Res Function(_ArticlesStateModel) _then;

/// Create a copy of ArticlesStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ArticlesStateModel(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ArticlesApiResponseModel?,
  ));
}

/// Create a copy of ArticlesStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesApiResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ArticlesApiResponseModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
