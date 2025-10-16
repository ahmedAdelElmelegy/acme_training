import 'package:notification_task/features/home/domain/entity/notification_entity.dart';

class NotificationData extends NotificationEntity {
  String email;
  String name;
  List<List<String>?> message;

  NotificationData({
    required this.email,
    required this.name,
    required this.message,
  }) : super(emailEn: email, nameEn: name, messageEn: message);

  NotificationData copyWith({
    String? email,
    String? name,
    List<List<String>?>? message,
  }) => NotificationData(
    email: email ?? this.email,
    name: name ?? this.name,
    message: message ?? this.message,
  );

  // to fromjson
  factory NotificationData.fromJson(Map<String, dynamic> json) {
    return NotificationData(
      email: json["email"],
      name: json["name"],
      message: List<List<String>?>.from(
        json["message"].map((x) => List<String>.from(x)),
      ),
    );
  }
}
