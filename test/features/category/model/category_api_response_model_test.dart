// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:kagi_demo/features/category/model/category_api_response_model.dart';
import 'package:kagi_demo/features/category/model/category_model.dart';

void main() {
  group('CategoryApiResponseModel', () {
    test('should correctly deserialize from JSON', () {
      final json = {
        "timestamp": 1748867070,
        "categories": [
          {"name": "Category 1", "file": "file1.json"},
          {"name": "Category 2", "file": "file2.json"},
        ],
      };

      final model = CategoryApiResponseModel.fromJson(json);

      expect(model.timestamp, 1748867070);
      expect(model.categories.length, 2);
      expect(model.categories[0].name, "Category 1");
      expect(model.categories[0].file, "file1.json");
      expect(model.categories[1].name, "Category 2");
      expect(model.categories[1].file, "file2.json");
    });

    test('should correctly serialize to JSON', () {
      final model = CategoryApiResponseModel(
        timestamp: 1748867070,
        categories: [
          CategoryModel(name: "Category 1", file: "file1.json"),
          CategoryModel(name: "Category 2", file: "file2.json"),
        ],
      );

      final json = model.toJson();

      expect(json['timestamp'], 1748867070);
      expect(json['categories'], isA<List>());
      expect(json['categories'][0]['name'], "Category 1");
      expect(json['categories'][0]['file'], "file1.json");
      expect(json['categories'][1]['name'], "Category 2");
      expect(json['categories'][1]['file'], "file2.json");
    });

    test('should correctly format timestamp', () {
      final model = CategoryApiResponseModel(
        timestamp: 1748867070,
        categories: [],
      );

      final formattedTimestamp = model.formattedTimestamp;

      expect(formattedTimestamp, isNotEmpty);
      expect(formattedTimestamp, equals('1:24 PM'));
    });

    test('should handle invalid timestamp gracefully', () {
      final model = CategoryApiResponseModel(
        timestamp: -1,
        categories: [],
      );

      final formattedTimestamp = model.formattedTimestamp;

      expect(formattedTimestamp, '...');
    });
  });
}
