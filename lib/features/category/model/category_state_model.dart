// Package imports:

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kagi_demo/features/category/model/category_api_response_model.dart';

part 'category_state_model.freezed.dart';

@freezed
abstract class CategoryStateModel with _$CategoryStateModel {
  const factory CategoryStateModel({
    CategoryApiResponseModel? data,
  }) = _CategoryStateModel;
}
