import 'package:bootstrap_rask/core/helpers/constants.dart';
import 'package:bootstrap_rask/core/theme/colors.dart';
import 'package:bootstrap_rask/core/theme/style.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/transition_icon.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TransactionIcon(
                path: AppIcons.deposit,
                color: ColorManager.orange,
              ),
              SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deposit',
                      style: AppTextStyle.font16Semibold.copyWith(
                        color: ColorManager.black,
                      ),
                    ),

                    Text(
                      '28 January 2021',
                      style: AppTextStyle.font16Regular.copyWith(
                        color: ColorManager.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            '-\$850',
            style: AppTextStyle.font16Semibold.copyWith(
              color: ColorManager.red,
            ),
          ),
        ],
      ),
    );
  }
}
