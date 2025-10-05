import 'package:bank_dash/core/helper/constants.dart';
import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/core/widgets/custom_text_field.dart';
import 'package:bank_dash/feature/home/presentation/widgets/balance_history.dart';
import 'package:bank_dash/feature/home/presentation/widgets/bar_chart_section.dart';
import 'package:bank_dash/feature/home/presentation/widgets/custom_drawer.dart';
import 'package:bank_dash/feature/home/presentation/widgets/expense_statistic_section.dart';
import 'package:bank_dash/feature/home/presentation/widgets/mobile_cart.dart';
import 'package:bank_dash/feature/home/presentation/widgets/quickly_transfer.dart';
import 'package:bank_dash/feature/home/presentation/widgets/row_of_cart.dart';
import 'package:bank_dash/feature/home/presentation/widgets/transaction_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeMobileLayout extends StatefulWidget {
  const HomeMobileLayout({super.key});

  @override
  State<HomeMobileLayout> createState() => _HomeMobileLayoutState();
}

class _HomeMobileLayoutState extends State<HomeMobileLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint(size.width.toString());
    return Scaffold(
      backgroundColor: ColorManager.grayLight2,
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      child: Icon(Icons.menu, size: 24.sp),
                    ),
                    Text('Overview', style: AppTextStyle.font20Bold),
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: ColorManager.grayLight2,
                      backgroundImage: AssetImage(AppImages.avatar),
                    ),
                  ],
                ),
                verticalSpace(16),
                CustomTextField2(),
                verticalSpace(16),
                RowOfCart(),
                verticalSpace(16),
                MobileCart(),
                verticalSpace(16),
                TransactionSection(isMobile: true),
                verticalSpace(16),
                Text('Weekly Activity', style: AppTextStyle.font18Medium),
                verticalSpace(16),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  height: 261,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: BarChartSection(),
                ),
                verticalSpace(16),
                const ExpenseStatisticSection(),
                verticalSpace(16),
                QuicklyTransfer(),
                verticalSpace(16),

                BalanceHistory(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
