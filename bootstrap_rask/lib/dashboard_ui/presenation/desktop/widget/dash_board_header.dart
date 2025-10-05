import 'package:bootstrap_rask/core/helpers/constants.dart';
import 'package:bootstrap_rask/core/theme/colors.dart';
import 'package:bootstrap_rask/core/theme/style.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/custom_icon.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/custom_text_field2.dart';
import 'package:flutter/material.dart';

class DashBoardHeader extends StatelessWidget {
  const DashBoardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(color: ColorManager.white),
      child: Row(
        children: [
          Text('Overview', style: AppTextStyle.font25Bold),
          Spacer(),
          SizedBox(width: 255, child: CustomTextField2()),
          SizedBox(width: 20),
          CustomIcon(path: AppIcons.settings, color: ColorManager.grayDark),
          SizedBox(width: 20),
          CustomIcon(path: AppIcons.notification, color: ColorManager.red),
          SizedBox(width: 20),
          CircleAvatar(
            radius: 20,
            backgroundColor: ColorManager.grayLight2,
            backgroundImage: AssetImage(AppImages.avatar),
          ),
        ],
      ),
    );
  }
}
