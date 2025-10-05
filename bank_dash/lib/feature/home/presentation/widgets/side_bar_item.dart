import 'package:bank_dash/core/helper/constants.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/core/widgets/svg_icon.dart';
import 'package:bank_dash/feature/home/data/model/side_bar_model.dart';
import 'package:flutter/material.dart';

class SidBarItem extends StatelessWidget {
  final SideBarModel model;
  final bool isSelected;
  const SidBarItem({super.key, required this.model, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppImages.select,
          width: 8,
          color: isSelected ? ColorManager.primary : Colors.transparent,
        ),
        SizedBox(width: 24),
        SvgIcon(
          path: model.icon,
          color: isSelected ? ColorManager.primary : ColorManager.gray,
        ),
        SizedBox(width: 20),
        Expanded(
          child: Text(
            model.title,
            style: AppTextStyle.font16Semibold.copyWith(
              color: isSelected ? ColorManager.primary : ColorManager.gray,
            ),
          ),
        ),
      ],
    );
  }
}
