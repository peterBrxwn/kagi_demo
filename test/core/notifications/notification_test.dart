// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:kagi_demo/core/constants/app_constants.dart';
import 'package:kagi_demo/core/notifications/notification.dart';
import 'package:kagi_demo/core/notifications/type.dart';

void main() {
  group('Notification', () {
    test('should create a default Notification instance', () {
      const notification = Notification();

      expect(notification.message, Constants.defaultError);
      expect(notification.type, NotificationType.error);
    });

    test('should create a success Notification instance using factory', () {
      const message = 'Operation successful';
      final notification = Notification.success(message);

      expect(notification.message, message);
      expect(notification.type, NotificationType.success);
    });
  });
}
