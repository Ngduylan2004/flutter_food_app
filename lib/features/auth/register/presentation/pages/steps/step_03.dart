import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_ouline_button.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/auth/register/presentation/widgets/steps_acount/steps.dart';
import 'package:go_router/go_router.dart';

class Step03 extends StatelessWidget {
  const Step03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            children: [
              const Steps(currentIndex: 3),
              const SizedBox(height: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Do you have any dietary\nrestrictions?',
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
                      spacing: 3, // Khoảng cách giữa các phần tử
                      runSpacing: 8, // Khoảng cách giữa các dòng
                      alignment: WrapAlignment
                          .start, // Căn chỉnh các phần tử theo chiều ngang
                      children: [
                        const AppOulineButton(text: 'None'),
                        const AppOulineButton(text: 'Vegan'),
                        const AppOulineButton(text: 'Vegetarian'),
                        const AppOulineButton(text: 'Gluten-Free'),
                        const AppOulineButton(text: 'Halal'),
                        const AppOulineButton(text: 'Kosher'),
                        const AppOulineButton(text: 'Keto'),
                        const AppOulineButton(text: 'Paleo'),
                        const AppOulineButton(text: 'Pescatarian'),
                        const AppOulineButton(text: 'Primal'),
                        const AppOulineButton(text: 'Vegan'),
                      ].map((button) {
                        return IntrinsicWidth(
                          child: button,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.goNamed('step-02');
                    },
                    child: const AppOulineButton(
                      width: 150,
                      height: 52,
                      text: 'Previous',
                    ),
                  ),
                  AppSolidButton(
                    onPressed: () {
                      context.goNamed('step-04');
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
