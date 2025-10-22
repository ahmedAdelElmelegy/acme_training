class NotificationMessage {
  String? subject;
  String? header;
  List<dynamic>? bodyLines;
  String? footer;

  NotificationMessage({this.subject, this.header, this.bodyLines, this.footer});

  factory NotificationMessage.fromJson(Map<String, dynamic> json) =>
      NotificationMessage(
        subject: json['subject'] as String?,
        header: json['header'] as String?,
        bodyLines: json['bodyLines'] as List<dynamic>?,
        footer: json['footer'] as String?,
      );

  Map<String, dynamic> toJson() => {
    'subject': subject,
    'header': header,
    'bodyLines': bodyLines,
    'footer': footer,
  };
}
