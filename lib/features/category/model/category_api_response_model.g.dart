// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryApiResponseModel _$CategoryApiResponseModelFromJson(
  Map<String, dynamic> json,
) => _CategoryApiResponseModel(
  timestamp: (json['timestamp'] as num).toInt(),
  categories:
      (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CategoryApiResponseModelToJson(
  _CategoryApiResponseModel instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'categories': instance.categories,
};
