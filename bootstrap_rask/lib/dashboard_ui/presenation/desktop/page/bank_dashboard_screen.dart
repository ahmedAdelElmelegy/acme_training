import 'package:bootstrap_rask/core/helpers/constants.dart';
import 'package:bootstrap_rask/core/theme/colors.dart';
import 'package:bootstrap_rask/core/theme/style.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/cart_section.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/dash_board_header.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/side_bar_menu.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/transaction_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class BankDashboardScreen extends StatelessWidget {
  const BankDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    debugPrint(width.toString());
    return Scaffold(
      body: SizedBox(
        height: 1175,

        child: FB5Container.fluid(
          child: FB5Row(
            children: [
              FB5Col(
                classNames: 'col-12 col-md-6 col-lg-2 d-none d-sm-block',
                child: SidBarMenu(),
              ),
              FB5Col(
                classNames: 'col-12 col-md-6 col-lg-10   d-none d-sm-block',
                child: Center(child: DashboardBody()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DashBoardHeader(),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: BoxDecoration(color: ColorManager.grayLight2),
            child: Column(
              children: [
                FB5Container.fluid(
                  child: FB5Row(
                    classNames: 'g-3',
                    children: [
                      FB5Col(
                        classNames:
                            'col-12 col-lg-9 mb-md-6', // 🔹 موبايل ياخد عرض كامل
                        child: const CartSection(),
                      ),
                      FB5Col(
                        classNames: 'col-12 col-lg-3 mt-md-6',
                        child: const TransactionSection(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                FB5Row(
                  children: [
                    FB5Col(
                      classNames: 'col-12 col-lg-6',
                      child: const WeaklyActivity(),
                    ),
                    FB5Col(
                      classNames: 'col-12 col-lg-6',
                      child: const ExpencesSt(),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                FB5Row(
                  children: [
                    FB5Col(
                      classNames: 'col-12 col-lg-6',
                      child: const QuickTransfer(),
                    ),
                    FB5Col(
                      classNames: 'col-12 col-lg-6',
                      child: const Balance(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeaklyActivity extends StatelessWidget {
  const WeaklyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Weakly Activity',
          style: AppTextStyle.font16Semibold.copyWith(
            color: ColorManager.black,
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 730,
          height: 322,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(AppImages.weekActivity),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class ExpencesSt extends StatelessWidget {
  const ExpencesSt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Expences Statistic',
          style: AppTextStyle.font16Semibold.copyWith(
            color: ColorManager.black,
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 350,
          height: 322,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(AppImages.expences),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Transfer',
          style: AppTextStyle.font16Semibold.copyWith(
            color: ColorManager.black,
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 295,
          height: 220,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(AppImages.quickTransfer),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Balance History',
          style: AppTextStyle.font16Semibold.copyWith(
            color: ColorManager.black,
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 423,
          height: 220,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(AppImages.balance),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
