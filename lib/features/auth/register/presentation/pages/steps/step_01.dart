import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_ouline_button.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/auth/register/presentation/widgets/steps_acount/steps.dart';
import 'package:go_router/go_router.dart';

class Step01 extends StatelessWidget {
  const Step01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            children: [
              const Steps(currentIndex: 1),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Whats your preferred ',
                          style: context.heading4Style,
                          children: [
                            TextSpan(
                              text: '\nlanguage for the app?',
                              style: context.heading4Style,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Select the language that youd prefer to use while exploring Recipe Passport.',
                        style: context.body2XLargeStyle
                            ?.copyWith(color: ThemeColor.lightBlack),
                      ),
                      const SizedBox(height: 24),
                      const Wrap(
                        spacing: 5, // Khoảng cách giữa các phần tử
                        runSpacing: 8, // Khoảng cách giữa các dòng
                        alignment: WrapAlignment
                            .start, // Căn chỉnh các phần tử theo chiều ngang
                        children: [
                          AppOulineButton(
                            text: 'English',
                            icon: Icons.check_circle_outline,
                          ),
                          AppOulineButton(
                            text: 'Spanish',
                            icon: Icons.check_circle,
                          ),
                          AppOulineButton(
                            text: 'French',
                            icon: Icons.check_circle,
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Others (Please Specify)',
                        style: context.bodyLarge500Style
                            ?.copyWith(color: ThemeColor.lightBlack),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 203,
                        height: 36,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: AppSolidButton(
                  onPressed: () {
                    context.goNamed('step-02');
                  },
                  width: double.infinity,
                  height: 52,
                  text: 'Next Step',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
