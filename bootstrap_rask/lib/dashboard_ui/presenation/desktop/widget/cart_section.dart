import 'package:bootstrap_rask/core/theme/colors.dart';
import 'package:bootstrap_rask/core/theme/style.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/cart_list.dart';
import 'package:flutter/material.dart';

class CartSection extends StatelessWidget {
  const CartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Carts',
              style: AppTextStyle.font18Medium.copyWith(
                color: ColorManager.black,
              ),
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
        ),
        SizedBox(height: 16),
        CartList(),
      ],
    );
  }
}
