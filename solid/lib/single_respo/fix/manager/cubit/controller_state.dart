part of 'controller_cubit.dart';

@immutable
sealed class ControllerState {}

final class ControllerInitial extends ControllerState {}

final class ControllerLoading extends ControllerState {}

final class ControllerSuccess extends ControllerState {
  final List<dynamic> users;
  ControllerSuccess(this.users);
}

final class ControllerError extends ControllerState {
  final String error;
  ControllerError(this.error);
}
