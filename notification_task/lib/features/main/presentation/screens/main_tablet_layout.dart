import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notification_task/core/theme/colors.dart';
import 'package:notification_task/features/home/presentation/manager/get_notification/notification_cubit.dart';
import 'package:notification_task/features/home/presentation/widgets/header.dart';
import 'package:notification_task/features/home/presentation/widgets/notification_pop_up.dart';
import 'package:notification_task/features/main/presentation/widgets/fotter.dart';

class MainTabletLayout extends StatefulWidget {
  final Widget child;
  const MainTabletLayout({super.key, required this.child});

  @override
  State<MainTabletLayout> createState() => _MainTabletLayoutState();
}

class _MainTabletLayoutState extends State<MainTabletLayout> {
  @override
  Widget build(BuildContext context) {
    final notificationCubit = context.watch<NotificationCubit>();
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Stack(
        alignment: Alignment.topLeft,
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Header(
                  isTablet: true,
                  onIndexChange: (index) {
                    switch (index) {
                      case 0:
                        context.go('/home');
                        break;
                      case 1:
                        context.go('/services');
                        break;
                      case 2:
                        context.go('/about');
                        break;
                      case 3:
                        context.go('/contact');
                        break;
                    }
                  },
                ),

                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height,
                    ),
                    child: widget.child,
                  ),
                ),

                const Footer(),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: 95,
            left: 20,
            width: notificationCubit.isNotificationWebViewOpen ? 400 : 0,

            child: NotificationPopup(),
          ),
        ],
      ),
    );
  }
}
