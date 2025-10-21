class NotificationData {
  final String email;
  final String name;
  final List<List<String>?> message;

  NotificationData({
    required this.email,
    required this.name,
    required this.message,
  });

  NotificationData copyWith({
    String? email,
    String? name,
    List<List<String>?>? message,
  }) {
    return NotificationData(
      email: email ?? this.email,
      name: name ?? this.name,
      message: message ?? this.message,
    );
  }

  factory NotificationData.fromJson(Map<String, dynamic> json) {
    final rawMessage = json["message"];

    List<List<String>?> parsedMessage = [];
    if (rawMessage is List) {
      parsedMessage = rawMessage.map<List<String>?>((x) {
        if (x is List) {
          return x.map((e) => e.toString()).toList();
        } else {
          return null;
        }
      }).toList();
    }

    return NotificationData(
      email: json["email"] ?? '',
      name: json["name"] ?? '',
      message: parsedMessage,
    );
  }

  Map<String, dynamic> toJson() => {
    "email": email,
    "name": name,
    "message": message.map((list) => list?.map((e) => e).toList()).toList(),
  };
}
