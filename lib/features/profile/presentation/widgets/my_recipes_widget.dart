import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class MyRecipesWidget extends StatelessWidget {
  const MyRecipesWidget({
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
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 10), // Khoảng cách giữa các item
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
                      width: widthItem, // Chiều rộng cố định của mỗi ảnh
                      height: 140, // Chiều cao cố định cho ảnh
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
                            'Chocolate melting fluffy cake',
                            style: context.heading7Style?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_outlined,
                                color: Colors.white,
                                size: 12,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '27 min',
                                style: context.bodySmall500Style?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
