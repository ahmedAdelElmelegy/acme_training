import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/utils/app_constants.dart';
import 'package:fitness_app/core/widgets/custom_btn.dart';
import 'package:fitness_app/core/widgets/svg_icon.dart';
import 'package:fitness_app/feature/home/presentation/wigets/course_tap_list.dart';
import 'package:fitness_app/feature/home/presentation/wigets/info_row_widget.dart';
import 'package:fitness_app/feature/home/presentation/wigets/lesson_content_list.dart';
import 'package:fitness_app/feature/home/presentation/wigets/youtube_full.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingCourseDetailTabletScreen extends StatelessWidget {
  const TrendingCourseDetailTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // YouTube Player with fixed height
              FullYoutubePlayer(videoUrl: AppConstants.videoUrl),

              // Scrollable content
              verticalSpace(32),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Personal Trainer',
                            style: AppTextStyle.f24BoldWhite.copyWith(
                              color: ColorManager.black,
                            ),
                          ),
                        ),
                        horizontalSpace(10),
                        SvgIcon(
                          AppIcon.bookmark,
                          color: ColorManager.greyLight,
                        ),
                      ],
                    ),
                    verticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoRowWidget(
                          icon: AppIcon.star,
                          color: ColorManager.yellow,
                          text: '4.9 (231 reviews)',
                        ),
                        InfoRowWidget(icon: AppIcon.clock, text: '5h 30m'),
                      ],
                    ),
                    verticalSpace(10),
                    Text(
                      'You will learn how to put together professional training plans to apply to specific goals of your own or those you will train in the future.',
                      style: AppTextStyle.f14MeduimBlack.copyWith(
                        color: ColorManager.gray,
                      ),
                    ),
                    verticalSpace(24),
                    CourseTabList(),
                    LessonContentList(),
                    verticalSpace(18),
                    CustomBtn(
                      onPressed: () {},
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Enroll Now', style: AppTextStyle.f16BoldWhite),
                          horizontalSpace(8),
                          SvgIcon(AppIcon.arrowRight),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
