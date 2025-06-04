// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:kagi_demo/features/articles/model/article_model.dart';
import 'package:kagi_demo/features/articles/model/cluster_model.dart';
import 'package:kagi_demo/features/articles/view/article_detail.dart';

void main() {
  group('ArticleDetailPage Tests', () {
    late ClusterModel cluster;

    setUp(() {
      cluster = ClusterModel(
        category: 'Environment',
        location: 'Global',
        shortSummary: 'A brief overview of global warming and its effects.',
        quote: 'The Earth is what we all have in common.',
        quoteAuthor: 'Wendell Berry',
        didYouKnow:
            'Global warming has caused sea levels to rise by 8 inches since 1880.',
        geopoliticalContext:
            'Global warming has led to international agreements like the Paris Accord.',
        articles: [
          ArticleModel(
            title: 'Global Warming: A Call to Action',
            link: 'https://example.com/global-warming',
            domain: '',
            date: '',
          ),
        ],
      );
    });

    testWidgets(
      'ArticleDetailPage: displays article title, category, and location',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(home: ArticleDetailPage(cluster: cluster)),
        );

        expect(find.text('Global Warming: A Call to Action'), findsOneWidget);
        expect(find.text('Category: Environment'), findsOneWidget);
        expect(find.text('Location: Global'), findsOneWidget);
      },
    );

    testWidgets(
      'ArticleDetailPage: displays short summary, quote, and quote author',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(home: ArticleDetailPage(cluster: cluster)),
        );

        expect(
          find.text('A brief overview of global warming and its effects.'),
          findsOneWidget,
        );
        expect(
          find.text('The Earth is what we all have in common.'),
          findsOneWidget,
        );
        expect(find.text('- Wendell Berry'), findsOneWidget);
      },
    );

    testWidgets(
      'ArticleDetailPage: displays "Did You Know?" and geopolitical context',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(home: ArticleDetailPage(cluster: cluster)),
        );

        expect(find.text('Did You Know?'), findsOneWidget);
        expect(
          find.text(
            'Global warming has caused sea levels to rise by 8 inches since 1880.',
          ),
          findsOneWidget,
        );
        expect(find.text('Geopolitical Context:'), findsOneWidget);
        expect(
          find.text(
            'Global warming has led to international agreements like the Paris Accord.',
          ),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'ArticleDetailPage: shows a snackbar when "Read More" button is tapped',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(home: ArticleDetailPage(cluster: cluster)),
        );

        await tester.tap(find.text("Read More"));
        await tester.pump();

        expect(
          find.text('Opening https://example.com/global-warming'),
          findsOneWidget,
        );
      },
    );
  });
}
