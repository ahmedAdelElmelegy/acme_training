import 'package:bank/feature/dashboard/data/models/side_bar_model.dart';
import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/core/widgets/svg_icon.dart';
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
            style: AppTextStyle.font16Semibold(context).copyWith(
              color: isSelected ? ColorManager.primary : ColorManager.gray,
            ),
          ),
        ),
      ],
    );
  }
}
