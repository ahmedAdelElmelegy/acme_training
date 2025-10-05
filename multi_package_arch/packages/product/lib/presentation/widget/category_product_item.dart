import 'package:core/theme/color_manager.dart';
import 'package:core/theme/styles.dart';
import 'package:core/widgets/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/domain/entities/category_entity.dart';

class CategoryProductItem extends StatelessWidget {
  final bool? isActive;
  final CategoryEntity category;
  const CategoryProductItem(
      {super.key, this.isActive = false, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      color: ColorManger.red.withValues(alpha: .01),
      child: Container(
        decoration: BoxDecoration(
            color: isActive == true
                ? ColorManger.red.withValues(alpha: .1)
                : ColorManger.red.withValues(alpha: .01),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
                color: isActive == true
                    ? ColorManger.red
                    : ColorManger.red.withValues(alpha: .01),
                width: 1)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 24.w,
                height: 24.h,
                child: CachedImage(image: category.image),
              ),
              Text(
                category.name,
                style: TextStyles.font12MadaRegularBlack,
              )
            ],
          ),
        ),
      ),
    );
  }
}
