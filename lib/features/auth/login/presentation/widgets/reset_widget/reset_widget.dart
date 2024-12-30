import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class ResetWidget extends StatelessWidget {
  const ResetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle,
          color: ThemeColor.primary,
        ),
        const SizedBox(width: 10),
        Text('At least 8 characters', style: context.bodySmall500Style),
      ],
    );
  }
}
