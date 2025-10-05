import 'package:bank_dash/feature/home/presentation/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        2,
        (index) => Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },

            child: CartItem(isSelected: index == selectedIndex),
          ),
        ),
      ),
    );
  }
}
