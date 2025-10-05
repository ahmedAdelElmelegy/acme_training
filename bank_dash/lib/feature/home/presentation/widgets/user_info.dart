import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1599566150163-29194dcaad36?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
        ),
        verticalSpace(12),
        Text(
          'John Doe',
          style: AppTextStyle.font12Regular.copyWith(color: ColorManager.black),
        ),

        Text(
          'CEO ',
          style: AppTextStyle.font12Regular.copyWith(
            color: ColorManager.grayDark,
          ),
        ),
      ],
    );
  }
}
