// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kagi_demo/core/constants/app_constants.dart';
import 'package:kagi_demo/core/notifications/type.dart';

part 'notification.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Notification with _$Notification {
  const factory Notification({
    @Default(Constants.defaultError) String message,
    @Default(NotificationType.error) NotificationType type,
  }) = _Notification;

  factory Notification.success(String message) {
    return Notification(message: message, type: NotificationType.success);
  }

  @override
  String toString() => message;
}
