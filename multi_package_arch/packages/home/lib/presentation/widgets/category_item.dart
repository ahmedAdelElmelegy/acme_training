import 'package:core/helper/spacing.dart';
import 'package:core/theme/color_manager.dart';
import 'package:core/theme/styles.dart';
import 'package:core/widgets/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/data/models/category_model/category_data.dart';
import 'package:home/domain/entities/category_entity.dart';

class CategoryItem extends StatelessWidget {
  final CategoryEntity categoryData;
  const CategoryItem({super.key, required this.categoryData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Container(
              width: 80.w,
              height: 80.h,
              padding: EdgeInsets.all(8.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorManger.grayLight,
              ),
              child: SizedBox(
                  width: 64.w,
                  height: 64.h,
                  child: CachedImage(image: categoryData.image!)),
            ),
          ),
          verticalSpace(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              categoryData.name,
              maxLines: 2,
              style: TextStyles.font12MadaRegularBlack,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
