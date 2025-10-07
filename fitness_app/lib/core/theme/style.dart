import 'package:fitness_app/core/theme/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyle {
  static const reg = 'Satoshi';
  static const bold = 'SatoshiBold';
  static const medium = 'SatoshiMedium';
  // 24
  static TextStyle f24BoldWhite = TextStyle(
    fontFamily: bold,
    fontSize: 24.sp,
    color: ColorManager.white,
  );

  // 20
  static TextStyle f20BoldWhite = TextStyle(
    fontFamily: bold,
    fontSize: 20.sp,
    color: ColorManager.white,
  );
  // 16
  static TextStyle f16MediumWhite = TextStyle(
    fontFamily: medium,
    fontSize: 16.sp,

    color: ColorManager.white,
  );
  static TextStyle f16MediumBlack = TextStyle(
    fontFamily: medium,
    fontSize: 16.sp,
    color: ColorManager.black,
  );
  static TextStyle f16BoldWhite = TextStyle(
    fontFamily: bold,
    fontSize: 16.sp,
    color: ColorManager.white,
  );
  // 16black
  static TextStyle f16BoldBlack = TextStyle(
    fontFamily: bold,
    fontSize: 16.sp,
    color: ColorManager.black,
  );
  //14
  static TextStyle f14RegGray = TextStyle(
    fontFamily: reg,
    fontSize: 14.sp,
    color: ColorManager.gray,
  );
  static TextStyle f14MeduimBlack = TextStyle(
    fontFamily: medium,
    fontSize: 14.sp,
    color: ColorManager.black,
  );
  // 14bold
  static TextStyle f14BoldWhite = TextStyle(
    fontFamily: bold,
    fontSize: 14.sp,
    color: ColorManager.white,
  );
  // 12
  static TextStyle f12MeduimGray = TextStyle(
    fontFamily: medium,
    fontSize: 12.sp,
    color: ColorManager.gray,
  );
}
