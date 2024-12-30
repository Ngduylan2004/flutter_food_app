import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class FeaturedTopicScreen extends StatelessWidget {
  const FeaturedTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ảnh người dùng
              ClipOval(
                child: Image.asset(
                  'assets/image/food/Chicken.png',
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              // Phần thông tin người dùng và bài viết
              Expanded(
                child: Column(
                  children: [
                    // Tiêu đề bài viết
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Bellington ',
                            style: context.bodyLarge500Style,
                            children: [
                              TextSpan(
                                text: '@bellingcook\n',
                                style: context.bodyRegular500Style
                                    ?.copyWith(color: ThemeColor.lightBlack),
                              ),
                              TextSpan(
                                text: '1h ago',
                                style: context.bodySmall500Style,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(Icons.favorite_border_rounded,
                              color: ThemeColor.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Nội dung bài viết
                    Text(
                      'Rise and shine, pancake lovers! 🌞🥞 Today, Im sharing a recipe thatll turn your breakfast into a scrumptious delight! Behold, the Fluffy Pancakes that are sure to make your taste buds dance with joy! 💃🕺',
                      style: context.bodySmall500Style,
                    ),
                    const SizedBox(height: 12),
                    // Hình ảnh bài viết
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/image/food/Chicken.png',
                          width: double.infinity,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Footer
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildIconText(Icons.favorite, '45 Likes', context),
                        _buildIconText(
                            Icons.comment_bank_outlined, 'Comment', context),
                        _buildIconText(
                            Icons.visibility_rounded, 'View', context),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Hàm tái sử dụng cho mỗi icon và text
  Row _buildIconText(IconData icon, String text, BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: ThemeColor.lightBlack),
        const SizedBox(width: 5),
        Text(
          text,
          style:
              context.bodySmall500Style?.copyWith(color: ThemeColor.lightBlack),
        ),
      ],
    );
  }
}
