import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuicklyBtn extends StatelessWidget {
  const QuicklyBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.r),
              bottomLeft: Radius.circular(50.r),
            ),
            color: ColorManager.grayLight2,
          ),
          child: Text('525.50', style: AppTextStyle.font12Regular),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.r),
              bottomRight: Radius.circular(50.r),
            ),
            color: ColorManager.primary,
          ),
          child: Row(
            children: [
              Text(
                'Send',
                style: AppTextStyle.font12Regular.copyWith(
                  color: ColorManager.white,
                ),
              ),
              horizontalSpace(8),
              Icon(Icons.send, size: 12, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
