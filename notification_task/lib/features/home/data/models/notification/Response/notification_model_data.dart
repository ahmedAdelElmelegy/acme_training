import 'package:notification_task/features/home/data/models/notification/Response/notification_data.dart';
import 'package:notification_task/features/home/domain/entity/notification_entity.dart';

class NotificationModelData extends NotificationEntity {
  String id;
  String type;
  NotificationData data;
  DateTime? readAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  NotificationModelData({
    required this.id,
    required this.type,
    required this.data,
    required this.readAt,
    required this.createdAt,
    required this.updatedAt,
  }) : super(
         idEntity: id,
         email: data.email,
         name: data.name,
         message: data.message,
         readAtEntity: readAt,
         createdAtEntity: createdAt,
       );

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
  factory NotificationModelData.fromJson(Map<String, dynamic> json) {
    final dataJson = json["data"] ?? {};

    return NotificationModelData(
      id: json["id"] ?? '',
      type: json["type"] ?? '',
      data: NotificationData.fromJson(dataJson),
      readAt: dataJson["read_at"] != null
          ? DateTime.tryParse(dataJson["read_at"])
          : null,
      createdAt: dataJson["created_at"] != null
          ? DateTime.tryParse(dataJson["created_at"])
          : null,
      updatedAt: dataJson["updated_at"] != null
          ? DateTime.tryParse(dataJson["updated_at"])
          : null,
    );
  }
}
