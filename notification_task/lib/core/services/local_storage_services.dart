import 'package:notification_task/core/utils/app_constants.dart';
import 'package:universal_html/html.dart' as html;

void saveRouteIndex(int index) {
  html.window.sessionStorage[AppConstants.routeIndexKey] = index.toString();
}

int? getRouteIndex() {
  final value = html.window.sessionStorage[AppConstants.routeIndexKey];
  return value != null ? int.parse(value) : null;
}

Future<void> saveLastRoute(String route) async {
  html.window.sessionStorage[AppConstants.lastRouteKey] = route;
}

Future<String?> getLastRoute() async {
  final value = html.window.sessionStorage[AppConstants.lastRouteKey];
  return value;
}

void saveNotificationWebViewOpen(bool value) {
  html.window.sessionStorage[AppConstants.notificationWebViewOpenKey] = value
      .toString();
}

bool? getNotificationWebViewOpen() {
  final value =
      html.window.sessionStorage[AppConstants.notificationWebViewOpenKey];
  return value != null ? bool.parse(value) : null;
}
