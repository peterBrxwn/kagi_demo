// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/features/articles/bloc/articles_bloc.dart';
import 'package:kagi_demo/features/articles/model/articles_api_response_model.dart';
import 'package:kagi_demo/features/articles/model/articles_state_model.dart';
import 'package:kagi_demo/features/articles/model/cluster_model.dart';
import 'package:kagi_demo/features/articles/view/article_detail.dart';
import 'package:kagi_demo/features/articles/view/articles_list.dart';
import 'package:kagi_demo/shared/widgets/error_display.dart';

class MockArticlesBloc extends Mock implements ArticlesBloc {}

class MockNetworkImage extends Fake implements ImageProvider {}

void main() {
  late MockArticlesBloc mockArticlesBloc;

  setUpAll(() {
    registerFallbackValue(MockNetworkImage());
  });

  setUp(() {
    mockArticlesBloc = MockArticlesBloc();
    when(
      () => mockArticlesBloc.stream,
    ).thenAnswer((_) => const Stream<ArticlesState>.empty());
  });

  Widget createTestWidget(String category) {
    return MaterialApp(
      home: BlocProvider<ArticlesBloc>.value(
        value: mockArticlesBloc,
        child: ArticlesListPage(category: category),
      ),
    );
  }

  group('ArticlesListPage Widget Tests', () {
    const category = 'Technology';

    testWidgets(
      'should display loading indicator when state is ArticlesStateLoading',
      (tester) async {
        when(
          () => mockArticlesBloc.state,
        ).thenReturn(ArticlesState.loading(ArticlesStateModel()));

        await tester.pumpWidget(createTestWidget(category));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );

    testWidgets('should display articles when state is ArticlesStateLoaded', (
      tester,
    ) async {
      const articles = [
        {
          "title": "Sample Article 1",
          "link": "https://example.com/article1",
          "domain": "example.com",
          "date": "2025-06-03T12:34:56Z",
          "image": "https://example.com/image1.jpg",
        },
        {
          "title": "Sample Article 2",
          "link": "https://example.com/article2",
          "domain": "example.com",
          "date": "2025-06-03T14:34:56Z",
          "image": null,
        },
      ];
      const cluster = {
        "short_summary": "This is a short summary.",
        "articles": articles,
      };
      final mockResponse = ArticlesApiResponseModel(
        category: category,
        timestamp: 1748867070,
        read: 311,
        clusters: [ClusterModel.fromJson(cluster)],
      );
      when(() => mockArticlesBloc.state).thenReturn(
        ArticlesState.loaded(ArticlesStateModel(data: mockResponse)),
      );

      await tester.pumpWidget(createTestWidget(category));

      expect(find.byType(Card), findsNWidgets(articles.length));
      expect(find.text('Sample Article 1'), findsOneWidget);
      expect(find.text('Sample Article 2'), findsOneWidget);
    });

    testWidgets('should navigate to ArticleDetailPage on article tap', (
      tester,
    ) async {
      const articles = [
        {
          "title": "Sample Article 1",
          "link": "https://example.com/article1",
          "domain": "example.com",
          "date": "2025-06-03T12:34:56Z",
          "image": null,
        },
      ];
      const cluster = {
        "short_summary": "This is a short summary.",
        "articles": articles,
      };
      final mockResponse = ArticlesApiResponseModel(
        category: category,
        timestamp: 1748867070,
        read: 311,
        clusters: [ClusterModel.fromJson(cluster)],
      );
      when(() => mockArticlesBloc.state).thenReturn(
        ArticlesState.loaded(ArticlesStateModel(data: mockResponse)),
      );

      await tester.pumpWidget(createTestWidget(category));

      await tester.tap(find.text('Sample Article 1'));
      await tester.pumpAndSettle();

      expect(find.byType(ArticleDetailPage), findsOneWidget);
    });

    testWidgets(
      'should display error message when state is ArticlesStateError',
      (tester) async {
        when(
          () => mockArticlesBloc.state,
        ).thenReturn(ArticlesState.error(ArticlesStateModel()));

        await tester.pumpWidget(createTestWidget(category));

        expect(find.byType(ErrorDisplay), findsOneWidget);
        expect(find.text('Failed to load news.'), findsOneWidget);
      },
    );

    testWidgets('should retry fetching articles when retry button is pressed', (
      tester,
    ) async {
      when(
        () => mockArticlesBloc.state,
      ).thenReturn(ArticlesState.error(ArticlesStateModel()));
      when(
        () => mockArticlesBloc.add(const ArticlesEvent.fetch()),
      ).thenReturn(null);

      await tester.pumpWidget(createTestWidget(category));

      await tester.tap(find.text('Try Again'));
      await tester.pump();

      verify(() => mockArticlesBloc.add(const ArticlesEvent.fetch())).called(1);
    });
  });
}
