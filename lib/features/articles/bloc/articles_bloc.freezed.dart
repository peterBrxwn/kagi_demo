// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticlesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticlesEvent()';
}


}

/// @nodoc
class $ArticlesEventCopyWith<$Res>  {
$ArticlesEventCopyWith(ArticlesEvent _, $Res Function(ArticlesEvent) __);
}


/// @nodoc


class _Fetch implements ArticlesEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticlesEvent.fetch()';
}


}




/// @nodoc
mixin _$ArticlesState {

 ArticlesStateModel get model;
/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesStateCopyWith<ArticlesState> get copyWith => _$ArticlesStateCopyWithImpl<ArticlesState>(this as ArticlesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesState&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ArticlesState(model: $model)';
}


}

/// @nodoc
abstract mixin class $ArticlesStateCopyWith<$Res>  {
  factory $ArticlesStateCopyWith(ArticlesState value, $Res Function(ArticlesState) _then) = _$ArticlesStateCopyWithImpl;
@useResult
$Res call({
 ArticlesStateModel model
});


$ArticlesStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$ArticlesStateCopyWithImpl<$Res>
    implements $ArticlesStateCopyWith<$Res> {
  _$ArticlesStateCopyWithImpl(this._self, this._then);

  final ArticlesState _self;
  final $Res Function(ArticlesState) _then;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ArticlesStateModel,
  ));
}
/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesStateModelCopyWith<$Res> get model {
  
  return $ArticlesStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}


/// @nodoc


class ArticlesStateError extends ArticlesState {
  const ArticlesStateError(final  ArticlesStateModel model): super._(model: model);
  



/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesStateErrorCopyWith<ArticlesStateError> get copyWith => _$ArticlesStateErrorCopyWithImpl<ArticlesStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesStateError&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ArticlesState.error(model: $model)';
}


}

/// @nodoc
abstract mixin class $ArticlesStateErrorCopyWith<$Res> implements $ArticlesStateCopyWith<$Res> {
  factory $ArticlesStateErrorCopyWith(ArticlesStateError value, $Res Function(ArticlesStateError) _then) = _$ArticlesStateErrorCopyWithImpl;
@override @useResult
$Res call({
 ArticlesStateModel model
});


@override $ArticlesStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$ArticlesStateErrorCopyWithImpl<$Res>
    implements $ArticlesStateErrorCopyWith<$Res> {
  _$ArticlesStateErrorCopyWithImpl(this._self, this._then);

  final ArticlesStateError _self;
  final $Res Function(ArticlesStateError) _then;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(ArticlesStateError(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ArticlesStateModel,
  ));
}

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesStateModelCopyWith<$Res> get model {
  
  return $ArticlesStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class ArticlesStateInitial extends ArticlesState {
  const ArticlesStateInitial(final  ArticlesStateModel model): super._(model: model);
  



/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesStateInitialCopyWith<ArticlesStateInitial> get copyWith => _$ArticlesStateInitialCopyWithImpl<ArticlesStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesStateInitial&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ArticlesState.initial(model: $model)';
}


}

/// @nodoc
abstract mixin class $ArticlesStateInitialCopyWith<$Res> implements $ArticlesStateCopyWith<$Res> {
  factory $ArticlesStateInitialCopyWith(ArticlesStateInitial value, $Res Function(ArticlesStateInitial) _then) = _$ArticlesStateInitialCopyWithImpl;
@override @useResult
$Res call({
 ArticlesStateModel model
});


@override $ArticlesStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$ArticlesStateInitialCopyWithImpl<$Res>
    implements $ArticlesStateInitialCopyWith<$Res> {
  _$ArticlesStateInitialCopyWithImpl(this._self, this._then);

  final ArticlesStateInitial _self;
  final $Res Function(ArticlesStateInitial) _then;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(ArticlesStateInitial(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ArticlesStateModel,
  ));
}

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesStateModelCopyWith<$Res> get model {
  
  return $ArticlesStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class ArticlesStateLoaded extends ArticlesState {
  const ArticlesStateLoaded(final  ArticlesStateModel model): super._(model: model);
  



/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesStateLoadedCopyWith<ArticlesStateLoaded> get copyWith => _$ArticlesStateLoadedCopyWithImpl<ArticlesStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesStateLoaded&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ArticlesState.loaded(model: $model)';
}


}

/// @nodoc
abstract mixin class $ArticlesStateLoadedCopyWith<$Res> implements $ArticlesStateCopyWith<$Res> {
  factory $ArticlesStateLoadedCopyWith(ArticlesStateLoaded value, $Res Function(ArticlesStateLoaded) _then) = _$ArticlesStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 ArticlesStateModel model
});


@override $ArticlesStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$ArticlesStateLoadedCopyWithImpl<$Res>
    implements $ArticlesStateLoadedCopyWith<$Res> {
  _$ArticlesStateLoadedCopyWithImpl(this._self, this._then);

  final ArticlesStateLoaded _self;
  final $Res Function(ArticlesStateLoaded) _then;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(ArticlesStateLoaded(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ArticlesStateModel,
  ));
}

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesStateModelCopyWith<$Res> get model {
  
  return $ArticlesStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class ArticlesStateLoading extends ArticlesState {
  const ArticlesStateLoading(final  ArticlesStateModel model): super._(model: model);
  



/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesStateLoadingCopyWith<ArticlesStateLoading> get copyWith => _$ArticlesStateLoadingCopyWithImpl<ArticlesStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesStateLoading&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ArticlesState.loading(model: $model)';
}


}

/// @nodoc
abstract mixin class $ArticlesStateLoadingCopyWith<$Res> implements $ArticlesStateCopyWith<$Res> {
  factory $ArticlesStateLoadingCopyWith(ArticlesStateLoading value, $Res Function(ArticlesStateLoading) _then) = _$ArticlesStateLoadingCopyWithImpl;
@override @useResult
$Res call({
 ArticlesStateModel model
});


@override $ArticlesStateModelCopyWith<$Res> get model;

}
/// @nodoc
class _$ArticlesStateLoadingCopyWithImpl<$Res>
    implements $ArticlesStateLoadingCopyWith<$Res> {
  _$ArticlesStateLoadingCopyWithImpl(this._self, this._then);

  final ArticlesStateLoading _self;
  final $Res Function(ArticlesStateLoading) _then;

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(ArticlesStateLoading(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ArticlesStateModel,
  ));
}

/// Create a copy of ArticlesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArticlesStateModelCopyWith<$Res> get model {
  
  return $ArticlesStateModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

// dart format on
