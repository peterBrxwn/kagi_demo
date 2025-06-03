// Dart imports:
// ignore_for_file: avoid_print

// Dart imports:
import 'dart:async';
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:kagi_demo/core/bloc/observer.dart';
import 'package:kagi_demo/core/utils/toast_util.dart';
import 'package:kagi_demo/services/injection.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await configureDependencies();
  Bloc.observer = KagiBlocObserver(
    handleError: (bloc, error, stackTrace) {
      // Handle error logging here, e.g., send to analytics or crash reporting service
      print('Bloc Error: $error');
      print('Stack Trace: $stackTrace');
    },
    handleEvent: (bloc, event) {
      // Handle event logging here, e.g., send to analytics
      print('Bloc Event: $event');
    },
    handleNotification: (notification) => ToastUtil(notification),
  );

  // Set up error handling
  // log to analytics or crash reporting service
  FlutterError.onError = (FlutterErrorDetails details) {
    print('FlutterError.onError called');
    print('Flutter Error: ${details.exception}');
    print('Stack Trace: ${details.stack}');
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    print('PlatformDispatcher.instance.onError called');
    print('Platform Error: $error');
    print('Stack Trace: $stack');
    return true;
  };
  runApp(await builder());
}
