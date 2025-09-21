import 'package:facebook/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CameraIcon extends StatelessWidget {
  final Color? color;
  final bool? isDesktop;
  const CameraIcon({super.key, this.color, this.isDesktop = false});

  @override
  Widget build(BuildContext context) {
    return isDesktop == true
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Icon(Icons.camera_alt),
                horizontalSpace(4),
                Text(
                  'Edit cover photo',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        : CircleAvatar(
            backgroundColor: Color(0xffE3E4E9),
            radius: 16,
            child: Icon(Icons.camera_alt, size: 18),
          );
  }
}
