import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/detail/presentation/widgets/tabbar01_widget/btn_widget.dart';

class Tabbar01Widget extends StatelessWidget {
  const Tabbar01Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              'Yangnyeom is crispy fried chicken coated in sweet and spicy sauce. Its accompanied by pickled radishes, sliced scallions, and a side of rice. Cold beer or soft drinks are popular pairings. Enjoy!',
              style: context.bodyRegular500Style
                  ?.copyWith(color: ThemeColor.lightBlack),
            ),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BtnWidget(
                    icon: 'assets/image/icons/detail/carbon_time.svg',
                    title: '12 min',
                    content: 'Cook time'),
                BtnWidget(
                    icon: 'assets/image/icons/detail/Calories.svg',
                    title: '245 kcal',
                    content: 'Calories'),
                BtnWidget(
                    icon: 'assets/image/icons/detail/carbon_location.svg',
                    title: 'Korea',
                    content: 'Origin'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
