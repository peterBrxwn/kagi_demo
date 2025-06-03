// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'articles_api_params_model.g.dart';

@JsonSerializable(
  createFactory: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
  includeIfNull: false,
)
class ArticlesApiParamModel {
  const ArticlesApiParamModel({required this.endpoint});
  final String endpoint;

  Map<String, dynamic> toJson() => _$ArticlesApiParamModelToJson(this);
}
