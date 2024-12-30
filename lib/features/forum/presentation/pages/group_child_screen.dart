import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/forum/presentation/widgets/groups_widget/group_child_widget/group_child_widget.dart';
import 'package:go_router/go_router.dart';

class GroupChildScreen extends StatelessWidget {
  const GroupChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 90,
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: IconButton(
            iconSize: 28,
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
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
              const SizedBox(width: 10),
              // Cập nhật lại Title và số thành viên
              Flexible(
                child: Text.rich(
                  TextSpan(
                    text: 'Asian Food Lovers\n',
                    style: context.bodyLarge500Style,
                    children: [
                      TextSpan(
                        text: '22.1k Members,179 online',
                        style: context.bodySmall500Style
                            ?.copyWith(color: ThemeColor.lightBlack),
                      ),
                    ],
                  ),
                  overflow: TextOverflow.ellipsis, // Đảm bảo không tràn text
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, size: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, size: 24),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Phần cuộn, chứa GroupChildWidget
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  children: [
                    GroupChildWidget(),
                    SizedBox(
                        height: 10), // Khoảng cách thêm sau GroupChildWidget
                  ],
                ),
              ),
            ),
          ),
          // Phần TextField cố định dưới cùng
          const Divider(
            color: ThemeColor.lightGray,
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Row(
              children: [
                // Ảnh người dùng
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/image/food/banner_home.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10), // Khoảng cách giữa ảnh và TextField
                // TextField
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xfff5f6f5),
                      filled: true, //để đặt màu nền
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12), //khoảng cách giữa nội dung và viền
                      hintText: 'Search anything...',
                      hintStyle: context.bodyRegular500Style?.copyWith(
                        color: ThemeColor.lightBlack,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200),
                        borderSide: BorderSide.none,
                        // borderSide: const BorderSide(
                        //   color: ThemeColor.grayGreen,
                        // ),
                      ),

                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'assets/image/icons/send.svg',
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      color: ThemeColor.lightBlack,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
