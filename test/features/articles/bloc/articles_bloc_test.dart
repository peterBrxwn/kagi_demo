// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/core/errors/app_error.dart';
import 'package:kagi_demo/features/articles/bloc/articles_bloc.dart';
import 'package:kagi_demo/features/articles/model/article_model.dart';
import 'package:kagi_demo/features/articles/model/articles_api_params_model.dart';
import 'package:kagi_demo/features/articles/model/articles_api_response_model.dart';
import 'package:kagi_demo/features/articles/model/articles_state_model.dart';
import 'package:kagi_demo/features/articles/model/cluster_model.dart';
import 'package:kagi_demo/features/articles/repo/articles_repo.dart';

class FakeArticlesApiParamModel extends Fake implements ArticlesApiParamModel {}

class MockArticlesRepo extends Mock implements ArticlesRepo {}

void main() {
  late ArticlesBloc articlesBloc;
  late MockArticlesRepo mockArticlesRepo;

  const category = 'World';

  setUpAll(() {
    registerFallbackValue(FakeArticlesApiParamModel());
  });

  setUp(() {
    mockArticlesRepo = MockArticlesRepo();
    articlesBloc = ArticlesBloc(category: category, newsRepo: mockArticlesRepo);
  });

  tearDown(() {
    articlesBloc.close();
  });

  group('ArticlesBloc', () {
    test('initial state is ArticlesState.initial', () {
      expect(
        articlesBloc.state,
        const ArticlesState.initial(ArticlesStateModel()),
      );
    });

    blocTest<ArticlesBloc, ArticlesState>(
      'emits [loading, loaded] when articles are fetched successfully',
      build: () {
        when(
          () => mockArticlesRepo.list(param: any(named: 'param')),
        ).thenAnswer(
          (_) async => Right(
            ArticlesApiResponseModel(
              category: 'community',
              timestamp: 1748867070,
              read: 311,
              clusters: [
                ClusterModel(
                  clusterNumber: 1,
                  uniqueDomains: 16,
                  numberOfTitles: 17,
                  category: 'Community',
                  title:
                      'Heartwarming acts of kindness spread across American communities',
                  shortSummary:
                      'Communities across America are demonstrating remarkable generosity.',
                  articles: [
                    ArticleModel(
                      title: 'Article 1',
                      link: 'https://example.com/article1',
                      domain: 'example.com',
                      date: '2025-06-02T12:15:49.978390+00:00',
                    ),
                    ArticleModel(
                      title: 'Article 2',
                      link: 'https://example.com/article2',
                      domain: 'example.com',
                      date: '2025-06-02T12:16:49.696671+00:00',
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
        return articlesBloc;
      },
      act: (bloc) => bloc.add(const ArticlesEvent.fetch()),
      expect:
          () => [
            const ArticlesState.loading(ArticlesStateModel()),
            ArticlesState.loaded(
              ArticlesStateModel(
                data: ArticlesApiResponseModel(
                  category: 'community',
                  timestamp: 1748867070,
                  read: 311,
                  clusters: [
                    ClusterModel(
                      clusterNumber: 1,
                      uniqueDomains: 16,
                      numberOfTitles: 17,
                      category: 'Community',
                      title:
                          'Heartwarming acts of kindness spread across American communities',
                      shortSummary:
                          'Communities across America are demonstrating remarkable generosity.',
                      articles: [
                        ArticleModel(
                          title: 'Article 1',
                          link: 'https://example.com/article1',
                          domain: 'example.com',
                          date: '2025-06-02T12:15:49.978390+00:00',
                        ),
                        ArticleModel(
                          title: 'Article 2',
                          link: 'https://example.com/article2',
                          domain: 'example.com',
                          date: '2025-06-02T12:16:49.696671+00:00',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
      verify: (_) {
        verify(
          () => mockArticlesRepo.list(param: any(named: 'param')),
        ).called(1);
      },
    );

    blocTest<ArticlesBloc, ArticlesState>(
      'emits [loading, error] when fetching articles fails',
      build: () {
        when(
          () => mockArticlesRepo.list(param: any(named: 'param')),
        ).thenAnswer(
          (_) async => Left(AppError(message: 'Error fetching articles')),
        );
        return articlesBloc;
      },
      act: (bloc) => bloc.add(const ArticlesEvent.fetch()),
      expect:
          () => [
            const ArticlesState.loading(ArticlesStateModel()),
            const ArticlesState.error(ArticlesStateModel()),
          ],
      verify: (_) {
        verify(
          () => mockArticlesRepo.list(param: any(named: 'param')),
        ).called(1);
      },
    );

    blocTest<ArticlesBloc, ArticlesState>(
      'emits [loading, error] when an exception is thrown',
      build: () {
        when(
          () => mockArticlesRepo.list(param: any(named: 'param')),
        ).thenThrow(Exception('Unexpected error'));
        return articlesBloc;
      },
      act: (bloc) => bloc.add(const ArticlesEvent.fetch()),
      expect:
          () => [
            const ArticlesState.loading(ArticlesStateModel()),
            const ArticlesState.error(ArticlesStateModel()),
          ],
      verify: (_) {
        verify(
          () => mockArticlesRepo.list(param: any(named: 'param')),
        ).called(1);
      },
    );
  });
}
