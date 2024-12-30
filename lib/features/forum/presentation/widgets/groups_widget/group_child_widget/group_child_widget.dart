import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class GroupChildWidget extends StatelessWidget {
  const GroupChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      10,
      (index) => Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Ảnh người dùng
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/image/food/banner_home.png',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            // Phần thông tin người dùng và bài viết
            SizedBox(
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ThemeColor.lightGray),
                  color: ThemeColor.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                  text: '1h ago',
                                  style: context.bodySmall500Style,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      // Nội dung bài viết
                      Text(
                        'Rise and shine, pancake lovers!Rise and shine, pancake lovers!Rise and shine, pancake lovers! 🌞🥞 💃🕺',
                        style: context.bodySmall500Style,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Icon(Icons.favorite,
                              size: 16, color: ThemeColor.red),
                          const SizedBox(width: 4),
                          Text('45 Likes', style: context.bodySmall500Style),
                          const SizedBox(width: 24),
                          const Icon(Icons.comment_bank_outlined,
                              size: 16, color: ThemeColor.lightBlack),
                          const SizedBox(width: 4),
                          Text('Reply', style: context.bodySmall500Style),
                        ],
                      )
                      // Hình ảnh bài viết

                      // Footer
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
