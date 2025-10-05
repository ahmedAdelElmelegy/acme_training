import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/core/widgets/custom_text_field.dart';
import 'package:bank/feature/dashboard/presentation/widgets/custom_icon.dart';
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
          Text('Overview', style: AppTextStyle.font25Bold(context)),
          Spacer(),
          SizedBox(width: 255, child: CustomTextField2()),
          SizedBox(width: 30),
          CustomIcon(path: AppIcons.settings, color: ColorManager.grayDark),
          SizedBox(width: 30),
          CustomIcon(path: AppIcons.notification, color: ColorManager.red),
          SizedBox(width: 30),
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
