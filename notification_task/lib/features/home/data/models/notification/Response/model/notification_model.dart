import 'notification_model_data.dart';

class NotificationModel {
  List<NotificationModelData>? data;

  NotificationModel({this.data});

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => NotificationModelData.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'data': data?.map((e) => e.toJson()).toList(),
  };
}
