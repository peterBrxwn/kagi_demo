// Project imports:
import 'package:kagi_demo/core/typedefs.dart';
import 'package:kagi_demo/features/category/model/category_api_params_model.dart';
import 'package:kagi_demo/features/category/model/category_api_response_model.dart';

abstract class CategoryRepo {
  Future<ErrorOrType<CategoryApiResponseModel>> list({
    required CategoryApiParamModel param,
  });
}
