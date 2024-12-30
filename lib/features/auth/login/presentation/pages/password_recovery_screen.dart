import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/component/textFiled/auth_textFiled.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class PasswordRecoveryScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  PasswordRecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password Recovery', style: context.heading4Style),
              const SizedBox(height: 10),
              Text(
                  'Please enter the email you registered with to recover password',
                  style: context.bodyLarge500Style),
              const SizedBox(height: 70),
              AuthTextFiled(
                obscureText: false,
                controller: emailController,
                label: 'Email',
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 24),
              AppSolidButton(
                onPressed: () {
                  context.goNamed('check-email');
                },
                width: double.infinity,
                height: 52,
                text: 'Continue',
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
