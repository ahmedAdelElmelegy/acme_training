import 'package:fitness_app/core/widgets/responsive_layout.dart';
import 'package:fitness_app/feature/get_started/presentation/screens/get_started_screen.dart';
import 'package:fitness_app/feature/get_started/presentation/screens/get_started_tablet_screen.dart';
import 'package:fitness_app/feature/home/presentation/screens/home_mobile_screen.dart';
import 'package:fitness_app/feature/home/presentation/screens/trending_cource_detail_tablet.dart';
import 'package:fitness_app/feature/home/presentation/screens/trending_course_detail_screen.dart';
import 'package:fitness_app/feature/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ResponsiveLayout(
          mobile: (context) => const GetStartedScreen(),
          tablet: (context) => const GetStartedTabletScreen(),
          desktop: (context) => const GetStartedScreen(),
        );
      },
      routes: [
        GoRoute(
          path: 'main',
          builder: (BuildContext context, GoRouterState state) {
            return MainScreen();
          },
          routes: [
            GoRoute(
              path: 'home',
              builder: (BuildContext context, GoRouterState state) {
                return const HomeMobileScreen();
              },
              routes: [
                GoRoute(
                  path: 'trending_course_detail',
                  builder: (BuildContext context, GoRouterState state) {
                    return ResponsiveLayout(
                      mobile: (context) => const TrendingCourseDetailScreen(),
                      tablet: (context) =>
                          const TrendingCourseDetailTabletScreen(),
                      desktop: (context) => Container(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
