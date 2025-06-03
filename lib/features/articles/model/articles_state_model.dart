// Package imports:

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kagi_demo/features/articles/model/articles_api_response_model.dart';

part 'articles_state_model.freezed.dart';

@freezed
abstract class ArticlesStateModel with _$ArticlesStateModel {
  const factory ArticlesStateModel({ArticlesApiResponseModel? data}) =
      _ArticlesStateModel;
}
