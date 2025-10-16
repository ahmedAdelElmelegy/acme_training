import 'package:notification_task/features/home/data/models/notification/Response/notification_data.dart';

class NotificationModel {
  List<NotificationData> data;

  NotificationModel({required this.data});

  NotificationModel copyWith({List<NotificationData>? data}) =>
      NotificationModel(data: data ?? this.data);
}
