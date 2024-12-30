import 'package:flutter/material.dart';
import 'package:food_order_app/features/home/presentation/pages/home_screen.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> home_router = [
  GoRoute(
    path: '/home',
    name: 'home',
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen();
    },
  ),
];
