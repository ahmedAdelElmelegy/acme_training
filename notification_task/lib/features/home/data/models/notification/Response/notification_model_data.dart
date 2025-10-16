import 'package:notification_task/features/home/data/models/notification/Response/notification_data.dart';

class NotificationModelData {
  String id;
  String type;
  NotificationData data;
  dynamic readAt;
  DateTime createdAt;
  DateTime updatedAt;

  NotificationModelData({
    required this.id,
    required this.type,
    required this.data,
    required this.readAt,
    required this.createdAt,
    required this.updatedAt,
  });

  NotificationModelData copyWith({
    String? id,
    String? type,
    NotificationData? data,
    dynamic readAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => NotificationModelData(
    id: id ?? this.id,
    type: type ?? this.type,
    data: data ?? this.data,
    readAt: readAt ?? this.readAt,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );

  // to fromjson
  factory NotificationModelData.fromJson(Map<String, dynamic> json) =>
      NotificationModelData(
        id: json["id"],
        type: json["type"],
        data: NotificationData.fromJson(json["data"]),
        readAt: json["read_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
