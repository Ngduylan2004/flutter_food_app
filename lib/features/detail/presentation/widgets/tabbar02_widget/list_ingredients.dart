import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class ListIngredients extends StatelessWidget {
  final String title;
  final String weight;
  const ListIngredients({super.key, required this.title, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.check_box_outline_blank,
                color: ThemeColor.lightGray),
            const SizedBox(width: 10),
            Text(
              title,
              style: context.bodyLarge500Style?.copyWith(
                color: ThemeColor.black,
              ),
            ),
          ],
        ),
        Text(
          weight,
          style: context.bodyRegular500Style,
        )
      ],
    );
  }
}
