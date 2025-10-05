import 'package:bank_dash/core/theme/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyle {
  static TextStyle font25Bold = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font18Medium = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font20Bold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font12Regular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorManager.grayDark,
  );
  static TextStyle font16Semibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font16Regular = TextStyle(
    fontSize: 16.sp,
    color: ColorManager.grayDark,
  );
  // 14 bold
  static TextStyle font13Bold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
  );
  // 10
  static TextStyle font10Regular = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: ColorManager.grayDark,
  );
  //
}
