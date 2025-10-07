import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class DiscountItem extends StatelessWidget {
  const DiscountItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 73,
      decoration: BoxDecoration(
        color: ColorManager.discount,

        gradient: LinearGradient(
          colors: [
            Color(0xff34599F),
            ColorManager.discount,
            Color(0xff781CC7).withValues(alpha: .7),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(AppImage.microfon),
          Positioned(
            right: 0,
            child: Image.asset(AppImage.fitness, width: 105),
          ),

          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('40% discount', style: AppTextStyle.f20BoldWhite),
                verticalSpace(4),
                Text(
                  'on all our programs',
                  style: AppTextStyle.f14MeduimBlack.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
