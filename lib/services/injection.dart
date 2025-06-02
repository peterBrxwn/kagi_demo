// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:kagi_demo/services/injection.config.dart';

final locator = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async => locator.init();
