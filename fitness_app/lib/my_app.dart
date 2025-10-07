import 'package:fitness_app/core/helper/extention.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      routerConfig: router,
    );
  }
}
