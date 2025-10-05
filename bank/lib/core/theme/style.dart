import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/utils/design_config.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static String urRegular = 'UrbanistRegular';
  static String urMedium = 'UrbanistMedium';
  static String urBold = 'UrbanistBold';
  static String urSemiBold = 'UrbanistSemiBold';

  // static TextStyle styleRegular16(context) {
  //   return TextStyle(
  //     color: const Color(0xFF064060),
  //     fontSize: getResponsiveFontSize(context, fontSize: 16),
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w400,
  //   );
  // }

  static TextStyle font25Bold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 25),
    fontWeight: FontWeight.bold,
    fontFamily: urBold,
  );
  static TextStyle font18Medium(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: urBold,
  );
  static TextStyle font20Bold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontWeight: FontWeight.bold,
    fontFamily: urBold,
  );
  static TextStyle font12Regular(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontWeight: FontWeight.w400,
    color: ColorManager.grayDark,
    fontFamily: urRegular,
  );
  static TextStyle font16Semibold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontWeight: FontWeight.w600,
    fontFamily: urSemiBold,
  );
  static TextStyle font16Regular(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    color: ColorManager.grayDark,
    fontFamily: urRegular,
  );
  // 14 bold
  static TextStyle font13Bold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 13),
    fontWeight: FontWeight.bold,
    fontFamily: urBold,
  );
  // 10
  static TextStyle font10Regular(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 10),
    color: ColorManager.grayDark,
    fontFamily: urRegular,
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
