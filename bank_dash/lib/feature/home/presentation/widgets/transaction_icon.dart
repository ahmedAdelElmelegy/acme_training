import 'package:bank_dash/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionIcon extends StatelessWidget {
  final String path;
  final Color color;
  const TransactionIcon({super.key, required this.path, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 27,
      backgroundColor: color.withValues(alpha: .2),
      child: SvgIcon(path: path, width: 28.sp, height: 28.sp, color: color),
    );
  }
}
