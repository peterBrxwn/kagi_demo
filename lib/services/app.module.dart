// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:kagi_demo/core/config/app.dart';
import 'package:kagi_demo/core/services/http_service.dart';

@module
abstract class AppModule {
  @injectable
  HttpService get httpService => HttpService(AppConfig.baseUrl);
}
