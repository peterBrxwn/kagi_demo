// Package imports:
import 'package:dartz/dartz.dart';
// Project imports:
import 'package:kagi_demo/core/errors/app_error.dart';
import 'package:kagi_demo/core/services/http_service.dart';
import 'package:kagi_demo/core/typedefs.dart';
import 'package:kagi_demo/features/articles/model/articles_api_params_model.dart';
import 'package:kagi_demo/features/articles/model/articles_api_response_model.dart';
import 'package:kagi_demo/features/articles/repo/articles_repo.dart';

class ArticlesImpl implements ArticlesRepo {
  final HttpService _httpService;
  ArticlesImpl(this._httpService);

  @override
  Future<ErrorOrType<ArticlesApiResponseModel>> list({
    required ArticlesApiParamModel param,
  }) async {
    try {
      final response = await _httpService.get(param.endpoint);
      return Right(ArticlesApiResponseModel.fromJson(response));
    } catch (error) {
      return Left(AppError(message: error.toString()));
    }
  }
}
