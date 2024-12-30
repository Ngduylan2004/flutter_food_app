import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/explore/presentation/widgets/list_category_widget.dart';

class ExploreScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 140,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text('Search', style: context.heading4Style),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, //căn đều các phần tử
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color(0xfff5f6f5),
                  filled: true, //để đặt màu nền
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 20), //khoảng cách giữa nội dung và viền
                  hintText: 'Search anything...',
                  hintStyle: context.bodyRegular500Style?.copyWith(
                    color: ThemeColor.lightBlack,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(200),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      'assets/image/icons/akar-icons_search.svg',
                      color: ThemeColor.lightBlack,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      'assets/image/icons/setting-4.svg',
                    ),
                  ),
                ),
                style: context.bodyLarge500Style?.copyWith(
                  color: ThemeColor.lightBlack,
                ),
                enableInteractiveSelection: true,
              ),
              const SizedBox(height: 24),
              Text('Categories', style: context.heading5Style),
              const SizedBox(height: 18),
              const ListCategoryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
