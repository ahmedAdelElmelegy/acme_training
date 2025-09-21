import 'package:flutter/material.dart';
import 'package:solid/open_close/fix/notification.dart';

class SucessNotification implements Notifications {
  @override
  void show(String message) {
    print("✅ نجاح: $message");
  }
}

class ErrorNotification implements Notifications {
  @override
  void show(String message) {
    print("❌ خطأ: $message");
  }
}

class WarningNotification implements Notifications {
  @override
  void show(String message) {
    print("⚠️ تحذير: $message");
  }
}
