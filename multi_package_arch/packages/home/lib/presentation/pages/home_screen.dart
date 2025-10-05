import 'package:core/helper/constants.dart';
import 'package:core/helper/spacing.dart';
import 'package:core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/presentation/widgets/category_grid_view.dart';
import 'package:home/presentation/widgets/custom_appbar.dart';
import 'package:home/presentation/widgets/home_icon.dart';
import 'package:home/presentation/widgets/picture_swiper.dart';
import 'package:home/presentation/widgets/row_of_home.dart';
import 'package:home/presentation/widgets/search_and_chose_city.dart';

// home_screen.dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    verticalSpace(8),
                    const SearchAndChoseCity(),
                    verticalSpace(16),
                    const PicturesSwiper(),
                    verticalSpace(16),
                    RowOfHome(text: 'category'),
                    verticalSpace(16),
                    CategoryGridView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
