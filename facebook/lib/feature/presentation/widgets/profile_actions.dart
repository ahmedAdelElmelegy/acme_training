import 'package:facebook/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAction extends StatelessWidget {
  final bool? isSelected;
  const ProfileAction({super.key, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Posts',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: isSelected == true ? Colors.blue : Colors.grey,
            ),
          ),
        ),
        verticalSpace(10),
        Container(
          width: 50.w,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected == true ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ],
    );
  }
}
