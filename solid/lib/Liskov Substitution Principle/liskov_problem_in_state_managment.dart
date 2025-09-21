abstract class LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String token;
  LoginSuccess(this.token);
}

class LoginError extends LoginState {
  String get token => throw Exception("لا يوجد توكن في حالة الخطأ!"); // ❌ خطأ
}
