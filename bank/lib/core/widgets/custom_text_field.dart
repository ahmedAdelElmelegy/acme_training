import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.font12Regular(context),

      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),

        fillColor: ColorManager.grayLight2,
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SvgIcon(path: AppIcons.search),
        ),
        hintText: 'Search for something',
        hintStyle: AppTextStyle.font12Regular(context),

        prefixIconColor: ColorManager.grayDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
