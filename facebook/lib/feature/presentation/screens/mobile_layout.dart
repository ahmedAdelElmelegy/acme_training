import 'package:facebook/core/helper/constants.dart';
import 'package:facebook/core/helper/spacing.dart';
import 'package:facebook/feature/presentation/widgets/camera_icon.dart';
import 'package:facebook/feature/presentation/widgets/profile_action_btn.dart';
import 'package:facebook/feature/presentation/widgets/profile_follower_numbers.dart';
import 'package:facebook/feature/presentation/widgets/profile_followers_image.dart';
import 'package:facebook/feature/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage(AppImage.cover),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(bottom: 16, right: 16, child: CameraIcon()),
                Positioned(top: 100, child: ProfileImage()),
              ],
            ),
            verticalSpace(35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Ahmed Adel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      horizontalSpace(4),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                  verticalSpace(8),
                  ProfileFollowerNumbers(),
                  verticalSpace(12),
                  Row(
                    children: List.generate(
                      5,
                      (index) => ProfileFollowerImage(),
                    ),
                  ),
                  verticalSpace(12),
                  Text(
                    'description ' * 10,
                    softWrap: true,
                    style: TextStyle(fontSize: 14.sp),
                  ),

                  verticalSpace(12),
                  ProfileActionBtn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// E3E4E9
