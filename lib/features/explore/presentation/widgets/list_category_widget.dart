import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class ListCategoryWidget extends StatelessWidget {
  const ListCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final widthItem = (width - 40 - 13) / 2; //lỏ
    return SizedBox(
      // width: double.infinity,
      child: Wrap(
        // Căn đều các phần tử
        // alignment: WrapAlignment.start,
        spacing: 13,
        runSpacing: 15,

        children: List.generate(
          15,
          (index) => SizedBox(
            width: widthItem,
            height: 80, //
            child: InkWell(
              onTap: () {
                context.pushNamed('category');
              },
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        'assets/image/food/banner_home.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Bo tròn gradient
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              Colors.black.withOpacity(0.4), // Màu đen mờ đều
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Breakfast',
                      style: context.bodyLarge500Style?.copyWith(
                        color: ThemeColor.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // list supcategory
    );
  }
}
