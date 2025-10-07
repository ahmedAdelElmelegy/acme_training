import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/feature/home/presentation/wigets/info_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingCourseItem extends StatelessWidget {
  const TrendingCourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w, bottom: 10),
      width: 240.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ColorManager.gray.withValues(alpha: .2),
            blurRadius: 24.r,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              ),
              image: DecorationImage(
                image: AssetImage(AppImage.course),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fitness', style: AppTextStyle.f12MeduimGray),
                verticalSpace(4),

                Text('Personal Trainer', style: AppTextStyle.f16BoldBlack),
                verticalSpace(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InfoRowWidget(
                      icon: AppIcon.star,
                      text: '4.9',
                      color: ColorManager.yellow,
                    ),
                    horizontalSpace(14),
                    InfoRowWidget(icon: AppIcon.clock, text: '5h 30m'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
