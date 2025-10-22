class NotificationEntity {
  final String? idEntity;
  final String? emailEntity;
  final String? nameEntity;
  MessageEntity? messageEntity;
  final DateTime? readAtEntity;
  final DateTime? createdAtEntity;

  NotificationEntity({
    this.idEntity,
    this.emailEntity,
    this.nameEntity,
    this.messageEntity,
    this.readAtEntity,
    this.createdAtEntity,
  });
}

class MessageEntity {
  final String? subjectEntity;
  final String? headerEntity;
  List<dynamic>? bodyLinesEntity;
  final String? footerEntity;

  MessageEntity({
    this.subjectEntity,
    this.headerEntity,
    this.bodyLinesEntity,
    this.footerEntity,
  });
}
