import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/widgets/svg_icon.dart';
import 'package:fitness_app/feature/home/presentation/widgets/info_row_widget.dart';
import 'package:flutter/material.dart';

class CourseInfoTitle extends StatelessWidget {
  const CourseInfoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Personal Trainer',
                style: AppTextStyle.f24BoldWhite.copyWith(
                  color: ColorManager.black,
                ),
              ),
            ),
            horizontalSpace(10),
            SvgIcon(AppIcon.bookmark, color: ColorManager.greyLight),
          ],
        ),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InfoRowWidget(
              icon: AppIcon.star,
              color: ColorManager.yellow,
              text: '4.9 (231 reviews)',
            ),
            InfoRowWidget(icon: AppIcon.clock, text: '5h 30m'),
          ],
        ),
        verticalSpace(10),
        Text(
          'You will learn how to put together professional training plans to apply to specific goals of your own or those you will train in the future.',
          style: AppTextStyle.f14MeduimBlack.copyWith(color: ColorManager.gray),
        ),
      ],
    );
  }
}
