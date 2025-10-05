import 'package:bootstrap_rask/core/theme/colors.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  static TextStyle font25Bold = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font18Medium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font12Regular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorManager.grayDark,
  );
  static TextStyle font16Semibold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font16Regular = TextStyle(
    fontSize: 16,
    color: ColorManager.grayDark,
  );
  // 14 bold
  static TextStyle font13Bold = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );
  // 10
  static TextStyle font10Regular = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: ColorManager.grayDark,
  );
  //
}
