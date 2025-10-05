import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String path;
  final Color color;
  const CustomIcon({super.key, required this.path, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: ColorManager.grayLight2,
      child: SvgIcon(path: path, width: 18, height: 18, color: color),
    );
  }
}
