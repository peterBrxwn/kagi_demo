// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) =>
    _ArticleModel(
      title: json['title'] as String,
      link: json['link'] as String,
      domain: json['domain'] as String,
      date: json['date'] as String,
      image: json['image'] as String?,
      imageCaption: json['image_caption'] as String?,
    );

Map<String, dynamic> _$ArticleModelToJson(_ArticleModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'domain': instance.domain,
      'date': instance.date,
      'image': instance.image,
      'image_caption': instance.imageCaption,
    };
