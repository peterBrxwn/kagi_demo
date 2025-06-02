class NetworkException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic responseBody;

  NetworkException(this.message, {this.statusCode, this.responseBody});

  @override
  String toString() {
    return 'NetworkException: $message (Status Code: $statusCode)';
  }
}
