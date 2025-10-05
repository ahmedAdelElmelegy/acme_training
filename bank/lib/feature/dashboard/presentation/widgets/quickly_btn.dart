import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:flutter/material.dart';

class QuicklyBtn extends StatelessWidget {
  const QuicklyBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
            color: ColorManager.grayLight2,
          ),
          child: Text('525.50', style: AppTextStyle.font12Regular(context)),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            color: ColorManager.primary,
          ),
          child: Row(
            children: [
              Text(
                'Send',
                style: AppTextStyle.font12Regular(
                  context,
                ).copyWith(color: ColorManager.white),
              ),
              SizedBox(width: 8),
              Icon(Icons.send, size: 12, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
