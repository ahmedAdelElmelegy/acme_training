import 'package:fitness_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtn extends StatelessWidget {
  final Widget child;
  final double? width, height, radius;
  final VoidCallback onPressed;
  const CustomBtn({
    super.key,
    required this.child,
    required this.onPressed,
    this.width,
    this.height,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 60.r),
        ),
        minimumSize: Size(width ?? double.infinity, height ?? 46),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
