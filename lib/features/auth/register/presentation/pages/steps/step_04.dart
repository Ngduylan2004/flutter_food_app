import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_ouline_button.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/auth/register/presentation/widgets/steps_acount/steps.dart';
import 'package:go_router/go_router.dart';

class Step04 extends StatelessWidget {
  const Step04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            children: [
              const Steps(currentIndex: 4),
              const SizedBox(height: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Types of cuisines  you\nmost interested in?',
                      style: context.heading4Style,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'This will help us curate more recipe experiences for you.',
                      style: context.body2XLargeStyle
                          ?.copyWith(color: ThemeColor.lightBlack),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8, // Khoảng cách giữa các phần tử
                      runSpacing: 8, // Khoảng cách giữa các dòng
                      alignment: WrapAlignment
                          .start, // Căn chỉnh các phần tử theo chiều ngang
                      children: [
                        const AppOulineButton(text: 'European'),
                        const AppOulineButton(text: 'African'),
                        const AppOulineButton(text: 'Asian'),
                        const AppOulineButton(text: 'Middle Eastern'),
                        const AppOulineButton(text: 'Latin America'),
                      ].map((button) {
                        return IntrinsicWidth(
                          child: button,
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.goNamed('step-03');
                    },
                    child: const AppOulineButton(
                      width: 150,
                      height: 52,
                      text: 'Previous',
                    ),
                  ),
                  AppSolidButton(
                    onPressed: () {
                      context.goNamed('step-05');
                    },
                    width: 150,
                    height: 52,
                    text: 'Get Started',
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
