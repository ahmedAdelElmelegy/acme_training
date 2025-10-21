import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:notification_task/features/home/data/models/notification/body/notification_request_body.dart';
import 'package:notification_task/features/home/presentation/manager/get_notification/notification_cubit.dart';
import 'package:notification_task/features/home/presentation/widgets/custom_divider.dart';
import 'package:notification_task/features/home/presentation/widgets/notification_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NotificationListView extends StatefulWidget {
  const NotificationListView({super.key});

  @override
  State<NotificationListView> createState() => _NotificationListViewState();
}

class _NotificationListViewState extends State<NotificationListView> {
  @override
  void initState() {
    super.initState();
    _initData();
  }

  Future<void> _initData() async {
    final userId = dotenv.env['USER_ID'];
    if (userId != null) {
      context.read<NotificationCubit>().fetchNotifications(
        NotificationRequestBody(userId: userId, isRead: 1, limit: 2, offset: 0),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
          final cubit = context.read<NotificationCubit>();
          return Skeletonizer(
            enabled: state is NotificationLoading,
            child: ListView.separated(
              itemCount: cubit.notifications.length,
              separatorBuilder: (context, index) {
                return const CustomDivider();
              },
              itemBuilder: (context, index) {
                return NotificationItem(
                  notification: cubit.notifications[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
