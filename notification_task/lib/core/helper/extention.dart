import 'package:go_router/go_router.dart';
import 'package:notification_task/core/widgets/adaptive_layout.dart';
import 'package:notification_task/features/about/presentation/screens/about_screen.dart';
import 'package:notification_task/features/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:notification_task/features/home/presentation/screens/home_desktop_screen.dart';
import 'package:notification_task/features/home/presentation/screens/home_mobile_screen.dart';
import 'package:notification_task/features/home/presentation/screens/home_tablet_screen.dart';
import 'package:notification_task/features/main/presentation/screens/main_desktop_layout.dart';
import 'package:notification_task/features/main/presentation/screens/main_mobile_layout.dart';
import 'package:notification_task/features/main/presentation/screens/main_tablet_layout.dart';
import 'package:notification_task/features/services/presentation/screens/services_screen.dart';

// final isLogin = false;

final GoRouter router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return AdaptiveLayout(
          mobilelayout: (context) => MainMobileLayout(child: child),
          desktopLayout: (context) => MainDesktopLayout(child: child),
          tabletLayout: (context) => MainTabletLayout(child: child),
        );
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => AdaptiveLayout(
            mobilelayout: (context) => HomeMobileScreen(),
            desktopLayout: (context) => HomeDesktopScreen(),
            tabletLayout: (context) => HomeTabletScreen(),
          ),
        ),
        GoRoute(
          path: '/services',
          builder: (context, state) => const ServicesScreen(),
        ),
        GoRoute(
          path: '/about',
          builder: (context, state) => const AboutScreen(),
        ),
        GoRoute(
          path: '/contact',
          builder: (context, state) => const ContactUsScreen(),
        ),
      ],
    ),
  ],
  initialLocation: '/home',
);

// state.pathParameters["name"]!
