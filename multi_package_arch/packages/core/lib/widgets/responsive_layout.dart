// import 'package:flutter/material.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        if (width < tabletBreakpoint) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            builder: (context, child) => mobile(context),
          );
        } else if (width < desktopBreakpoint) {
          return ScreenUtilInit(
            designSize: const Size(768, 1024),
            builder: (context, child) => tablet(context),
          );
        } else {
          return ScreenUtilInit(
            designSize: const Size(1920, 1080),
            builder: (context, child) => desktop(context),
          );
        }
      },
    );
  }
}
