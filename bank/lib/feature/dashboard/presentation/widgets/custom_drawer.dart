import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/side_bar_list.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int)? function;
  const CustomDrawer({super.key, this.function});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.logo),
                SizedBox(width: 16),
                Text('Bank Dash', style: AppTextStyle.font20Bold(context)),
              ],
            ),
            SizedBox(height: 16),
            SidBarList(function: function),
          ],
        ),
      ),
    );
  }
}
