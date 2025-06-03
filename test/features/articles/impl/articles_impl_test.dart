// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/core/exceptions/network.dart';
import 'package:kagi_demo/core/services/http_service.dart';
import 'package:kagi_demo/features/articles/impl/articles_impl.dart';
import 'package:kagi_demo/features/articles/model/articles_api_params_model.dart';

class MockHttpService extends Mock implements HttpService {}

void main() {
  late ArticlesImpl articlesImpl;
  late MockHttpService mockHttpService;

  setUp(() {
    mockHttpService = MockHttpService();
    articlesImpl = ArticlesImpl(mockHttpService);
  });

  group('ArticlesImpl', () {
    const endpoint = 'articles.json';
    const param = ArticlesApiParamModel(endpoint: endpoint);

    test(
      'ArticlesImpl: should return ArticlesApiResponseModel on successful API call',
      () async {
        const responseJson = {
          "category": "community",
          "timestamp": 1748867070,
          "read": 311,
          "clusters": [],
        };
        when(
          () => mockHttpService.get(endpoint),
        ).thenAnswer((_) async => responseJson);

        final result = await articlesImpl.list(param: param);

        expect(result.isRight(), true);
        expect(result.fold((l) => null, (r) => r.category), "community");
        verify(() => mockHttpService.get(endpoint)).called(1);
      },
    );

    test('ArticlesImpl: should return AppError on API failure', () async {
      final exception = NetworkException('Network error', statusCode: 401);
      when(
        () => mockHttpService.get(endpoint),
      ).thenThrow(exception);

      final result = await articlesImpl.list(param: param);

      expect(result.isLeft(), true);
      expect(result.fold((l) => l.message, (r) => null), exception.toString());
      verify(() => mockHttpService.get(endpoint)).called(1);
    });
  });
}
