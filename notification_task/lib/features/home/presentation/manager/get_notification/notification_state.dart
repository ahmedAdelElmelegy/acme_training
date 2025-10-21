part of 'notification_cubit.dart';

sealed class NotificationState {
  const NotificationState();
}

final class NotificationInitial extends NotificationState {
  const NotificationInitial();
}

final class NotificationLoading extends NotificationState {
  const NotificationLoading();
}

final class NotificationSuccess extends NotificationState {
  const NotificationSuccess();
}

final class NotificationError extends NotificationState {
  final String message;
  const NotificationError({required this.message});
}

class NotificationWebViewOpen extends NotificationState {}
