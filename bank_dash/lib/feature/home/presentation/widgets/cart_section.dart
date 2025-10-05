import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/feature/home/presentation/widgets/cart_list.dart';
import 'package:bank_dash/feature/home/presentation/widgets/row_of_cart.dart';
import 'package:flutter/material.dart';

class CartSection extends StatelessWidget {
  const CartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [RowOfCart(), verticalSpace(16), CartList()],
    );
  }
}
