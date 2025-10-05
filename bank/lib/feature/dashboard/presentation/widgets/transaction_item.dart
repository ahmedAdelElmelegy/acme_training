import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/transaction_icon.dart';
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
                SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deposit',
                        style: AppTextStyle.font16Semibold(
                          context,
                        ).copyWith(color: ColorManager.black),
                      ),

                      Text(
                        '28 January 2021',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.font16Regular(
                          context,
                        ).copyWith(color: ColorManager.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            '-\$850',
            style: AppTextStyle.font16Semibold(
              context,
            ).copyWith(color: ColorManager.red),
          ),
        ],
      ),
    );
  }
}
