class NotificationRequestBody {
  final String userId;
  final int isRead;
  final int limit;
  final int offset;

  NotificationRequestBody({
    required this.userId,
    required this.isRead,
    required this.limit,
    required this.offset,
  });

  NotificationRequestBody copyWith({
    String? userId,
    int? isRead,
    int? limit,
    int? offset,
  }) => NotificationRequestBody(
    userId: userId ?? this.userId,
    isRead: isRead ?? this.isRead,
    limit: limit ?? this.limit,
    offset: offset ?? this.offset,
  );
  // to json
  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'is_read': isRead,
    'limit': limit,
    'offset': offset,
  };
}
