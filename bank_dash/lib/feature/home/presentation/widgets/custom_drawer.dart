import 'package:bank_dash/core/helper/constants.dart';
import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/feature/home/presentation/widgets/side_bar_list.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(36),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.logo),
                horizontalSpace(16),
                Text('Bank Dash', style: AppTextStyle.font20Bold),
              ],
            ),
            verticalSpace(16),
            const SidBarList(),
          ],
        ),
      ),
    );
  }
}
