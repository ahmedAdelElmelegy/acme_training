import 'package:bootstrap_rask/core/widgets/svg_icon.dart';
import 'package:bootstrap_rask/login_screen/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgIcon(path: 'assets/icons/logo.svg', width: 200, height: 59),
                SizedBox(height: 24),
                Text(
                  'Login into your account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24),
                CustomTextField(
                  label: 'Email',
                  suffixIcon: Icon(Icons.email),
                  hintText: 'alex@email.com',
                ),
                SizedBox(height: 24),
                CustomTextField(
                  label: 'Password',
                  suffixIcon: Icon(Icons.lock),
                  hintText: '********',
                ),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password'),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFD7401),
                    fixedSize: Size(double.maxFinite, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Login Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                    SizedBox(width: 12),
                    Text(
                      'Or',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(width: 12),
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  ],
                ),
                SizedBox(height: 24),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xffFD7401)),
                    fixedSize: Size(double.maxFinite, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xffFD7401)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
