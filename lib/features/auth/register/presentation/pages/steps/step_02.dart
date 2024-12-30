import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_ouline_button.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/auth/register/presentation/widgets/steps_acount/steps.dart';
import 'package:go_router/go_router.dart';

class Step02 extends StatelessWidget {
  const Step02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Steps(currentIndex: 2),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Do you have any\nallergies or dislikes?',
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
                    Wrap(
                      spacing: 3, // Khoảng cách giữa các phần tử
                      runSpacing: 8, // Khoảng cách giữa các dòng
                      alignment: WrapAlignment
                          .start, // Căn chỉnh các phần tử theo chiều ngang
                      children: [
                        const AppOulineButton(text: 'Shrimp'),
                        const AppOulineButton(text: 'Carrot'),
                        const AppOulineButton(text: 'Mushroom'),
                        const AppOulineButton(text: 'Onion'),
                        const AppOulineButton(text: 'Bell Pepper'),
                        const AppOulineButton(text: 'Garlic'),
                        const AppOulineButton(text: 'Apple'),
                        const AppOulineButton(text: 'Eggplant'),
                      ].map((button) {
                        return IntrinsicWidth(
                          child: button,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context.goNamed('step-01');
                  },
                  child: const AppOulineButton(
                    width: 150,
                    height: 52,
                    text: 'Previous',
                  ),
                ),
                AppSolidButton(
                  onPressed: () {
                    context.goNamed('step-03');
                  },
                  width: 150,
                  height: 52,
                  text: 'Get Started',
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
