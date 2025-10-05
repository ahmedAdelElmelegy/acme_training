import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/feature/home/presentation/widgets/balance_history.dart';
import 'package:bank_dash/feature/home/presentation/widgets/bar_chart_section.dart';
import 'package:bank_dash/feature/home/presentation/widgets/cart_section.dart';
import 'package:bank_dash/feature/home/presentation/widgets/dashboard_header.dart';
import 'package:bank_dash/feature/home/presentation/widgets/expense_statistic_section.dart';
import 'package:bank_dash/feature/home/presentation/widgets/quickly_transfer.dart';
import 'package:bank_dash/feature/home/presentation/widgets/transaction_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDesktopBody extends StatelessWidget {
  const HomeDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isTablet = size.width < 1200 || size.height < 800;
    return Column(
      children: [
        if (isTablet) DashBoardHeader(),

        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: BoxDecoration(color: ColorManager.grayLight2),
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(flex: 3, child: const CartSection()),
                    SizedBox(width: 25.w),
                    Expanded(flex: 2, child: const TransactionSection()),
                  ],
                ),

                SizedBox(height: 25.h),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Weekly Activity',
                            style: AppTextStyle.font18Medium,
                          ),
                          SizedBox(height: 16.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.w,
                              vertical: 40.h,
                            ),
                            height: 261,
                            decoration: BoxDecoration(
                              color: ColorManager.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: BarChartSection(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25.w),
                    Expanded(flex: 2, child: const ExpenseStatisticSection()),
                  ],
                ),

                SizedBox(height: 20.h),

                Row(
                  children: [
                    Expanded(flex: 2, child: const QuicklyTransfer()),
                    SizedBox(width: 25.w),
                    Expanded(flex: 4, child: BalanceHistory()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
