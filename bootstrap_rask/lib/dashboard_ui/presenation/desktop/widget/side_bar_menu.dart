import 'package:bootstrap_rask/core/helpers/constants.dart';
import 'package:bootstrap_rask/core/theme/style.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/side_bar_list.dart';
import 'package:flutter/material.dart';

class SidBarMenu extends StatelessWidget {
  const SidBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 31),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logo, width: 38),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'BankDashboard',
                      style: AppTextStyle.font25Bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            SidBarList(),
          ],
        ),
      ),
    );
  }
}
