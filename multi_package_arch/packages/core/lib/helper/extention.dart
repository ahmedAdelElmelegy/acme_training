import 'package:category/category.dart';
import 'package:core/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/presentation/pages/home_screen.dart';
import 'package:mains/main_screen.dart';
import 'package:map/map.dart';
import 'package:setting/settings.dart';
import 'package:splash/presentation/pages/splash_screen.dart';
import 'package:product/presentation/page/product_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ResponsiveLayout(
          mobile: (context) => const SplashScreen(),
          tablet: (context) => const SplashScreen(),
          desktop: (context) => const SplashScreen(),
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
                return const HomeScreen();
              },
            ),
            GoRoute(
              path: 'category',
              builder: (BuildContext context, GoRouterState state) {
                return const CategoryScreen();
              },
              routes: [
                GoRoute(
                  path: 'product',
                  builder: (BuildContext context, GoRouterState state) {
                    return const ProductScreen();
                  },
                ),
              ],
            ),
            GoRoute(
              path: 'map',
              builder: (BuildContext context, GoRouterState state) {
                return const MapScreen();
              },
            ),
            GoRoute(
              path: 'setting',
              builder: (BuildContext context, GoRouterState state) {
                return const SettingScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
