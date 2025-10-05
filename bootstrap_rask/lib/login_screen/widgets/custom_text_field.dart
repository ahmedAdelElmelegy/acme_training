import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Icon suffixIcon;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.label,
    required this.suffixIcon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16, color: Colors.grey)),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            fillColor: Color(0xffF1F3F6),
            filled: true,
            hintText: hintText,
            suffixIcon: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xffFD7401),
                borderRadius: BorderRadius.circular(8),
              ),
              child: suffixIcon,
            ),
            suffixIconColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
