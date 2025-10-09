import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/utils/app_constants.dart';
import 'package:fitness_app/core/widgets/custom_btn.dart';
import 'package:fitness_app/core/widgets/svg_icon.dart';
import 'package:fitness_app/feature/home/presentation/widgets/course_info_title.dart';
import 'package:fitness_app/feature/home/presentation/widgets/course_tap_list.dart';
import 'package:fitness_app/feature/home/presentation/widgets/lesson_content_list.dart';
import 'package:fitness_app/feature/home/presentation/widgets/youtube_full.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingCourseDetailScreen extends StatefulWidget {
  const TrendingCourseDetailScreen({super.key});

  @override
  State<TrendingCourseDetailScreen> createState() =>
      _TrendingCourseDetailScreenState();
}

class _TrendingCourseDetailScreenState
    extends State<TrendingCourseDetailScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FullYoutubePlayer(videoUrl: AppConstants.videoUrl),

            verticalSpace(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  CourseInfoTitle(),
                  verticalSpace(24),
                  CourseTabList(),
                  verticalSpace(10),
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
                  verticalSpace(36),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
