import 'package:fitness_app/feature/home/presentation/wigets/slider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliderListView extends StatelessWidget {
  const HomeSliderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,

      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 327,
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: SliderItem(),
          ),
        ),
      ),
    );
  }
}
