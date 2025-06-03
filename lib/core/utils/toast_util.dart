// Flutter imports:
import 'package:flutter/material.dart' hide Notification;

// Package imports:
import 'package:fluttertoast/fluttertoast.dart';

// Project imports:
import 'package:kagi_demo/core/constants/app_constants.dart';
import 'package:kagi_demo/core/notifications/notification.dart';
import 'package:kagi_demo/core/notifications/type.dart';

class ToastUtil {
  static void error([String? msg]) {
    msg = msg?.trim() ?? '';
    if (msg.isEmpty || msg.length > 150) msg = Constants.defaultError;

    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 8,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }

  ToastUtil(Notification notif) {
    switch (notif.type) {
      case NotificationType.error:
        error(notif.message);
        break;
      case NotificationType.success:
        success(notif.message);
        break;
    }
  }

  static void success(String msg) {
    msg = msg.trim();
    if (msg.isEmpty || msg.length > 150) msg = 'Successful.';

    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 8,
      backgroundColor: Colors.deepPurple,
      textColor: Colors.white,
    );
  }
}
