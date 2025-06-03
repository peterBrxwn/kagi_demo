// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'category_api_params_model.g.dart';

@JsonSerializable(
  createFactory: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
  includeIfNull: false,
)
class CategoryApiParamModel {
  const CategoryApiParamModel({required this.endpoint});
  final String endpoint;

  Map<String, dynamic> toJson() => _$CategoryApiParamModelToJson(this);
}
