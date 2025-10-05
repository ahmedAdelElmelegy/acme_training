import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:flutter/material.dart';

class RecentTransactionBtn extends StatelessWidget {
  final String textst;
  final bool? isSelected;
  const RecentTransactionBtn({
    super.key,
    required this.textst,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isMobile = width < 800;

    return Padding(
      padding: EdgeInsets.only(right: isMobile ? width * 0.04 : 40),
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              textst,
              style: AppTextStyle.font16Semibold(context).copyWith(
                color: isSelected == true
                    ? ColorManager.primary
                    : ColorManager.gray,
              ),
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
