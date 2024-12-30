import 'package:food_order_app/bottom_navigator.dart'; // Import BottomNavigator
import 'package:food_order_app/router/detail_router.dart';
import 'package:food_order_app/router/explore_router.dart';
import 'package:food_order_app/router/forum_router.dart';
import 'package:food_order_app/router/grocery_router.dart';
import 'package:food_order_app/router/home_router.dart';
import 'package:food_order_app/router/profile_router.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> dashboard_router = [
  GoRoute(
    path: '/dashboard',
    name: 'dashboard',
    builder: (context, state) =>
        const BottomNavigator(), // BottomNavigator sẽ được hiển thị ở đây
    routes: <RouteBase>[
      ...home_router,
      ...grocery_router,
      ...explore_router,
      ...forum_router,
      ...profile_router,
      ...detail_router,
    ],
  ),
];
