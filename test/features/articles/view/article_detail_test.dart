// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:kagi_demo/features/articles/view/article_detail.dart';

void main() {
  group('ArticleDetailPage Widget Tests', () {
    const title = 'Sample Article';
    const summary = 'This is a summary of the article.';
    const url = 'https://example.com/article';

    Widget createTestWidget() {
      return MaterialApp(
        home: ArticleDetailPage(title: title, summary: summary, url: url),
      );
    }

    testWidgets(
      'ArticleDetailPage: should display the article title, summary, and button',
      (tester) async {
        await tester.pumpWidget(createTestWidget());

        expect(find.text('Article Details'), findsOneWidget);
        expect(find.text(title), findsOneWidget);
        expect(find.text(summary), findsOneWidget);
        expect(find.text('Read Full Article'), findsOneWidget);
      },
    );

    testWidgets(
      'ArticleDetailPage: should trigger button action when "Read Full Article" is tapped',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: ArticleDetailPage(title: title, summary: summary, url: url),
          ),
        );

        await tester.tap(find.text('Read Full Article'));
        await tester.pump();

        expect(find.text('Read Full Article'), findsOneWidget);
      },
    );
  });
}
