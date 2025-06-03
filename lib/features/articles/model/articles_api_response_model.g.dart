// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticlesApiResponseModel _$ArticlesApiResponseModelFromJson(
  Map<String, dynamic> json,
) => _ArticlesApiResponseModel(
  category: json['category'] as String,
  timestamp: (json['timestamp'] as num).toInt(),
  read: (json['read'] as num).toInt(),
  clusters:
      (json['clusters'] as List<dynamic>)
          .map((e) => ClusterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ArticlesApiResponseModelToJson(
  _ArticlesApiResponseModel instance,
) => <String, dynamic>{
  'category': instance.category,
  'timestamp': instance.timestamp,
  'read': instance.read,
  'clusters': instance.clusters,
};
