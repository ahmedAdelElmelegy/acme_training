import 'package:core/helper/constants.dart';
import 'package:core/theme/color_manager.dart';
import 'package:core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: ColorManger.grayLight,
      ),
      child: Align(
        alignment: Alignment.center,
        child: SvgIcon(icon),
      ),
    );
  }
}
