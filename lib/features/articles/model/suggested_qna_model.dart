// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggested_qna_model.freezed.dart';
part 'suggested_qna_model.g.dart';

@freezed
sealed class SuggestedQnAModel with _$SuggestedQnAModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SuggestedQnAModel({
    required String question,
    required String answer,
  }) = _SuggestedQnAModel;

  factory SuggestedQnAModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestedQnAModelFromJson(json);
}
