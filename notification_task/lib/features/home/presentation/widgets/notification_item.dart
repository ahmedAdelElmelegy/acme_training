import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:notification_task/core/helper/constants.dart';
import 'package:notification_task/core/theme/colors.dart';
import 'package:notification_task/core/theme/style.dart';
import 'package:notification_task/core/widgets/svg_icon.dart';
import 'package:notification_task/features/home/domain/entity/notification_entity.dart';

class NotificationItem extends StatelessWidget {
  final NotificationEntity notification;
  const NotificationItem({super.key, required this.notification});

  String formatDateTimeArabic(DateTime dateTime) {
    return DateFormat('dd MMMM, yyyy • hh:mm a', 'ar').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorManager.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: ColorManager.primary,
            radius: 16,
            child: SvgIcon(
              path: AppIcons.message,
              width: 16,
              height: 16,
              color: ColorManager.white,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.nameEntity ?? '',
                  style: AppTextStyle.font14Bold(context),
                ),
                const SizedBox(height: 4),
                Text(
                  notification.messageEntity?.headerEntity ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.font12Meduim(
                    context,
                  ).copyWith(color: ColorManager.gray),
                ),
                const SizedBox(height: 8),
                Text(
                  formatDateTimeArabic(notification.createdAtEntity!),
                  style: AppTextStyle.font12Reg(
                    context,
                  ).copyWith(color: ColorManager.gray),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
