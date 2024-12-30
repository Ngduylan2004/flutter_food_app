import 'package:flutter/material.dart';
import 'package:food_order_app/features/grocery/presentation/pages/grocery_screen.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> grocery_router = [
  GoRoute(
    path: '/grocery',
    name: 'grocery',
    builder: (BuildContext context, GoRouterState state) {
      return const GroceryScreen();
    },
  ),
];
