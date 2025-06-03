// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perspective_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PerspectiveModel _$PerspectiveModelFromJson(Map<String, dynamic> json) =>
    _PerspectiveModel(
      text: json['text'] as String,
      sources:
          (json['sources'] as List<dynamic>?)
              ?.map((e) => SourceModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PerspectiveModelToJson(_PerspectiveModel instance) =>
    <String, dynamic>{'text': instance.text, 'sources': instance.sources};
