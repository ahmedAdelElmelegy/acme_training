import 'package:bootstrap_rask/login_screen/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FB5Row(
        children: [
          FB5Col(classNames: 'col-md-6  col-lg-4  ', child: LoginForm()),
          FB5Col(
            classNames: ' col-md-6 d-none d-md-block col-lg-8',
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Container(
                decoration: BoxDecoration(color: Color(0xffC2C2C2)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/login.png', fit: BoxFit.cover),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
