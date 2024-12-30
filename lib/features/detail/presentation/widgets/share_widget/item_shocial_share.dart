import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class ItemSocialShare extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;
  const ItemSocialShare(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          title,
          style: context.bodyRegular500Style,
        ),
      ],
    );
  }
}
