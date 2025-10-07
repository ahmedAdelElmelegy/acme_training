import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GetStartedTabletScreen extends StatelessWidget {
  const GetStartedTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Row(
        children: [
          Expanded(child: Image.asset(AppImage.started, fit: BoxFit.fill)),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Spacer(),
                  Text(
                    'Meet Our Expert Instructors',
                    style: AppTextStyle.f24BoldWhite,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(16),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Learn with fitness experts, at your own pace, and 100% updated content.',
                      style: AppTextStyle.f16MediumWhite,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  verticalSpace(25),
                  CustomBtn(
                    child: Text(
                      'Get Started',
                      style: AppTextStyle.f16BoldWhite,
                    ),
                    onPressed: () {
                      GoRouter.of(context).pushReplacement('/main');
                    },
                  ),
                  verticalSpace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have account?',
                        style: AppTextStyle.f16MediumWhite,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(width: 5.w),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Log in',
                          style: AppTextStyle.f16MediumWhite.copyWith(
                            color: ColorManager.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(36),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
