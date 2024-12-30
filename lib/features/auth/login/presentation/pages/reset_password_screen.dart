import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/component/textFiled/auth_textFiled.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/auth/login/presentation/widgets/reset_widget/reset_widget.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();
  ResetPasswordScreen({super.key});

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
              Text('Reset Password', style: context.heading4Style),
              const SizedBox(height: 10),
              Text(
                  'Please enter the email you registered with to recover password',
                  style: context.bodyLarge500Style),
              const SizedBox(height: 24),
              AuthTextFiled(
                obscureText: true,
                controller: passwordController,
                label: 'Password',
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 24),
              const ResetWidget(),
              const SizedBox(height: 10),
              const ResetWidget(),
              const SizedBox(height: 10),
              const ResetWidget(),
              const SizedBox(height: 24),
              AppSolidButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      backgroundColor: ThemeColor.white,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 367,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/image/icons/susscecs.png',
                                  width: 123, height: 69),
                              Text(
                                'Password reset successful!',
                                style: context.heading5Style,
                                textAlign: TextAlign.center, // Căn giữa text
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Your password has been successfully changed.',
                                style: context.bodySmall500Style,
                                textAlign: TextAlign.center, // Căn giữa text
                              ),
                              const SizedBox(height: 16),
                              AppSolidButton(
                                width: 289,
                                height: 52,
                                onPressed: () {
                                  context.goNamed('login');
                                },
                                text: 'SignIn',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                width: double.infinity,
                height: 52,
                text: 'Done',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
