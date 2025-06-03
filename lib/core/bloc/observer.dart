// ignore_for_file: avoid_print

// Package imports:
import 'package:bloc_notification/bloc_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:kagi_demo/core/notifications/notification.dart';

class KagiBlocObserver extends BlocObserver with NotificationObserverMixin {
  final Function(BlocBase, Object, StackTrace) handleError;
  final Function(Bloc, Object?) handleEvent;
  final Function(Notification) handleNotification;

  KagiBlocObserver({
    required this.handleError,
    required this.handleEvent,
    required this.handleNotification,
  });

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    handleEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    handleError(bloc, error, stackTrace);
  }

  @override
  void onNotification(BlocBase bloc, BlocNotification notification) {
    if (notification.notification is Notification) {
      handleNotification(notification.notification);
    }

    super.onNotification(bloc, notification);
  }
}
