import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/widgets/custom_text_field.dart';
import 'package:fitness_app/feature/home/presentation/widgets/discount_item.dart';
import 'package:fitness_app/feature/home/presentation/widgets/home_app_bar.dart';
import 'package:fitness_app/feature/home/presentation/widgets/home_slider.dart';
import 'package:fitness_app/feature/home/presentation/widgets/home_trending_course_list_view.dart';
import 'package:fitness_app/feature/home/presentation/widgets/row_of_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              HomeAppBar(),
              verticalSpace(24),
              CustomTextField(
                hintText: 'What do you learn today?',
                prefixIcon: AppIcon.search,
              ),
              verticalSpace(24),
              HomeSlider(),
              verticalSpace(24),
              RowOfHome(),
              verticalSpace(24),
              SizedBox(
                height: size.height * .3,
                child: HomeTrendingCourseListView(),
              ),
              verticalSpace(24),
              DiscountItem(),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}
