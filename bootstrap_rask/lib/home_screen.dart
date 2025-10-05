import 'package:bootstrap_rask/login_screen/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginScreen());
  }
}

// bootstrap
class Exemple2Grid extends StatelessWidget {
  const Exemple2Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return FB5Row(
      classNames: "gx-4 gy-3", //speacing betwern columns
      children: [
        FB5Col(
          classNames: "col-12 col-md-6",
          child: Container(
            color: Colors.blue,
            height: 100,
            child: Center(
              child: Text("عمود 1", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),

        FB5Col(
          classNames: "col-12 col-md-6",

          // in a large or md is 6 and small is  full width
          child: Container(
            color: Colors.red,
            height: 100,
            child: Center(
              child: Text("عمود 2", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  }
}

class Exemple4Visible extends StatelessWidget {
  const Exemple4Visible({super.key});

  @override
  Widget build(BuildContext context) {
    return FB5Col(
      classNames: 'col-12 col-lg-6 d-none d-sm-block', // hide in small screens
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "النص دا مش هيبان في الشاشات الصغيرة",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class DGrid extends StatelessWidget {
  const DGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return FB5Grid(
      classNames: 'row-cols-4', // يقسم الصف لـ 3 أعمدة
      children: List.generate(8, (i) {
        return Container(
          margin: EdgeInsets.all(8),
          height: 80,
          color: Colors.orange,
          child: Center(child: Text("عنصر ${i + 1}")),
        );
      }),
    );
  }
}

// d its short for display
