import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_ouline_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class AllGroupWidget extends StatelessWidget {
  const AllGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Hình ảnh nhóm
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/image/food/banner_home.png',
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
              ),
              // Tên nhóm và số lượng thành viên
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text.rich(
                    TextSpan(
                      text: 'Asian Food Lovers\n',
                      style: context.bodyLarge500Style,
                      children: [
                        TextSpan(
                          text: '22.1k Members',
                          style: context.bodyLarge500Style
                              ?.copyWith(color: ThemeColor.lightGray),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Nút tham gia nhóm
              AppOulineButton(
                text: "Join",
                onPressed: () {
                  context.pushNamed('group-child');
                },
                width: 80,
                height: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
