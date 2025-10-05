import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:flutter/material.dart';

class RowOfCart extends StatelessWidget {
  const RowOfCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Carts',
          style: AppTextStyle.font18Medium.copyWith(color: ColorManager.black),
        ),

        GestureDetector(
          onTap: () {},
          child: Text(
            'See All',
            style: AppTextStyle.font12Regular.copyWith(
              color: ColorManager.primary,
            ),
          ),
        ),
      ],
    );
  }
}
