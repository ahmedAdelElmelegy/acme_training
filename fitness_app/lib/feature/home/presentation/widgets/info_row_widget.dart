import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoRowWidget extends StatelessWidget {
  final String icon;
  final String text;
  final Color? color;
  const InfoRowWidget({
    super.key,
    required this.icon,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgIcon(
          icon,
          color: color ?? ColorManager.gray,
          width: 16.w,
          height: 16.h,
        ),
        Text(text, style: AppTextStyle.f14RegGray),
      ],
    );
  }
}
