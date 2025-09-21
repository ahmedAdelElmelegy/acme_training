import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List<dynamic> users = [];
  bool isLoading = true;
  String? errorMessage;
  // init state
  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  // first call api
  Future<void> fetchUsers() async {
    try {
      final response = await Dio().get(
        'https://jsonplaceholder.typicode.com/users',
      );
      setState(() {
        users = response.data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = "فشل في جلب البيانات";
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // second show data
    if (isLoading) return const Center(child: CircularProgressIndicator());
    if (errorMessage != null) return Center(child: Text(errorMessage!));
    // ui
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(users[index]['name']),
          subtitle: Text(users[index]['email']),
        );
      },
    );
  }
}
