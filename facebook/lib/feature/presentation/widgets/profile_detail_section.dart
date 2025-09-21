import 'package:facebook/core/helper/spacing.dart';
import 'package:facebook/core/style/colors.dart';
import 'package:facebook/feature/presentation/widgets/custom_btn.dart';
import 'package:facebook/feature/presentation/widgets/profile_actions.dart';
import 'package:facebook/feature/presentation/widgets/profile_follower_numbers.dart';
import 'package:facebook/feature/presentation/widgets/profile_followers_image.dart';
import 'package:facebook/feature/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDetailSection extends StatelessWidget {
  const ProfileDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(children: [ProfileImage(isDesktop: true), horizontalSpace(16)]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed Adel',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp,
                  ),
                ),
                ProfileFollowerNumbers(isDesktop: true),
                verticalSpace(12),
                Row(
                  children: List.generate(5, (index) => ProfileFollowerImage()),
                ),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Custombtn(
                  isDesktop: true,
                  icon: Icons.analytics,
                  text: 'Professional dashboard',
                  textColor: Colors.white,
                  color: ColorManager.blue,
                ),
                horizontalSpace(4),
                Custombtn(
                  isDesktop: true,
                  text: 'Edit',
                  icon: Icons.edit,
                  color: ColorManager.grey,
                ),
              ],
            ),

            verticalSpace(12),
            Row(
              children: [
                Custombtn(
                  isDesktop: true,
                  text: 'Add to story',
                  icon: Icons.add,
                  color: ColorManager.grey,
                ),
                horizontalSpace(4),
                Custombtn(child: Icon(Icons.keyboard_arrow_down)),
              ],
            ),
            verticalSpace(16),
            Container(height: 1, color: Colors.grey),
            verticalSpace(20),
            SelectActionBtn(),
          ],
        ),
      ],
    );
  }
}

class SelectActionBtn extends StatefulWidget {
  const SelectActionBtn({super.key});

  @override
  State<SelectActionBtn> createState() => _SelectActionBtnState();
}

class _SelectActionBtnState extends State<SelectActionBtn> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: List.generate(
            5,
            (index) => InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: ProfileAction(isSelected: currentIndex == index),
            ),
          ),
        ),
        Custombtn(child: Icon(Icons.more_horiz)),
      ],
    );
  }
}
