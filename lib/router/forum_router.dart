import 'package:flutter/material.dart';
import 'package:food_order_app/features/forum/presentation/pages/challenges_screen.dart';
import 'package:food_order_app/features/forum/presentation/pages/featured_topic_screen.dart';
import 'package:food_order_app/features/forum/presentation/pages/forum_screen.dart';
import 'package:food_order_app/features/forum/presentation/pages/group_child_screen.dart';
import 'package:food_order_app/features/forum/presentation/pages/group_screen.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> forum_router = [
  GoRoute(
    path: '/forum',
    name: 'forum',
    builder: (BuildContext context, GoRouterState state) {
      return const ForumScreen();
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/forum/topic',
        name: 'topic',
        builder: (BuildContext context, GoRouterState state) {
          return const FeaturedTopicScreen();
        },
      ),
      GoRoute(
        path: '/forum/challenge',
        name: 'challenge',
        builder: (BuildContext context, GoRouterState state) {
          return const ChallengesScreen();
        },
      ),
      GoRoute(
        path: '/forum/group',
        name: 'group',
        builder: (BuildContext context, GoRouterState state) {
          return const GroupScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/forum/group/group-child',
            name: 'group-child',
            builder: (BuildContext context, GoRouterState state) {
              return const GroupChildScreen();
            },
          )
        ],
      )
    ],
  ),
];
