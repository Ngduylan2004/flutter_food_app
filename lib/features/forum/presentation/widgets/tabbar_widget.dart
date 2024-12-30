import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class TabbarWidget extends StatelessWidget {
  final String text;
  final Function ontap;
  final bool isActive;
  const TabbarWidget(
      {super.key,
      required this.text,
      required this.ontap,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isActive ? ThemeColor.primary : ThemeColor.lightGray,
            padding: const EdgeInsets.all(0),
          ),
          onPressed: () => ontap(),
          child: Text(
            text,
            style: context.bodyRegular500Style?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
