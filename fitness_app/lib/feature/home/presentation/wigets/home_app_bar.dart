import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgIcon(AppIcon.refresh, width: 30.w, height: 30.h),

        Row(
          children: [
            SvgIcon(AppIcon.notification, width: 30.w, height: 30.h),
            horizontalSpace(12),
            CircleAvatar(
              radius: 17.r,
              backgroundImage: AssetImage(AppImage.profile),
            ),
          ],
        ),
      ],
    );
  }
}
