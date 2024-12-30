import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/explore/presentation/widgets/sup_category/list_supcategory_widget.dart';
import 'package:go_router/go_router.dart';

class SupCategoryScreen extends StatelessWidget {
  const SupCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Text('Chicken', style: context.heading5Style),
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    // Ảnh nền
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Bo tròn ảnh
                      child: SizedBox(
                        width: double.infinity,
                        height: 140,
                        child: Image.asset(
                          'assets/image/food/banner_home.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Gradient mờ lên ảnh với bo tròn
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
                    // Nội dung khác (văn bản và icon)
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chicken',
                            style: context.heading5Style?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '18, 265 recipes',
                            style: context.bodyLarge500Style?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sort By',
                        style: context.heading6Style
                            ?.copyWith(color: ThemeColor.black)),
                    Row(
                      children: [
                        Text('Most Popular',
                            style: context.bodySmall500Style
                                ?.copyWith(color: ThemeColor.primary)),
                        Image.asset('assets/image/icons/bx_sort.png'),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 24),
                // list supcategory
                const ListSupCategoryWidget(),
              ],
            ),
          ),
        ));
  }
}
