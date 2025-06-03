// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kagi_demo/features/articles/model/source_model.dart';

part 'perspective_model.freezed.dart';
part 'perspective_model.g.dart';

@freezed
sealed class PerspectiveModel with _$PerspectiveModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PerspectiveModel({
    required String text,
    List<SourceModel>? sources,
  }) = _PerspectiveModel;

  factory PerspectiveModel.fromJson(Map<String, dynamic> json) =>
      _$PerspectiveModelFromJson(json);
}
