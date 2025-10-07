import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LessonContentItem extends StatelessWidget {
  final String title;
  final bool isActive;
  const LessonContentItem({
    super.key,
    required this.title,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: isActive ? ColorManager.greyLight : Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
      ),

      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgIcon(
                isActive ? AppIcon.lessonPlay : AppIcon.lock,
                width: 20,
                height: 20,
                color: isActive ? ColorManager.black : ColorManager.gray,
              ),
              horizontalSpace(10),
              Text(
                title,
                style: AppTextStyle.f16BoldBlack.copyWith(
                  color: isActive ? ColorManager.black : ColorManager.gray,
                ),
              ),
            ],
          ),
          Text(
            '13:02',
            style: AppTextStyle.f16MediumBlack.copyWith(
              color: isActive ? ColorManager.black : ColorManager.gray,
            ),
          ),
        ],
      ),
    );
  }
}
