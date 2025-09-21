import 'package:dio/dio.dart';
// first  get data

class UserRepo {
  Dio dio;
  UserRepo(this.dio);
  Future<List<dynamic>> fetchUsers() async {
    try {
      final response = await dio.get(
        'https://jsonplaceholder.typicode.com/users',
      );
      return response.data;
    } catch (e) {
      throw e;
    }
  }
}
