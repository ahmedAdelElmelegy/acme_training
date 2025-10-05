import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/feature/home/presentation/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionSection extends StatelessWidget {
  final bool isMobile;
  const TransactionSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Transactions',
          style: AppTextStyle.font16Semibold.copyWith(
            color: ColorManager.black,
          ),
        ),
        verticalSpace(16),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 24.w : 30.w,
            vertical: isMobile ? 24.h : 30.h,
          ),

          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: List.generate(
              3,
              (index) => TransactionItem(isMobile: isMobile),
            ),
          ),
        ),
      ],
    );
  }
}
