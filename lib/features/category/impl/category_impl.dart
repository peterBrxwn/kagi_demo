// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:kagi_demo/core/errors/app_error.dart';
import 'package:kagi_demo/core/services/http_service.dart';
import 'package:kagi_demo/core/typedefs.dart';
import 'package:kagi_demo/features/category/model/category_api_params_model.dart';
import 'package:kagi_demo/features/category/model/category_api_response_model.dart';
import 'package:kagi_demo/features/category/repo/category_repo.dart';

class CategoryImpl implements CategoryRepo {
  final HttpService _httpService;
  CategoryImpl(this._httpService);

  @override
  Future<ErrorOrType<CategoryApiResponseModel>> list({
    required CategoryApiParamModel param,
  }) async {
    try {
      final response = await _httpService.get(param.endpoint);
      return Right(CategoryApiResponseModel.fromJson(response));
    } catch (error) {
      return Left(AppError(message: error.toString()));
    }
  }
}
