class NotificationEntity {
  final String idEntity;
  final String email;
  final String name;
  List<List<String>?> message;
  final DateTime? readAtEntity;
  final DateTime? createdAtEntity;

  NotificationEntity({
    required this.idEntity,
    required this.email,
    required this.name,
    required this.message,
    this.readAtEntity,
    required this.createdAtEntity,
  });
}
