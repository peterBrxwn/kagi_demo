// Package imports:

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
// Project imports:
import 'package:kagi_demo/features/articles/model/cluster_model.dart';

part 'articles_api_response_model.freezed.dart';
part 'articles_api_response_model.g.dart';

@freezed
abstract class ArticlesApiResponseModel with _$ArticlesApiResponseModel {
  const ArticlesApiResponseModel._();
  const factory ArticlesApiResponseModel({
    required String category,
    required int timestamp,
    required int read,
    required List<ClusterModel> clusters,
  }) = _ArticlesApiResponseModel;

  factory ArticlesApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ArticlesApiResponseModelFromJson(json);
}
