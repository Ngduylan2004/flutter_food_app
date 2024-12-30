import 'package:flutter/material.dart';
import 'package:food_order_app/router/auth_router.dart';
import 'package:food_order_app/router/dashboard_router.dart';
import 'package:food_order_app/splash_screen.dart';
import 'package:go_router/go_router.dart';
// Thêm các import cho các router khác như grocery_router, explore_router, v.v.

final GoRouter app_router = GoRouter(
  initialLocation: '/', // Trang mặc định là SplashScreen
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen(); // Điều hướng đến SplashScreen
      },
    ),
    // Routes của Auth, Profile, Forum, Home, Dashboard, v.v.
    ...auth_router,
    ...dashboard_router,
  ],
);
