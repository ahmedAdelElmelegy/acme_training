import 'package:card_swiper/card_swiper.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/feature/home/presentation/widgets/slider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160.h,
          child: Swiper(
            autoplay: true,
            itemCount: 3,
            scale: 0.9,
            itemBuilder: (context, index) {
              return SliderItem();
            },
            onIndexChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        verticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 4),
              child: SliderPagenationItem(isSelected: index == currentIndex),
            );
          }),
        ),
      ],
    );
  }
}

class SliderPagenationItem extends StatelessWidget {
  final bool isSelected;
  const SliderPagenationItem({super.key, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return !isSelected
        ? CircleAvatar(radius: 3, backgroundColor: ColorManager.greyLight2)
        : Container(
            height: 6,
            width: 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorManager.primary,
            ),
          );
  }
}
