import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class ListProductWidget extends StatelessWidget {
  const ListProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final widthItem = (width - 40 - 15) / 2;
    return Wrap(
        spacing: 15, // Khoảng cách giữa các ảnh
        runSpacing: 15, // Khoảng cách giữa các hàng
        children: List.generate(9, (index) {
          return Container(
            width: widthItem,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Ảnh sản phẩm và biểu tượng trái tim
                InkWell(
                  onTap: () => context.pushNamed('recipe-detail'), //go hay push
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/image/food/banner_home.png',

                          height: 140, // Chiều cao ảnh
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Biểu tượng trái tim nằm trên ảnh
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
                    ],
                  ),
                ),
                // Phần tên và mô tả sản phẩm dưới ảnh
                const SizedBox(height: 5), // Khoảng cách giữa ảnh và mô tả
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SPAIN ',
                        style: context.bodySmall500Style?.copyWith(
                          color: Colors.black,
                        )),
                    Text('Paella (Pan-seared rice)',
                        style: context.heading7Style?.copyWith(
                          color: Colors.black,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lunch|60m ',
                          style: context.bodySmall500Style?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: ThemeColor.lightYellow, size: 16),
                            Text(
                              '4.5',
                              style: context.bodySmall500Style?.copyWith(
                                color: ThemeColor.lightYellow,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }));
  }
}
