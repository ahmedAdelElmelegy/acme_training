import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification_task/features/home/presentation/widgets/custom_divider.dart';
import 'package:notification_task/features/home/presentation/widgets/notification_header.dart';
import 'package:notification_task/features/home/presentation/widgets/notification_list_view.dart';
import 'package:notification_task/features/home/presentation/manager/get_notification/notification_cubit.dart';

class NotificationPopup extends StatelessWidget {
  const NotificationPopup({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationCubit = context.watch<NotificationCubit>();
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 250),
      opacity: notificationCubit.isNotificationWebViewOpen ? 1 : 0,
      child: notificationCubit.isNotificationWebViewOpen
          ? Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              shadowColor: Colors.black26,
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    NotificationHeader(
                      onNotificationIconTap: () {
                        notificationCubit.toggleNotificationWebView();
                      },
                    ),
                    const SizedBox(height: 8),
                    const CustomDivider(),
                    const SizedBox(height: 8),
                    NotificationListView(),
                  ],
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
