// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/core/services/http_service.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late HttpService httpService;
  late MockHttpClient mockHttpClient;

  const baseUrl = 'https://jsonplaceholder.typicode.com';
  const endpoint = 'todos/1';
  const url = '$baseUrl/$endpoint';

  setUpAll(() {
    registerFallbackValue(
      Uri.parse('https://jsonplaceholder.typicode.com/fallback'),
    );
  });

  setUp(() {
    mockHttpClient = MockHttpClient();
    httpService = HttpService(
      baseUrl,
      defaultHeaders: {'Authorization': 'Bearer token'},
      client: mockHttpClient,
    );
  });

  group('HttpService', () {
    group('GET', () {
      test(
        'HttpService: should return data on successful GET request',
        () async {
          when(
            () => mockHttpClient.get(any(), headers: any(named: 'headers')),
          ).thenAnswer((_) async => http.Response('{"key": "value"}', 200));

          final result = await httpService.get(endpoint);

          expect(result, {"key": "value"});
          verify(
            () => mockHttpClient.get(
              Uri.parse(url),
              headers: any(named: 'headers'),
            ),
          ).called(1);
        },
      );
    });

    group('POST', () {
      test(
        'HttpService: should return data on successful POST request',
        () async {
          when(
            () => mockHttpClient.post(
              any(),
              headers: any(named: 'headers'),
              body: any(named: 'body'),
            ),
          ).thenAnswer((_) async => http.Response('{"key": "value"}', 201));

          final result = await httpService.post(
            endpoint,
            body: {"key": "value"},
          );

          expect(result, {"key": "value"});
          verify(
            () => mockHttpClient.post(
              Uri.parse(url),
              headers: any(named: 'headers'),
              body: '{"key":"value"}',
            ),
          ).called(1);
        },
      );
    });

    group('PATCH', () {
      test(
        'HttpService: should return data on successful PATCH request',
        () async {
          when(
            () => mockHttpClient.patch(
              any(),
              headers: any(named: 'headers'),
              body: any(named: 'body'),
            ),
          ).thenAnswer((_) async => http.Response('{"key": "value"}', 200));

          final result = await httpService.patch(
            endpoint,
            body: {"key": "value"},
          );

          expect(result, {"key": "value"});
          verify(
            () => mockHttpClient.patch(
              Uri.parse(url),
              headers: any(named: 'headers'),
              body: '{"key":"value"}',
            ),
          ).called(1);
        },
      );
    });

    group('DELETE', () {
      test(
        'HttpService: should return data on successful DELETE request',
        () async {
          when(
            () => mockHttpClient.delete(any(), headers: any(named: 'headers')),
          ).thenAnswer((_) async => http.Response('{"key": "value"}', 200));

          final result = await httpService.delete(endpoint);

          expect(result, {"key": "value"});
          verify(
            () => mockHttpClient.delete(
              Uri.parse(url),
              headers: any(named: 'headers'),
            ),
          ).called(1);
        },
      );
    });

    group('PUT', () {
      test(
        'HttpService: should return data on successful PUT request',
        () async {
          when(
            () => mockHttpClient.put(
              any(),
              headers: any(named: 'headers'),
              body: any(named: 'body'),
            ),
          ).thenAnswer((_) async => http.Response('{"key": "value"}', 200));

          final result = await httpService.put(
            endpoint,
            body: {"key": "value"},
          );

          expect(result, {"key": "value"});
          verify(
            () => mockHttpClient.put(
              Uri.parse(url),
              headers: any(named: 'headers'),
              body: '{"key":"value"}',
            ),
          ).called(1);
        },
      );
    });
  });
}
