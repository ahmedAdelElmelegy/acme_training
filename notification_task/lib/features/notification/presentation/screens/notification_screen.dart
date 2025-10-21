import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notification_task/core/helper/constants.dart';
import 'package:notification_task/core/theme/style.dart';
import 'package:notification_task/core/widgets/svg_icon.dart';
import 'package:notification_task/features/home/presentation/widgets/notification_list_view.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Row(
            children: [
              InkWell(
                onTap: () {
                  context.pop();
                },
                child: SvgIcon(path: AppIcons.arrowRight),
              ),
              const SizedBox(width: 8),
              Text(
                'notification'.tr(),
                style: AppTextStyle.font18Bold(context),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const NotificationListView(),
        ],
      ),
    );
  }
}
