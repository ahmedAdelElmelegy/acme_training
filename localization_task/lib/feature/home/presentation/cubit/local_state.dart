part of 'local_cubit.dart';

@immutable
sealed class LocalState {}

final class LocalInitial extends LocalState {}

final class LocalLoading extends LocalState {}

class LocalSuccess extends LocalState {
  final Map<String, dynamic> json;
  LocalSuccess(this.json);
}

final class LocalError extends LocalState {
  final Failure failure;
  LocalError(this.failure);
}
