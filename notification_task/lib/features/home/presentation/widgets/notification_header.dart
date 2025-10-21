import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:notification_task/core/theme/style.dart';

class NotificationHeader extends StatelessWidget {
  final Function() onNotificationIconTap;
  const NotificationHeader({super.key, required this.onNotificationIconTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("notification".tr(), style: AppTextStyle.font16Bold(context)),
        const Spacer(),
        InkWell(onTap: onNotificationIconTap, child: const Icon(Icons.close)),
      ],
    );
  }
}
