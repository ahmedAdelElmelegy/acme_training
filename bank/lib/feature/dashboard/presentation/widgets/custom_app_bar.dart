import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.scaffoldKey,
    required this.title,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(Icons.menu, size: 24),
        ),
        Text(title, style: AppTextStyle.font20Bold(context)),
        CircleAvatar(
          radius: 20,
          backgroundColor: ColorManager.grayLight2,
          backgroundImage: AssetImage(AppImages.avatar),
        ),
      ],
    );
  }
}
