import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class Steps extends StatelessWidget {
  final int currentIndex;

  const Steps({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: List.generate(5, (index) {
            final stepNumber = index + 1;
            final isActive = stepNumber == currentIndex;

            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive ? ThemeColor.primary : ThemeColor.white,
                  border: Border.all(
                    color:
                        isActive ? ThemeColor.primary : ThemeColor.lightBlack,
                  ),
                ),
                child: Center(
                  child: Text(
                    stepNumber.toString(), // Hiển thị số bước
                    style: TextStyle(
                      fontSize: 14,
                      color:
                          isActive ? ThemeColor.white : ThemeColor.lightBlack,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        InkWell(
          onTap: () {
            context.goNamed('login');
          },
          child: Text(
            'Skip',
            style: context.bodyLarge500Style?.copyWith(color: ThemeColor.red),
          ),
        ),
      ],
    );
  }
}
