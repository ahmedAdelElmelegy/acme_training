import 'package:fitness_app/feature/get_started/presentation/screens/get_started_screen.dart';
import 'package:fitness_app/feature/home/presentation/screens/home_screen.dart';
import 'package:fitness_app/feature/home/presentation/screens/trending_course_detail_screen.dart';
import 'package:fitness_app/feature/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  // errorBuilder: ,
  // redirect: (context, state) => ,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return GetStartedScreen();
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
                return HomeScreen();
              },
              routes: [
                GoRoute(
                  path: 'trending_course_detail',
                  builder: (BuildContext context, GoRouterState state) {
                    return TrendingCourseDetailScreen();
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
