import 'package:bank_dash/core/helper/constants.dart';
import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/feature/home/presentation/widgets/side_bar_list.dart';
import 'package:flutter/material.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logo, width: 28),
                    horizontalSpace(10),
                    Expanded(
                      child: Text(
                        'BankDashboard',
                        style: AppTextStyle.font25Bold,
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(12),
              SidBarList(),
            ],
          ),
        ),
      ),
    );
  }
}
