import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class ListSupCategoryWidget extends StatelessWidget {
  const ListSupCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final widthItem = (width - 40 - 13) / 2;
    return Wrap(
      spacing: 13,
      runSpacing: 15,
      children: List.generate(
        10,
        (index) => InkWell(
          onTap: () {
            // Điều hướng đến màn hình chi tiết
            context.pushNamed('recipe-detail');
          },
          child: Stack(
            children: [
              Hero(
                tag: 'recipe-detail-$index', // Đảm bảo tag là duy nhất
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10), // Bo góc cho ảnh nếu cần
                  child: Image.asset(
                    'assets/image/food/banner_home.png',
                    fit: BoxFit.cover,
                    width: widthItem, // Chiều rộng bằng với width của Carousel
                    height: 140, // Chiều cao ảnh bằng chiều cao carousel
                  ),
                ),
              ),
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Bo tròn gradient
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
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Paella (Pan-seared rice)',
                        style: context.heading7Style?.copyWith(
                          color: Colors.white,
                        )),
                    Text('Lunch|60m ',
                        style: context.bodySmall500Style?.copyWith(
                          color: Colors.white,
                        )),
                  ],
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
                bottom: 10,
                right: 10,
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: ThemeColor.lightOrange,
                      size: 16,
                    ),
                    Text('4.5',
                        style: context.bodySmall500Style?.copyWith(
                          color: ThemeColor.lightOrange,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
