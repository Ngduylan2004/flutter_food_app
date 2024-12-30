import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class BtnWidget extends StatelessWidget {
  final String icon;
  final String title;
  final String content;
  const BtnWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 61,
      decoration: BoxDecoration(
        color: const Color(0xFFF85657).withOpacity(0.12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  icon,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 6),
                Text(
                  title,
                  style: context.bodyRegular500Style?.copyWith(
                    color: ThemeColor.red,
                  ),
                ),
              ],
            ),
            Text(
              content,
              style: context.bodySmall500Style?.copyWith(
                color: ThemeColor.lightBlack,
              ),
            )
          ],
        ),
      ),
    );
  }
}
