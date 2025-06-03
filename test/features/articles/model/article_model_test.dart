// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:kagi_demo/features/articles/model/article_model.dart';

void main() {
  group('ArticleModel formattedDate Tests', () {
    test('ArticleModel: should return formatted date for valid ISO string', () {
      final article = ArticleModel(
        title: 'Sample Article',
        link: 'https://example.com',
        domain: 'example.com',
        date: '2025-06-03T12:34:56Z',
      );

      final result = article.formattedDate;

      expect(result, '2025-06-03 13:34:56');
    });

    test('ArticleModel: should return "..." for invalid date string', () {
      const invalidDate = 'invalid-date';
      final article = ArticleModel(
        title: 'Sample Article',
        link: 'https://example.com',
        domain: 'example.com',
        date: invalidDate,
      );

      final result = article.formattedDate;

      expect(result, '...');
    });

    test('ArticleModel: should return "..." for empty date string', () {
      const emptyDate = '';
      final article = ArticleModel(
        title: 'Sample Article',
        link: 'https://example.com',
        domain: 'example.com',
        date: emptyDate,
      );

      final result = article.formattedDate;

      expect(result, '...');
    });

    test('ArticleModel: should return "..." for null date (if nullable)', () {
      final article = ArticleModel(
        title: 'Sample Article',
        link: 'https://example.com',
        domain: 'example.com',
        date: '',
      );

      final result = article.formattedDate;

      expect(result, '...');
    });
  });
}
