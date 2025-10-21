import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notification_task/core/theme/colors.dart';
import 'package:notification_task/features/home/presentation/manager/get_notification/notification_cubit.dart';
import 'package:notification_task/features/home/presentation/widgets/custom_drawer.dart';
import 'package:notification_task/features/home/presentation/widgets/notification_pop_up.dart';
import 'package:notification_task/features/main/presentation/widgets/fotter.dart';

class MainMobileLayout extends StatefulWidget {
  final Widget child;
  const MainMobileLayout({super.key, required this.child});

  @override
  State<MainMobileLayout> createState() => _MainMobileLayoutState();
}

class _MainMobileLayoutState extends State<MainMobileLayout> {
  int currentIndex = 0;
  bool isVisible = false;
  @override
  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.width.toString());
    final notificationCubit = context.watch<NotificationCubit>();
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<NotificationCubit, NotificationState>(
            builder: (context, state) {
              return Stack(
                children: [
                  Column(
                    children: [
                      CustomDrawer(
                        onNotificationIconTap:
                            notificationCubit.toggleNotificationWebView,
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
                      const SizedBox(height: 30),
                      Footer(),
                    ],
                  ),

                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 300),
                    top: 95,
                    left: 20,
                    width: notificationCubit.isNotificationWebViewOpen
                        ? 250
                        : 0,

                    child: NotificationPopup(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
