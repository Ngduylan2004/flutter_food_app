// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class AppSolidButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final double? height;
  final double? width;

  final void Function()? onPressed;

  const AppSolidButton({
    super.key,
    this.text,
    this.icon,
    this.height,
    this.width,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColor.primary,
        ),
        onPressed: onPressed,
        child: icon == null
            ? Text(text ?? '',
                style: context.bodyLarge500Style
                    ?.copyWith(color: ThemeColor.white))
            : Row(
                children: [
                  Text(text ?? '',
                      style: context.bodyLarge500Style
                          ?.copyWith(color: ThemeColor.white)),
                  Icon(icon, color: ThemeColor.white),
                ],
              ),
      ),
    );
  }
}
