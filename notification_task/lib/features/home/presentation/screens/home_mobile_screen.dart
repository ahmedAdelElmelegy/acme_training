import 'package:flutter/material.dart';

class HomeMobileScreen extends StatefulWidget {
  const HomeMobileScreen({super.key});

  @override
  State<HomeMobileScreen> createState() => _HomeMobileScreenState();
}

class _HomeMobileScreenState extends State<HomeMobileScreen> {
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('home'));
  }
}
