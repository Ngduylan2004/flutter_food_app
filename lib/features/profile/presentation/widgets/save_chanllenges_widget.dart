import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class SaveChanllengesWidget extends StatelessWidget {
  const SaveChanllengesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final widthItem = (width - 40);
    return SizedBox(
      height: 140.0, // Chiều cao của ListView ngang
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Lướt ngang
        itemCount: 5, // Số lượng item
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 8), // Khoảng cách giữa các item
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
                      width: widthItem, // Chiều rộng của mỗi ảnh
                      height: 140, // Chiều cao cố định
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
                    child: SizedBox(
                      width: 142,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paella (Pan-seared rice)',
                            style: context.heading6Style?.copyWith(
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
                  ),
                  // Icon yêu thích
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 94, 84),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child:
                          const Icon(Icons.favorite, color: ThemeColor.white),
                    ),
                  ),
                  // Đánh giá
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: ThemeColor.lightOrange,
                          size: 18,
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
