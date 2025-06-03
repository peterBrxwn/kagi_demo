// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
sealed class ArticleModel with _$ArticleModel {
  const ArticleModel._();
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArticleModel({
    required String title,
    required String link,
    required String domain,
    required String date,
    String? image,
    String? imageCaption,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  String get formattedDate {
    // Convert the datetime to a human-readable date string
    if (date.isEmpty) return '...';
    try {
      final parsedDate = DateTime.tryParse(date);
      if (parsedDate != null) {
        return parsedDate.toLocal().toString().substring(0, 19);
      } else {
        return '...';
      }
    } catch (e) {
      return '...';
    }
  }
}
