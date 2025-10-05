import 'package:bank_dash/feature/home/presentation/widgets/cart_item.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class MobileCart extends StatefulWidget {
  const MobileCart({super.key});

  @override
  State<MobileCart> createState() => _MobileCartState();
}

class _MobileCartState extends State<MobileCart> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Swiper(
        itemCount: 2,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
            },
            child: CartItem(isMobile: true, isSelected: _currentIndex == index),
          );
        },
        autoplay: true,
      ),
    );
  }
}
