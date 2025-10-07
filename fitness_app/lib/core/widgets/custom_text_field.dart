import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String prefixIcon;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: ColorManager.greyLight,
        filled: true,
        hintStyle: AppTextStyle.f14RegGray,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16),
          child: SvgIcon(prefixIcon, width: 24.w, height: 24.h),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
