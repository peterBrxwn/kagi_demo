// Project imports:
import 'package:kagi_demo/core/typedefs.dart';
import 'package:kagi_demo/features/articles/model/articles_api_params_model.dart';
import 'package:kagi_demo/features/articles/model/articles_api_response_model.dart';

abstract class ArticlesRepo {
  Future<ErrorOrType<ArticlesApiResponseModel>> list({
    required ArticlesApiParamModel param,
  });
}
