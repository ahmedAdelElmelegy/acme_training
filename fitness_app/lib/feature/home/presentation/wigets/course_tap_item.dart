import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class CourseTabItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CourseTabItem({super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          Text(
            text,
            style: AppTextStyle.f16BoldBlack.copyWith(
              color: isSelected ? ColorManager.primary : ColorManager.gray,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          verticalSpace(8),
          Container(
            height: 3,
            decoration: BoxDecoration(
              color: isSelected ? ColorManager.primary : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
