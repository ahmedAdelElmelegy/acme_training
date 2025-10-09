import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:fitness_app/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(AppImage.started, fit: BoxFit.cover),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorManager.black.withValues(alpha: 0.1),
                  ColorManager.black.withValues(alpha: 0.55),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.w),
            child: Column(
              children: [
                Spacer(),
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
                  child: Text('Get Started', style: AppTextStyle.f16BoldWhite),
                  onPressed: () {
                    context.pushReplacement('/main');
                    // context.go('/main');
                  },
                ),
                verticalSpace(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * .45,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,

                        child: Text(
                          'Already have account?',
                          style: AppTextStyle.f16MediumWhite,
                          maxLines: 1,
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
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
        ],
      ),
    );
  }
}
