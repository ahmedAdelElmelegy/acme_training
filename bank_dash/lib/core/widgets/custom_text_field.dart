import 'package:bank_dash/core/helper/constants.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.font12Regular,

      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8),
        fillColor: ColorManager.grayLight2,
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgIcon(path: AppIcons.search),
        ),
        hintText: 'Search for something',
        hintStyle: AppTextStyle.font12Regular,
        prefixIconColor: ColorManager.grayDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
