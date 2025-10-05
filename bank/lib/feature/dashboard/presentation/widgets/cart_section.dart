import 'package:bank/feature/dashboard/presentation/widgets/cart_list.dart';
import 'package:bank/feature/dashboard/presentation/widgets/row_of_cart.dart';
import 'package:flutter/material.dart';

class CartSection extends StatelessWidget {
  const CartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [RowOfCart(), SizedBox(height: 16), CartList()],
    );
  }
}
