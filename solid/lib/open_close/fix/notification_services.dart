import 'package:solid/open_close/fix/notification.dart';

class NotificationServices {
  final Notifications notifications;
  NotificationServices(this.notifications);

  void showNotification(String message) {
    notifications.show(message);
  }
}
