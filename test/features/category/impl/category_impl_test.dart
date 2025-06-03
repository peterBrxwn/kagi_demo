// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/core/exceptions/network.dart';
import 'package:kagi_demo/core/services/http_service.dart';
import 'package:kagi_demo/features/category/impl/category_impl.dart';
import 'package:kagi_demo/features/category/model/category_api_params_model.dart';

class MockHttpService extends Mock implements HttpService {}

void main() {
  late CategoryImpl categoryImpl;
  late MockHttpService mockHttpService;

  setUp(() {
    mockHttpService = MockHttpService();
    categoryImpl = CategoryImpl(mockHttpService);
  });

  group('CategoryImpl', () {
    const endpoint = 'category.json';
    const param = CategoryApiParamModel(endpoint: endpoint);

    test(
      'should return CategoryApiResponseModel on successful API call',
      () async {
        const responseJson = {
          "timestamp": 1748867070,
          "categories": [
            {"file": "tech", "name": "Technology"},
            {"file": "health", "name": "Health"},
          ],
        };
        when(
          () => mockHttpService.get(endpoint),
        ).thenAnswer((_) async => responseJson);

        final result = await categoryImpl.list(param: param);

        expect(result.isRight(), true);
        expect(result.fold((l) => null, (r) => r.categories.length), 2);
        expect(
          result.fold((l) => null, (r) => r.categories[0].name),
          "Technology",
        );
        verify(() => mockHttpService.get(endpoint)).called(1);
      },
    );

    test('should return AppError on API failure', () async {
      final exception = NetworkException('Network error', statusCode: 401);
      when(() => mockHttpService.get(endpoint)).thenThrow(exception);

      final result = await categoryImpl.list(param: param);

      expect(result.isLeft(), true);
      expect(result.fold((l) => l.message, (r) => null), exception.toString());
      verify(() => mockHttpService.get(endpoint)).called(1);
    });
  });
}
