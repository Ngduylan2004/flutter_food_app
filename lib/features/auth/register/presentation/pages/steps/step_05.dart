import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_ouline_button.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/auth/register/presentation/widgets/steps_acount/steps.dart';
import 'package:go_router/go_router.dart';

class Step05 extends StatelessWidget {
  const Step05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Steps(currentIndex: 5),
              const SizedBox(height: 16),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lastly, how skilled are\nyou in the kitchen?',
                        style: context.heading4Style,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'This will help us curate more recipe\nexperiences for you.',
                        style: context.body2XLargeStyle
                            ?.copyWith(color: ThemeColor.lightBlack),
                      ),
                      const SizedBox(height: 16),
                      const Wrap(
                        spacing: 8, // Khoảng cách giữa các phần tử
                        runSpacing: 8, // Khoảng cách giữa các dòng
                        alignment: WrapAlignment
                            .start, // Căn chỉnh các phần tử theo chiều ngang
                        children: [
                          AppOulineButton(
                            text: 'Beginner',
                            icon: Icons.check_circle_outline,
                          ),
                          AppOulineButton(
                            text: 'Intermediate',
                            icon: Icons.check_circle,
                          ),
                          AppOulineButton(
                            text: 'Advanced',
                            icon: Icons.check_circle,
                          ),
                        ],
                      ),
                    ]),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.goNamed('step-04');
                    },
                    child: const AppOulineButton(
                      width: 150,
                      height: 52,
                      text: 'Previous',
                    ),
                  ),
                  AppSolidButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: SizedBox(
                            width: 335,
                            height: 367,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/image/icons/susscecs.png',
                                    width: 123, height: 69),
                                Text(
                                  'Sign up successful!',
                                  style: context.heading5Style,
                                  textAlign: TextAlign.center, // Căn giữa text
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Your account has been created. Please wait a moment, we are preparing for you...',
                                  style: context.bodySmall500Style,
                                  textAlign: TextAlign.center, // Căn giữa text
                                ),
                                const SizedBox(height: 16),
                                AppSolidButton(
                                  width: 289,
                                  height: 52,
                                  onPressed: () {},
                                  text: 'Redirecting...',
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    width: 150,
                    height: 52,
                    text: 'Complete',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
