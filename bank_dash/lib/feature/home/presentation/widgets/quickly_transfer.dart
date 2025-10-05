import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/feature/home/presentation/widgets/quickly_btn.dart';
import 'package:bank_dash/feature/home/presentation/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuicklyTransfer extends StatelessWidget {
  const QuicklyTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Quick Transfer', style: AppTextStyle.font18Medium),
        verticalSpace(16),
        Container(
          height: 220,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(
            children: [
              Wrap(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: UserInfo(),
                  ),
                ),
              ),
              verticalSpace(20),

              Row(
                children: [
                  Text('Write Amount', style: AppTextStyle.font12Regular),
                  SizedBox(width: 16.w),
                  const QuicklyBtn(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
