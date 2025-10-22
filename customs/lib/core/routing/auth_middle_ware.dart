import 'package:customs/core/helper/extention.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthService {
  static bool isAuthenticated = false;
  static bool hasSeenOnboarding = false;
  static bool hasSeenSplash = false;
}

class AuthMiddleware {
  static String? redirect(BuildContext context, GoRouterState state) {
    final currentLocation = state.matchedLocation;
    // final location = state.matchedLocation;

    final isGoingToSplash = currentLocation == '/';
    final isGoingToHome = currentLocation == '/home';
    final isGoingToLogin = currentLocation == '/login';

    debugPrint('Redirect triggered: $currentLocation');
    debugPrint('Auth status: ${AuthService.isAuthenticated}');

    if (isGoingToSplash && !AuthService.hasSeenSplash) {
      AuthService.hasSeenSplash = true;
      return null;
    }
    if (isGoingToSplash && AuthService.hasSeenSplash) {
      return '/home';
    }
    // if auth
    if (AuthService.isAuthenticated && isGoingToLogin) {
      return '/home';
    }
    // if not auth
    if (!AuthService.isAuthenticated && isGoingToHome) {
      return '/login';
    }

    return null;
  }
}
