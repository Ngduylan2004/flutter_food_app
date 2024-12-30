import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class carouse extends StatelessWidget {
  const carouse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 140.0, // Chiều cao của carousel (có thể thay đổi tùy ý)
        autoPlay: false, // Tắt autoPlay
        enlargeCenterPage: true, // Làm to ảnh ở giữa

        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true, // Kích hoạt cuộn vô hạn
        autoPlayAnimationDuration:
            const Duration(milliseconds: 800), // Thời gian animation tự động
        viewportFraction:
            0.5, // Hiển thị 2 ảnh trên màn hình (mỗi ảnh chiếm 50% chiều rộng)
      ),
      items: [
        InkWell(
          onTap: () {
            context.goNamed('recipe-detail');
          },
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Bo góc cho ảnh nếu cần
              child: Image.asset(
                'assets/image/food/banner_home.png',
                fit: BoxFit.cover,
                width:
                    double.infinity, // Chiều rộng bằng với width của Carousel
                height: 140, // Chiều cao ảnh bằng chiều cao carousel
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
                  Text('SPAIN ',
                      style: context.bodySmall500Style?.copyWith(
                        color: Colors.white,
                      )),
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
                    color: ThemeColor.lightYellow,
                    size: 16,
                  ),
                  Text('4.5',
                      style: context.bodySmall500Style?.copyWith(
                        color: ThemeColor.lightYellow,
                      )),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
