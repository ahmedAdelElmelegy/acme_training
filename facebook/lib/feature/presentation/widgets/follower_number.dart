import 'package:facebook/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowerNumber extends StatelessWidget {
  final bool? isDesktop;
  const FollowerNumber({super.key, this.isDesktop = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '1.9k',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isDesktop == true ? 20.sp : 14.sp,
          ),
        ),
        horizontalSpace(4),
        Text(
          'followers',
          style: TextStyle(
            color: Colors.grey,
            fontSize: isDesktop == true ? 20.sp : 14.sp,
          ),
        ),
      ],
    );
  }
}
