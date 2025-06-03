// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_qna_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedQnAModel {

 String get question; String get answer;
/// Create a copy of SuggestedQnAModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestedQnAModelCopyWith<SuggestedQnAModel> get copyWith => _$SuggestedQnAModelCopyWithImpl<SuggestedQnAModel>(this as SuggestedQnAModel, _$identity);

  /// Serializes this SuggestedQnAModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestedQnAModel&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,answer);

@override
String toString() {
  return 'SuggestedQnAModel(question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $SuggestedQnAModelCopyWith<$Res>  {
  factory $SuggestedQnAModelCopyWith(SuggestedQnAModel value, $Res Function(SuggestedQnAModel) _then) = _$SuggestedQnAModelCopyWithImpl;
@useResult
$Res call({
 String question, String answer
});




}
/// @nodoc
class _$SuggestedQnAModelCopyWithImpl<$Res>
    implements $SuggestedQnAModelCopyWith<$Res> {
  _$SuggestedQnAModelCopyWithImpl(this._self, this._then);

  final SuggestedQnAModel _self;
  final $Res Function(SuggestedQnAModel) _then;

/// Create a copy of SuggestedQnAModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? answer = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _SuggestedQnAModel implements SuggestedQnAModel {
  const _SuggestedQnAModel({required this.question, required this.answer});
  factory _SuggestedQnAModel.fromJson(Map<String, dynamic> json) => _$SuggestedQnAModelFromJson(json);

@override final  String question;
@override final  String answer;

/// Create a copy of SuggestedQnAModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestedQnAModelCopyWith<_SuggestedQnAModel> get copyWith => __$SuggestedQnAModelCopyWithImpl<_SuggestedQnAModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuggestedQnAModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestedQnAModel&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,answer);

@override
String toString() {
  return 'SuggestedQnAModel(question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$SuggestedQnAModelCopyWith<$Res> implements $SuggestedQnAModelCopyWith<$Res> {
  factory _$SuggestedQnAModelCopyWith(_SuggestedQnAModel value, $Res Function(_SuggestedQnAModel) _then) = __$SuggestedQnAModelCopyWithImpl;
@override @useResult
$Res call({
 String question, String answer
});




}
/// @nodoc
class __$SuggestedQnAModelCopyWithImpl<$Res>
    implements _$SuggestedQnAModelCopyWith<$Res> {
  __$SuggestedQnAModelCopyWithImpl(this._self, this._then);

  final _SuggestedQnAModel _self;
  final $Res Function(_SuggestedQnAModel) _then;

/// Create a copy of SuggestedQnAModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? answer = null,}) {
  return _then(_SuggestedQnAModel(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
