import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class RowOfHome extends StatelessWidget {
  const RowOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Trending courses',
          style: AppTextStyle.f16BoldWhite.copyWith(color: ColorManager.black),
        ),
        Text(
          'See All',
          style: AppTextStyle.f14MeduimBlack.copyWith(
            color: ColorManager.primary,
            decoration: TextDecoration.underline,
            decorationColor: ColorManager.primary,
          ),
        ),
      ],
    );
  }
}
