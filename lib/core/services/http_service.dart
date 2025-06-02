// Dart imports:
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'package:kagi_demo/core/config/app.dart';
import 'package:kagi_demo/core/exceptions/network.dart';

class HttpService {
  final String _baseUrl = AppConfig.baseUrl;
  final Map<String, String> _defaultHeaders;

  HttpService({Map<String, String>? defaultHeaders})
    : _defaultHeaders =
          defaultHeaders ??
          {'Content-Type': 'application/json; charset=UTF-F8'};

  Uri _buildUrl(String endpoint, {Map<String, dynamic>? queryParameters}) {
    final uri = Uri.parse('$_baseUrl/$endpoint');
    if (queryParameters != null && queryParameters.isNotEmpty) {
      return uri.replace(queryParameters: queryParameters);
    }
    return uri;
  }

  dynamic _handleResponse(http.Response response) {
    final dynamic decodedResponse =
        response.body.isNotEmpty ? jsonDecode(response.body) : null;

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return decodedResponse;
    } else if (response.statusCode == 401) {
      throw NetworkException(
        'Unauthorized. Please log in again.',
        statusCode: response.statusCode,
        responseBody: decodedResponse,
      );
    } else if (response.statusCode == 403) {
      throw NetworkException(
        'Forbidden. You do not have permission to access this resource.',
        statusCode: response.statusCode,
        responseBody: decodedResponse,
      );
    } else if (response.statusCode >= 400 && response.statusCode < 500) {
      throw NetworkException(
        'Client error: ${response.reasonPhrase ?? "Unknown client error"}',
        statusCode: response.statusCode,
        responseBody: decodedResponse,
      );
    } else if (response.statusCode >= 500 && response.statusCode < 600) {
      throw NetworkException(
        'Server error: ${response.reasonPhrase ?? "Unknown server error"}',
        statusCode: response.statusCode,
        responseBody: decodedResponse,
      );
    } else {
      throw NetworkException(
        'An unexpected error occurred: ${response.reasonPhrase}',
        statusCode: response.statusCode,
        responseBody: decodedResponse,
      );
    }
  }

  Future<dynamic> _request(
    Future<http.Response> Function() requestFunction,
  ) async {
    try {
      final response = await requestFunction();
      return _handleResponse(response);
    } on SocketException {
      throw NetworkException(
        'No internet connection. Please check your network.',
      );
    } on http.ClientException catch (e) {
      throw NetworkException('Network error: ${e.message}');
    } on FormatException {
      throw NetworkException('Error parsing response data.');
    } catch (e) {
      if (e is NetworkException) rethrow;
      throw NetworkException('An unknown error occurred: ${e.toString()}');
    }
  }

  Future<dynamic> get(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final url = _buildUrl(endpoint, queryParameters: queryParameters);
    final requestHeaders = {..._defaultHeaders, ...?headers};

    return _request(() => http.get(url, headers: requestHeaders));
  }

  Future<dynamic> post(
    String endpoint, {
    dynamic body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final url = _buildUrl(endpoint, queryParameters: queryParameters);
    final requestHeaders = {..._defaultHeaders, ...?headers};
    final encodedBody = body != null ? jsonEncode(body) : null;

    return _request(
      () => http.post(url, headers: requestHeaders, body: encodedBody),
    );
  }

  Future<dynamic> put(
    String endpoint, {
    dynamic body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final url = _buildUrl(endpoint, queryParameters: queryParameters);
    final requestHeaders = {..._defaultHeaders, ...?headers};
    final encodedBody = body != null ? jsonEncode(body) : null;

    return _request(
      () => http.put(url, headers: requestHeaders, body: encodedBody),
    );
  }

  Future<dynamic> delete(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final url = _buildUrl(endpoint, queryParameters: queryParameters);
    final requestHeaders = {..._defaultHeaders, ...?headers};

    return _request(() => http.delete(url, headers: requestHeaders));
  }

  Future<dynamic> patch(
    String endpoint, {
    dynamic body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final url = _buildUrl(endpoint, queryParameters: queryParameters);
    final requestHeaders = {..._defaultHeaders, ...?headers};
    final encodedBody = body != null ? jsonEncode(body) : null;

    return _request(
      () => http.patch(url, headers: requestHeaders, body: encodedBody),
    );
  }
}
