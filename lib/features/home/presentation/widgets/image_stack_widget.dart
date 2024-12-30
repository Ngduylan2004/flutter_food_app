import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class ImageStackWidget extends StatelessWidget {
  const ImageStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffF5F6F5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              clipBehavior: Clip.none, // Để ảnh không bị cắt
              children: [
                // ClipOval dùng để làm tròn hình ảnh
                ClipOval(
                  child: Image.asset(
                    'assets/image/food/banner_home.png', // Đường dẫn hình ảnh của bạn
                    width: 60, // Kích thước hình ảnh
                    height: 60, // Kích thước hình ảnh
                    fit: BoxFit.cover, // Đảm bảo ảnh bao phủ toàn bộ vùng
                  ),
                ),
                Positioned(
                  left: 30, // Điều chỉnh vị trí của ảnh thứ hai
                  child: ClipOval(
                    child: Image.asset(
                      'assets/image/food/banner_home.png', // Đường dẫn hình ảnh của bạn
                      width: 60, // Kích thước hình ảnh
                      height: 60, // Kích thước hình ảnh
                      fit: BoxFit.cover, // Đảm bảo ảnh bao phủ toàn bộ vùng
                    ),
                  ),
                ),
                Positioned(
                  left: 60, // Điều chỉnh vị trí của ảnh thứ hai
                  child: ClipOval(
                    child: Image.asset(
                      'assets/image/food/banner_home.png', // Đường dẫn hình ảnh của bạn
                      width: 60, // Kích thước hình ảnh
                      height: 60, // Kích thước hình ảnh
                      fit: BoxFit.cover, // Đảm bảo ảnh bao phủ toàn bộ vùng
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 50),
            Text('Discover more dishes\nby exploring what’s new',
                style: context.bodyRegular500Style?.copyWith(
                  color: ThemeColor.black,
                )),
            Image.asset(
              'assets/image/icons/muiten.png',
            ),
          ],
        ),
      ),
    );
  }
}
