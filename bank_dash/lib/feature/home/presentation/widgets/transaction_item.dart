import 'package:bank_dash/core/helper/constants.dart';
import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/feature/home/presentation/widgets/transaction_icon.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final bool isMobile;
  const TransactionItem({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                TransactionIcon(
                  path: AppIcons.deposit,
                  color: ColorManager.orange,
                ),
                horizontalSpace(16),

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
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.font16Regular.copyWith(
                          color: ColorManager.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
