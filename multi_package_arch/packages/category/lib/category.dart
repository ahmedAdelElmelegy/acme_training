import 'package:core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Text('Screen2'),
            ),
            verticalSpace(30),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/main/category/product');
                },
                child: Text('Screen 2'))
          ],
        ),
      ),
    );
  }
}
