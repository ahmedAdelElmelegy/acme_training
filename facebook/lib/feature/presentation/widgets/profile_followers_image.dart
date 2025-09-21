import 'package:facebook/core/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileFollowerImage extends StatelessWidget {
  const ProfileFollowerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: CircleAvatar(
        radius: 15.r,
        backgroundImage: AssetImage(AppImage.profile),
      ),
    );
  }
}
