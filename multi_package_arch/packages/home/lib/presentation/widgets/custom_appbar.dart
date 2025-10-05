import 'package:core/helper/constants.dart';
import 'package:core/helper/spacing.dart';
import 'package:core/theme/styles.dart';
import 'package:core/widgets/svg_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/presentation/widgets/home_icon.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 72.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgIcon(
            Assets.logo,
            width: 32.w,
            height: 22.h,
          ),
          horizontalSpace(8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'hello',
                style: TextStyles.font12MadaRegularGray,
              ).tr(),
              Text(
                'name'.tr(),
                style: TextStyles.font16MadaSemiBoldBlack,
              ),
            ],
          ),
          const Spacer(),
          HomeIcon(
            icon: AppIcons.notificationIcon,
          ),
          horizontalSpace(8),
          HomeIcon(
            icon: AppIcons.cartIcon,
          ),
        ],
      ),
    );
  }
}
