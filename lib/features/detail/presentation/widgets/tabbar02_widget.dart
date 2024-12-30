import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/detail/presentation/widgets/tabbar02_widget/list_ingredients.dart';

class Tabbar02Widget extends StatelessWidget {
  const Tabbar02Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Ingredients",
                    style: context.heading5Style,
                  ),
                  const SizedBox(width: 6), // Khoảng cách nhỏ giữa Text và Icon
                  Text(
                    "(12)",
                    style: context.heading6Style?.copyWith(
                      color: ThemeColor.red,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "4 servings",
                    style: context.bodyLarge500Style?.copyWith(
                      color: ThemeColor.lightBlack,
                    ),
                  ),
                  const SizedBox(width: 6), // Khoảng cách nhỏ giữa Icon và Text
                  Row(
                    children: [
                      Image.asset("assets/image/icons/add.png"),
                      const SizedBox(width: 5),
                      Image.asset("assets/image/icons/remove.png"),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),

          // list ingredient
          const ListIngredients(
            title: "Chicken wings/Drumsticks",
            weight: "100g",
          ),
          const SizedBox(height: 10),
          const ListIngredients(
            title: "Potato starch",
            weight: "1 cup",
          ),
          const SizedBox(height: 10),
          const ListIngredients(
            title: "Kosher salt & Black Pepper",
            weight: "1/2 tsp",
          ),
          const SizedBox(height: 10),
          const ListIngredients(
            title: "Eggs",
            weight: "2 psc",
          ),
        ],
      ),
    );
  }
}
