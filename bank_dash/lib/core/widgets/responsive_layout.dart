import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Function(BuildContext context) mobile;
  final Widget Function(BuildContext context) tablet;
  final Widget Function(BuildContext context) desktop;

  final double tabletBreakpoint;
  final double desktopBreakpoint;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    this.tabletBreakpoint = 700,
    this.desktopBreakpoint = 1270,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;

            if (width < tabletBreakpoint) {
              return ScreenUtilInit(
                useInheritedMediaQuery: true,
                splitScreenMode: true,
                designSize: orientation == Orientation.portrait
                    ? const Size(375, 812) // الوضع الطولي
                    : const Size(812, 375), // الوضع العرضي
                builder: (context, child) => mobile(context),
              );
            } else if (width < desktopBreakpoint) {
              // تابلت
              return ScreenUtilInit(
                useInheritedMediaQuery: true,
                splitScreenMode: true,
                designSize: orientation == Orientation.portrait
                    ? const Size(768, 1024)
                    : const Size(1024, 768),
                builder: (context, child) => tablet(context),
              );
            } else {
              // ديسكتوب
              return ScreenUtilInit(
                useInheritedMediaQuery: true,
                splitScreenMode: true,
                designSize: const Size(1920, 1080),
                builder: (context, child) => desktop(context),
              );
            }
          },
        );
      },
    );
  }
}
