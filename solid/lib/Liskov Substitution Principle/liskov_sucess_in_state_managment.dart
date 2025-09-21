import 'package:flutter/material.dart';

abstract class LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String token;
  LoginSuccess(this.token);
}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);

  // error message
}

// ui

//
Widget buildLoginUI(LoginState state) {
  if (state is LoginLoading) {
    return const CircularProgressIndicator();
  } else if (state is LoginSuccess) {
    return Text("Token: ${state.token}");
  } else if (state is LoginError) {
    return Text("Error: ${state.message}");
  }
  return const SizedBox();
}
