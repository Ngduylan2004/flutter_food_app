import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none, // Để ảnh không bị cắt
                    children: [
                      // ClipOval dùng để làm tròn hình ảnh
                      ClipOval(
                        child: Image.asset(
                          'assets/image/food/banner_home.png', // Đường dẫn hình ảnh của bạn
                          width: 30, // Kích thước hình ảnh
                          height: 30, // Kích thước hình ảnh
                          fit: BoxFit.cover, // Đảm bảo ảnh bao phủ toàn bộ vùng
                        ),
                      ),
                      Positioned(
                        left: 15, // Điều chỉnh vị trí của ảnh thứ hai
                        child: ClipOval(
                          child: Image.asset(
                            'assets/image/food/banner_home.png', // Đường dẫn hình ảnh của bạn
                            width: 30, // Kích thước hình ảnh
                            height: 30, // Kích thước hình ảnh
                            fit: BoxFit
                                .cover, // Đảm bảo ảnh bao phủ toàn bộ vùng
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30, // Điều chỉnh vị trí của ảnh thứ hai
                        child: ClipOval(
                          child: Image.asset(
                            'assets/image/food/banner_home.png', // Đường dẫn hình ảnh của bạn
                            width: 30, // Kích thước hình ảnh
                            height: 30, // Kích thước hình ảnh
                            fit: BoxFit
                                .cover, // Đảm bảo ảnh bao phủ toàn bộ vùng
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 35),
                  Text('and 10 others',
                      style: context.bodyRegular500Style?.copyWith(
                        color: ThemeColor.lightBlack,
                      )),
                ],
              ),
              AppSolidButton(
                text: 'Join Now',
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
