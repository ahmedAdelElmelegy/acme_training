import 'package:bank/core/theme/colors.dart';
import 'package:flutter/material.dart';

class RecentTransactionPagination extends StatelessWidget {
  const RecentTransactionPagination({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.arrow_back_ios, color: ColorManager.black),
            const SizedBox(width: 8),

            Text('Previous', style: TextStyle(color: ColorManager.black)),
          ],
        ),
        const SizedBox(width: 16),
        const Text(
          '1 - 10 of 100',
          style: TextStyle(color: ColorManager.primary),
        ),
        const SizedBox(width: 16),
        Row(
          children: [
            Text('Next', style: TextStyle(color: ColorManager.black)),
            const SizedBox(width: 8),
            Icon(Icons.arrow_forward_ios, color: ColorManager.black),
          ],
        ),
      ],
    );
  }
}
