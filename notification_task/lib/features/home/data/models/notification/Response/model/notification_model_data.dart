import 'package:notification_task/features/home/domain/entity/notification_entity.dart';

import 'notification_data.dart';

class NotificationModelData extends NotificationEntity {
  String? id;
  String? type;
  NotificationData? data;
  dynamic readAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  NotificationModelData({
    this.id,
    this.type,
    this.data,
    this.readAt,
    this.createdAt,
    this.updatedAt,
  }) : super(
         idEntity: id,
         emailEntity: data?.email,
         nameEntity: data?.name,
         messageEntity: MessageEntity(
           subjectEntity: data?.message?.subject,
           headerEntity: data?.message?.header,
           bodyLinesEntity: data?.message?.bodyLines,
           footerEntity: data?.message?.footer,
         ),
         readAtEntity: readAt,
         createdAtEntity: createdAt,
       );

  factory NotificationModelData.fromJson(Map<String, dynamic> json) =>
      NotificationModelData(
        id: json['id'] as String?,
        type: json['type'] as String?,
        data: json['data'] == null
            ? null
            : NotificationData.fromJson(json['data'] as Map<String, dynamic>),
        readAt: json['read_at'] as dynamic,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'type': type,
    'data': data?.toJson(),
    'read_at': readAt,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };
}
