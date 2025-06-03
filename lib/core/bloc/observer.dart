// ignore_for_file: avoid_print

// Package imports:
import 'package:bloc_notification/bloc_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:kagi_demo/core/notifications/notification.dart';
import 'package:kagi_demo/core/utils/toast_util.dart';

class KagiBlocObserver extends BlocObserver with NotificationObserverMixin {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // log to analytics
    print(event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    // log to analytics
    print('Bloc Error: $error');
    print('Stack Trace: $stackTrace');
  }

  @override
  void onNotification(BlocBase bloc, BlocNotification notification) {
    if (notification.notification is Notification) {
      ToastUtil(notification.notification);
    }

    super.onNotification(bloc, notification);
  }
}
