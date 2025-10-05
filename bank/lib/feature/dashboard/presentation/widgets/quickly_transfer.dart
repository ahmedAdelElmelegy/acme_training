import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/quickly_btn.dart';
import 'package:bank/feature/dashboard/presentation/widgets/user_info.dart';
import 'package:flutter/material.dart';

class QuicklyTransfer extends StatelessWidget {
  const QuicklyTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Quick Transfer', style: AppTextStyle.font18Medium(context)),
        SizedBox(height: 16),
        Container(
          height: 220,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Wrap(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: UserInfo(),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Text(
                    'Write Amount',
                    style: AppTextStyle.font12Regular(context),
                  ),
                  SizedBox(width: 16),
                  const QuicklyBtn(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
