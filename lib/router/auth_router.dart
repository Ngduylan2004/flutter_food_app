import 'package:flutter/material.dart';
import 'package:food_order_app/features/auth/login/presentation/pages/check_email_screen.dart';
import 'package:food_order_app/features/auth/login/presentation/pages/login_screen.dart';
import 'package:food_order_app/features/auth/login/presentation/pages/password_recovery_screen.dart';
import 'package:food_order_app/features/auth/login/presentation/pages/reset_password_screen.dart';
import 'package:food_order_app/features/auth/register/presentation/pages/register_screen.dart';
import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_01.dart';
import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_02.dart';
import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_03.dart';
import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_04.dart';
import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_05.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> auth_router = [
  GoRoute(
    path: '/register',
    name: 'register',
    builder: (BuildContext context, GoRouterState state) {
      return const RegisterScreen();
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/register/step-01',
        name: 'step-01',
        builder: (BuildContext context, GoRouterState state) {
          return const Step01();
        },
      ),
      GoRoute(
        path: '/register/step-02',
        name: 'step-02',
        builder: (BuildContext context, GoRouterState state) {
          return const Step02();
        },
      ),
      GoRoute(
        path: '/register/step-03',
        name: 'step-03',
        builder: (BuildContext context, GoRouterState state) {
          return const Step03();
        },
      ),
      GoRoute(
        path: '/register/step-04',
        name: 'step-04',
        builder: (BuildContext context, GoRouterState state) {
          return const Step04();
        },
      ),
      GoRoute(
        path: '/register/step-05',
        name: 'step-05',
        builder: (BuildContext context, GoRouterState state) {
          return const Step05();
        },
      )
    ],
  ),
  GoRoute(
    path: '/login',
    name: 'login',
    builder: (BuildContext context, GoRouterState state) {
      return LoginScreen();
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/login/password-recovery',
        name: 'password-recovery',
        builder: (BuildContext context, GoRouterState state) {
          return PasswordRecoveryScreen();
        },
      ),
      GoRoute(
        path: '/login/check-email',
        name: 'check-email',
        builder: (BuildContext context, GoRouterState state) {
          return const CheckEmailScreen();
        },
      ),
      GoRoute(
        path: '/login/reset-password',
        name: 'reset-password',
        builder: (BuildContext context, GoRouterState state) {
          return ResetPasswordScreen();
        },
      )
    ],
  ),
];
