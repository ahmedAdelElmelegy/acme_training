import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,

      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.banner),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24.w, bottom: 24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('CrossFit', style: AppTextStyle.f20BoldWhite),
            verticalSpace(8),
            CustomBtn(
              width: 120.w,
              height: 36.h,
              radius: 8.r,
              child: Text('Explore Now', style: AppTextStyle.f14BoldWhite),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
