import 'package:bootstrap_rask/core/helpers/constants.dart';
import 'package:bootstrap_rask/core/theme/colors.dart';
import 'package:bootstrap_rask/core/theme/style.dart';
import 'package:bootstrap_rask/core/widgets/svg_icon.dart';
import 'package:bootstrap_rask/dashboard_ui/data/model/side_bar_model.dart';
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
        SizedBox(width: 26),
        SvgIcon(
          path: model.icon,
          color: isSelected ? ColorManager.primary : ColorManager.gray,
        ),
        SizedBox(width: 26),
        Expanded(
          child: Text(
            model.title,
            style: AppTextStyle.font18Medium.copyWith(
              color: isSelected ? ColorManager.primary : ColorManager.gray,
            ),
          ),
        ),
      ],
    );
  }
}
