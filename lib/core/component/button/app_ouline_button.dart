import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class AppOulineButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final double? width;
  final double? height;
  final void Function()? onPressed;

  const AppOulineButton({
    super.key,
    required this.text,
    this.icon,
    this.width,
    this.height,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        child: icon == null
            ? Text(text,
                style: context.bodyLarge500Style
                    ?.copyWith(color: ThemeColor.lightBlack))
            : Row(
                mainAxisSize:
                    MainAxisSize.min, // giới hạn kích thước của button
                children: [
                  Icon(icon, color: ThemeColor.lightBlack),
                  const SizedBox(width: 7),
                  Text(text,
                      style: context.bodyLarge500Style
                          ?.copyWith(color: ThemeColor.lightBlack)),
                ],
              ),
      ),
    );
  }
}
