import 'package:flutter/material.dart';
import 'package:notification_task/core/utils/design_config.dart';

abstract class AppTextStyle {
  static String reg = 'TajawalRegular';
  static String meduim = 'TajawalMedium';
  static String bold = 'TajawalBold';

  // f16
  static TextStyle font16Meduim(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),

    fontFamily: meduim,
  );
  static TextStyle font18Bold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 18),

    fontFamily: bold,
  );
  // f16bold
  static TextStyle font16Bold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: bold,
  );
  // f14
  static TextStyle font14Meduim(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: meduim,
  );
  // f14bold
  static TextStyle font14Bold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: bold,
  );

  // f12
  static TextStyle font12Reg(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: reg,
  );
  // f12bold
  static TextStyle font12Bold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: bold,
  );
  // f12bold
  static TextStyle font12Meduim(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 12),

    fontFamily: meduim,
  );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
