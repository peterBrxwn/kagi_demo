// Package imports:

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:kagi_demo/features/category/model/category_model.dart';

part 'category_api_response_model.freezed.dart';
part 'category_api_response_model.g.dart';

@freezed
abstract class CategoryApiResponseModel with _$CategoryApiResponseModel {
  const CategoryApiResponseModel._();
  const factory CategoryApiResponseModel({
    required int timestamp,
    required List<CategoryModel> categories,
  }) = _CategoryApiResponseModel;

  factory CategoryApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryApiResponseModelFromJson(json);

  String get formattedTimestamp {
    // Convert the timestamp to a human-readable date string
    try {
      final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      return DateFormat('HH:mm:ss a').format(date);
    } catch (e) {
      return '...';
    }
  }
}
