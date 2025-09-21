import 'package:facebook/core/helper/constants.dart';
import 'package:facebook/feature/presentation/widgets/camera_icon.dart';
import 'package:facebook/feature/presentation/widgets/profile_detail_section.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Container()),
          Expanded(flex: 5, child: Desktop()),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(AppImage.cover),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16.h,
                    right: 16.w,
                    child: CameraIcon(isDesktop: true),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -50),
              child: ProfileDetailSection(),
            ),
          ],
        ),
      ),
    );
  }
}
