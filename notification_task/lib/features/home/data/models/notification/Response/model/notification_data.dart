import 'message.dart';

class NotificationData {
  String? email;
  String? name;
  NotificationMessage? message;

  NotificationData({this.email, this.name, this.message});

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      NotificationData(
        email: json['email'] as String?,
        name: json['name'] as String?,
        message: json['message'] == null
            ? null
            : NotificationMessage.fromJson(
                json['message'] as Map<String, dynamic>,
              ),
      );

  Map<String, dynamic> toJson() => {
    'email': email,
    'name': name,
    'message': message?.toJson(),
  };
}
