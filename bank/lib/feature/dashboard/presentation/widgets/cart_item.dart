import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final bool isMobile;
  final bool isSelected;
  const CartItem({super.key, this.isSelected = false, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: isSelected ? ColorManager.primary : ColorManager.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Balance',
                            style: AppTextStyle.font12Regular(context).copyWith(
                              color: isSelected ? Colors.white : Colors.grey,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$5,756',
                            style: AppTextStyle.font16Semibold(context)
                                .copyWith(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      AppImages.card,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ],
                ),
                isMobile ? SizedBox(height: 23) : SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CARD HOLDER',
                            style: AppTextStyle.font10Regular(context).copyWith(
                              color: isSelected ? Colors.white : Colors.grey,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Eddy Cusuma',
                            style: AppTextStyle.font13Bold(context).copyWith(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VALID THRU',
                          style: AppTextStyle.font10Regular(context).copyWith(
                            color: isSelected ? Colors.white : Colors.grey,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '12/22',
                          style: AppTextStyle.font13Bold(context).copyWith(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                if (!isMobile) SizedBox(height: 35),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),

              color: isSelected
                  ? ColorManager.primary.withValues(alpha: 0.8)
                  : ColorManager.white.withValues(alpha: 0.8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '3778 **** **** 1234',
                    style: AppTextStyle.font16Semibold(context).copyWith(
                      color: isSelected
                          ? ColorManager.white
                          : ColorManager.black,
                    ),
                  ),
                ),
                Image.asset(
                  AppImages.card2,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
