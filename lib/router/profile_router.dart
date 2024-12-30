import 'package:flutter/material.dart';
import 'package:food_order_app/features/profile/presentation/pages/profile_screen.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> profile_router = [
  GoRoute(
    path: '/profile',
    name: 'profile',
    builder: (BuildContext context, GoRouterState state) {
      return const ProfileScreen();
    },
  ),
];
