import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return FB5Row(
      children: List.generate(
        2,
        (index) => FB5Col(
          classNames: 'col-12 col-lg-6',
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
