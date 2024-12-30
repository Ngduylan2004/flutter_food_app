import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/forum/presentation/widgets/challenge_widget/user_image_widget.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Upcoming Challenges',
            style: context.heading6Style,
          ),
          Image.asset('assets/image/icons/setting-4.png')
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Column(
        children: List.generate(
          10,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Card(
              color: ThemeColor.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip
                        .none, // Quan trọng: Cho phép widget thoát ra ngoài Stack
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/image/food/banner_home.png',
                          height: 150,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(Icons.favorite_border_rounded,
                              color: ThemeColor.white),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        bottom: -20, // Đặt vị trí của khung nằm chính giữa
                        child: Container(
                          width: 42,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '18',
                                  textAlign: TextAlign.center,
                                  style: context.bodyLarge500Style
                                      ?.copyWith(color: Colors.red),
                                ),
                                Text(
                                  'Oct ',
                                  style: context.bodyRegular500Style,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20), // Giãn cách giữa ảnh và văn bản
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ingredient Restriction Challenge',
                          style: context.bodyXtraLargeStyle,
                        ),
                        Text(
                          'Choose a specific ingredient (e.g., avocado, lemon, chickpeas) and challenge yourself to create multiple dishes using only that ingredient.',
                          style: context.bodyRegular500Style?.copyWith(
                            color: ThemeColor.lightBlack,
                          ),
                        ),
                        const UserImageWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
