import 'package:bank_dash/core/helper/constants.dart';
import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/core/widgets/custom_text_field.dart';
import 'package:bank_dash/feature/home/presentation/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          SizedBox(width: 200.w, child: CustomTextField2()),
          horizontalSpace(20),
          CustomIcon(path: AppIcons.settings, color: ColorManager.grayDark),
          horizontalSpace(20),
          CustomIcon(path: AppIcons.notification, color: ColorManager.red),
          horizontalSpace(20),
          CircleAvatar(
            radius: 20.r,
            backgroundColor: ColorManager.grayLight2,
            backgroundImage: AssetImage(AppImages.avatar),
          ),
        ],
      ),
    );
  }
}
