import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class RecipeCategoryScreen extends StatelessWidget {
  const RecipeCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final widthItem = (width - 40 - 13) / 2; //lỏ
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        // leadingWidth: 80, // Độ rộng của khu vực leading
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
            iconSize: 24,
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Korean', style: context.heading5Style),
        ),
        titleSpacing: 0, // Căn chỉnh title gần với leading
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, size: 32),
            ),
          ),
          const SizedBox(width: 12),
        ],
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                // width: double.infinity,
                child: Wrap(
                  // Căn đều các phần tử
                  // alignment: WrapAlignment.start,
                  spacing: 13,
                  runSpacing: 15,

                  children: List.generate(
                    20,
                    (index) => SizedBox(
                      width: widthItem,
                      height: 112, //

                      child: InkWell(
                        onTap: () {
                          context.pushNamed('sup-category');
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
                            // Gradient mờ lên ảnh với bo tròn
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    10), // Bo tròn gradient
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
                              left: 12,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chicken',
                                    style: context.bodyLarge500Style?.copyWith(
                                      color: ThemeColor.white,
                                    ),
                                  ),
                                  Text(
                                    '18,265 recipes',
                                    style: context.bodySmall500Style?.copyWith(
                                      color: ThemeColor.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
