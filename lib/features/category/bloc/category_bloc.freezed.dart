// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent()';
}


}

/// @nodoc
class $CategoryEventCopyWith<$Res>  {
$CategoryEventCopyWith(CategoryEvent _, $Res Function(CategoryEvent) __);
}


/// @nodoc


class _Fetch implements CategoryEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.fetch()';
}


}




/// @nodoc
mixin _$CategoryState {

 CategoryStateModel get model;
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateCopyWith<CategoryState> get copyWith => _$CategoryStateCopyWithImpl<CategoryState>(this as CategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryState&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CategoryState(model: $model)';
}


}

/// @nodoc
abstract mixin class $CategoryStateCopyWith<$Res>  {
  factory $CategoryStateCopyWith(CategoryState value, $Res Function(CategoryState) _then) = _$CategoryStateCopyWithImpl;
@useResult
$Res call({
 CategoryStateModel model
});


$CategoryStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._self, this._then);

  final CategoryState _self;
  final $Res Function(CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as CategoryStateModel,
  ));
}
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryStateModelCopyWith<$Res> get model {
  
  return $CategoryStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}


/// @nodoc


class CategoryStateError extends CategoryState {
  const CategoryStateError(final  CategoryStateModel model): super._(model: model);
  



/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateErrorCopyWith<CategoryStateError> get copyWith => _$CategoryStateErrorCopyWithImpl<CategoryStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryStateError&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CategoryState.error(model: $model)';
}


}

/// @nodoc
abstract mixin class $CategoryStateErrorCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory $CategoryStateErrorCopyWith(CategoryStateError value, $Res Function(CategoryStateError) _then) = _$CategoryStateErrorCopyWithImpl;
@override @useResult
$Res call({
 CategoryStateModel model
});


@override $CategoryStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$CategoryStateErrorCopyWithImpl<$Res>
    implements $CategoryStateErrorCopyWith<$Res> {
  _$CategoryStateErrorCopyWithImpl(this._self, this._then);

  final CategoryStateError _self;
  final $Res Function(CategoryStateError) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(CategoryStateError(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as CategoryStateModel,
  ));
}

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryStateModelCopyWith<$Res> get model {
  
  return $CategoryStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class CategoryStateInitial extends CategoryState {
  const CategoryStateInitial(final  CategoryStateModel model): super._(model: model);
  



/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateInitialCopyWith<CategoryStateInitial> get copyWith => _$CategoryStateInitialCopyWithImpl<CategoryStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryStateInitial&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CategoryState.initial(model: $model)';
}


}

/// @nodoc
abstract mixin class $CategoryStateInitialCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory $CategoryStateInitialCopyWith(CategoryStateInitial value, $Res Function(CategoryStateInitial) _then) = _$CategoryStateInitialCopyWithImpl;
@override @useResult
$Res call({
 CategoryStateModel model
});


@override $CategoryStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$CategoryStateInitialCopyWithImpl<$Res>
    implements $CategoryStateInitialCopyWith<$Res> {
  _$CategoryStateInitialCopyWithImpl(this._self, this._then);

  final CategoryStateInitial _self;
  final $Res Function(CategoryStateInitial) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(CategoryStateInitial(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as CategoryStateModel,
  ));
}

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryStateModelCopyWith<$Res> get model {
  
  return $CategoryStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class CategoryStateLoaded extends CategoryState {
  const CategoryStateLoaded(final  CategoryStateModel model): super._(model: model);
  



/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateLoadedCopyWith<CategoryStateLoaded> get copyWith => _$CategoryStateLoadedCopyWithImpl<CategoryStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryStateLoaded&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CategoryState.loaded(model: $model)';
}


}

/// @nodoc
abstract mixin class $CategoryStateLoadedCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory $CategoryStateLoadedCopyWith(CategoryStateLoaded value, $Res Function(CategoryStateLoaded) _then) = _$CategoryStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 CategoryStateModel model
});


@override $CategoryStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$CategoryStateLoadedCopyWithImpl<$Res>
    implements $CategoryStateLoadedCopyWith<$Res> {
  _$CategoryStateLoadedCopyWithImpl(this._self, this._then);

  final CategoryStateLoaded _self;
  final $Res Function(CategoryStateLoaded) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(CategoryStateLoaded(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as CategoryStateModel,
  ));
}

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryStateModelCopyWith<$Res> get model {
  
  return $CategoryStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class CategoryStateLoading extends CategoryState {
  const CategoryStateLoading(final  CategoryStateModel model): super._(model: model);
  



/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateLoadingCopyWith<CategoryStateLoading> get copyWith => _$CategoryStateLoadingCopyWithImpl<CategoryStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryStateLoading&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CategoryState.loading(model: $model)';
}


}

/// @nodoc
abstract mixin class $CategoryStateLoadingCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory $CategoryStateLoadingCopyWith(CategoryStateLoading value, $Res Function(CategoryStateLoading) _then) = _$CategoryStateLoadingCopyWithImpl;
@override @useResult
$Res call({
 CategoryStateModel model
});


@override $CategoryStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$CategoryStateLoadingCopyWithImpl<$Res>
    implements $CategoryStateLoadingCopyWith<$Res> {
  _$CategoryStateLoadingCopyWithImpl(this._self, this._then);

  final CategoryStateLoading _self;
  final $Res Function(CategoryStateLoading) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(CategoryStateLoading(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as CategoryStateModel,
  ));
}

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryStateModelCopyWith<$Res> get model {
  
  return $CategoryStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

// dart format on
