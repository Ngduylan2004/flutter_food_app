// import 'package:flutter/material.dart';
// import 'package:food_order_app/bottom_navigator.dart';
// import 'package:food_order_app/features/auth/login/presentation/pages/check_email_screen.dart';
// import 'package:food_order_app/features/auth/login/presentation/pages/login_screen.dart';
// import 'package:food_order_app/features/auth/login/presentation/pages/password_recovery_screen.dart';
// import 'package:food_order_app/features/auth/login/presentation/pages/reset_password_screen.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/register_screen.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_01.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_02.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_03.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_04.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_05.dart';
// import 'package:food_order_app/features/detail/presentation/pages/image_detail.screen.dart';
// import 'package:food_order_app/features/detail/presentation/pages/repice_detail_screen.dart';
// import 'package:food_order_app/features/explore/presentation/pages/explore_screen.dart';
// import 'package:food_order_app/features/explore/presentation/pages/recipe_category_screen.dart';
// import 'package:food_order_app/features/explore/presentation/pages/sup_category_screen.dart';
// import 'package:food_order_app/features/forum/presentation/pages/challenges_screen.dart';
// import 'package:food_order_app/features/forum/presentation/pages/featured_topic_screen.dart';
// import 'package:food_order_app/features/forum/presentation/pages/forum_screen.dart';
// import 'package:food_order_app/features/forum/presentation/pages/group_child_screen.dart';
// import 'package:food_order_app/features/forum/presentation/pages/group_screen.dart';
// import 'package:food_order_app/features/home/presentation/pages/home_screen.dart';
// import 'package:food_order_app/splash_screen.dart';
// import 'package:go_router/go_router.dart';

// final GoRouter goRouter = GoRouter(
//   // debugLogDiagnostics: true,
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) {
//         return const SplashScreen();
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: 'register',
//           name: 'register',
//           builder: (BuildContext context, GoRouterState state) {
//             return const RegisterScreen();
//           },
//           routes: <RouteBase>[
//             GoRoute(
//               path: 'step-01',
//               name: 'step-01',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const Step01();
//               },
//             ),
//             GoRoute(
//               path: 'step-02',
//               name: 'step-02',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const Step02();
//               },
//             ),
//             GoRoute(
//               path: 'step-03',
//               name: 'step-03',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const Step03();
//               },
//             ),
//             GoRoute(
//               path: 'step-04',
//               name: 'step-04',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const Step04();
//               },
//             ),
//             GoRoute(
//               path: 'step-05',
//               name: 'step-05',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const Step05();
//               },
//             )
//           ],
//         ),
//         GoRoute(
//           path: 'login',
//           name: 'login',
//           builder: (BuildContext context, GoRouterState state) {
//             return LoginScreen();
//           },
//           routes: <RouteBase>[
//             GoRoute(
//               path: 'password-recovery',
//               name: 'password-recovery',
//               builder: (BuildContext context, GoRouterState state) {
//                 return PasswordRecoveryScreen();
//               },
//             ),
//             GoRoute(
//               path: 'check-email',
//               name: 'check-email',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const CheckEmailScreen();
//               },
//             ),
//             GoRoute(
//               path: 'reset-password',
//               name: 'reset-password',
//               builder: (BuildContext context, GoRouterState state) {
//                 return ResetPasswordScreen();
//               },
//             )
//           ],
//         ),
//         GoRoute(
//           path: 'bottom-navigator',
//           name: 'bottom-navigator',
//           builder: (BuildContext context, GoRouterState state) {
//             return const BottomNavigator();
//           },
//         ),
//         // GoRoute(
//         //   path: 'profile',
//         //   name: 'profile',
//         //   builder: (BuildContext context, GoRouterState state) {
//         //     return const BottomNavigator();
//         //   },
//         // ),
//         GoRoute(
//           path: 'explore',
//           name: 'explore',
//           builder: (BuildContext context, GoRouterState state) {
//             return ExploreScreen();
//           },
//           routes: <RouteBase>[
//             GoRoute(
//               path: 'category',
//               name: 'category',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const RecipeCategoryScreen();
//               },
//               routes: <RouteBase>[
//                 GoRoute(
//                   path: 'sup-category',
//                   name: 'sup-category',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return const SupCategoryScreen();
//                   },
//                   routes: <RouteBase>[
//                     GoRoute(
//                       path: 'recipe-detail',
//                       name: 'recipe-detail',
//                       builder: (BuildContext context, GoRouterState state) {
//                         return const RecipeDetailScreen();
//                       },
//                     ),
//                     GoRoute(
//                       path: 'image-detail',
//                       name: 'image-detail',
//                       builder: (BuildContext context, GoRouterState state) {
//                         return const ImageDetailScreen();
//                       },
//                     )
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//         GoRoute(
//           path: 'forum',
//           name: 'forum',
//           builder: (BuildContext context, GoRouterState state) {
//             return const ForumScreen();
//           },
//           routes: <RouteBase>[
//             GoRoute(
//               path: 'topic',
//               name: 'topic',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const FeaturedTopicScreen();
//               },
//             ),
//             GoRoute(
//               path: 'challenge',
//               name: 'challenge',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const ChallengesScreen();
//               },
//             ),
//             GoRoute(
//               path: 'group',
//               name: 'group',
//               builder: (BuildContext context, GoRouterState state) {
//                 return const GroupScreen();
//               },
//               routes: <RouteBase>[
//                 GoRoute(
//                   path: 'group-child',
//                   name: 'group-child',
//                   builder: (BuildContext context, GoRouterState state) {
//                     return const GroupChildScreen();
//                   },
//                 )
//               ],
//             )
//           ],
//         ),
//         GoRoute(
//           path: 'home',
//           name: 'home',
//           builder: (BuildContext context, GoRouterState state) {
//             return const HomeScreen();
//           },
//         )
//       ],
//     ),
//   ],
// );
