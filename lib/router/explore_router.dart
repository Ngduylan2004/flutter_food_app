import 'package:flutter/material.dart';
import 'package:food_order_app/features/explore/presentation/pages/explore_screen.dart';
import 'package:food_order_app/features/explore/presentation/pages/recipe_category_screen.dart';
import 'package:food_order_app/features/explore/presentation/pages/sup_category_screen.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> explore_router = [
  GoRoute(
    path: '/explore',
    name: 'explore',
    builder: (BuildContext context, GoRouterState state) {
      return ExploreScreen();
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/explore/category',
        name: 'category',
        builder: (BuildContext context, GoRouterState state) {
          return const RecipeCategoryScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/explore/category/sup-category',
            name: 'sup-category',
            builder: (BuildContext context, GoRouterState state) {
              return const SupCategoryScreen();
            },
            // routes: <RouteBase>[
            //   ...detail_router,
            // ],
          ),
        ],
      )
    ],
  ),
];
