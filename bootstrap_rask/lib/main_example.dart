import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class MainExample extends StatelessWidget {
  const MainExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FB5Container.fluid(
        child: FB5Row(
          classNames: 'gx-4 mt-3',
          children: [
            FB5Col(
              classNames: 'col-12 col-md-8',
              child: Container(
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "المحتوى الرئيسي",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            FB5Col(
              classNames: 'col-12 col-md-4',
              child: Container(
                height: 150,
                color: Colors.green,
                child: Center(
                  child: Text(
                    "شريط جانبي",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
