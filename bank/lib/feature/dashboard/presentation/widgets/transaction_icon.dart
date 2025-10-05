import 'package:bank/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class TransactionIcon extends StatelessWidget {
  final String path;
  final Color color;
  const TransactionIcon({super.key, required this.path, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 27,
      backgroundColor: color.withValues(alpha: .2),
      child: SvgIcon(path: path, width: 28, height: 28, color: color),
    );
  }
}
