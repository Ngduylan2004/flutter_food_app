import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class SaveRecipesWidget extends StatelessWidget {
  const SaveRecipesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final widthItem = (width - 10 - 40) / 2;
    return SizedBox(
      height: 140.0, // Chiều cao của ListView ngang
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Lướt ngang
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                context.goNamed('recipe-detail');
              },
              child: Stack(
                children: [
                  // Ảnh nền
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Bo góc cho ảnh
                    child: Image.asset(
                      'assets/image/food/banner_home.png',
                      fit: BoxFit.cover,
                      width: widthItem, // Đặt chiều rộng của ảnh cố định
                      height: 140, // Chiều cao ảnh bằng chiều cao widget
                    ),
                  ),
                  // Gradient overlay
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Bo tròn gradient
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black.withOpacity(0.9),
                            ],
                            stops: const [0.0, 0.0, 0.5, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Tiêu đề và mô tả
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Paella (Pan-seared rice)',
                          style: context.heading7Style?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Lunch | 60m',
                          style: context.bodySmall500Style?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Icon yêu thích
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 221, 82, 72),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child:
                          const Icon(Icons.favorite, color: ThemeColor.white),
                    ),
                  ),
                  // Đánh giá
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Đảm bảo Column chỉ chiếm không gian cần thiết
                      crossAxisAlignment:
                          CrossAxisAlignment.end, // Căn theo cạnh phải
                      children: [
                        const Icon(
                          Icons.star,
                          color: ThemeColor.lightOrange,
                          size: 16,
                        ),
                        Text(
                          '4.5',
                          style: context.bodySmall500Style?.copyWith(
                            color: ThemeColor.lightOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
