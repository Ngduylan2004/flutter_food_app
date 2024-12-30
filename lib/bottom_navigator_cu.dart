import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/features/explore/presentation/pages/explore_screen.dart';
import 'package:food_order_app/features/forum/presentation/pages/forum_screen.dart';
import 'package:food_order_app/features/grocery/presentation/pages/grocery_screen.dart';
import 'package:food_order_app/features/home/presentation/pages/home_screen.dart';
import 'package:food_order_app/features/profile/presentation/pages/profile_screen.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const GroceryScreen(),
    ExploreScreen(),
    const ForumScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: DefaultTextStyle(
        style: TextStyle(
          fontSize: 12, // Kích thước chữ tiêu đề
          fontWeight: FontWeight.bold,
          color: _currentIndex == 0
              ? ThemeColor.lightGray
              : ThemeColor.primary, // Chọn màu cho text của tab đang chọn
        ),
        child: ConvexAppBar(
          backgroundColor: Colors.white,
          color: Colors.grey, // Màu của các icon không được chọn
          activeColor: ThemeColor.primary, // Màu của các icon khi chọn
          height: 80,
          style: TabStyle.fixedCircle,
          items: [
            TabItem(
              icon: SvgPicture.asset(
                'assets/image/icons/cutlery 4.svg',
                width: 24,
                height: 24,
                color: _currentIndex == 0 ? ThemeColor.primary : Colors.grey,
              ),
              title: 'Recipes',
            ),
            TabItem(
              icon: SvgPicture.asset(
                'assets/image/icons/cil_list.svg',
                width: 24,
                height: 24,
                color: _currentIndex == 1 ? ThemeColor.primary : Colors.grey,
              ),
              title: 'Grocery',
            ),
            TabItem(
              icon: Padding(
                padding: const EdgeInsets.all(16.0), // Điều chỉnh khoảng cách
                child: SvgPicture.asset(
                  'assets/image/icons/akar-icons_search.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              title: 'Explore',
            ),
            TabItem(
              icon: SvgPicture.asset(
                'assets/image/icons/fluent_chat-32-regular.svg',
                width: 24,
                height: 24,
                color: _currentIndex == 3 ? ThemeColor.primary : Colors.grey,
              ),
              title: 'Forum',
            ),
            TabItem(
              icon: SvgPicture.asset(
                'assets/image/icons/profile.svg',
                width: 24,
                height: 24,
                color: _currentIndex == 4 ? ThemeColor.primary : Colors.grey,
              ),
              title: 'Profile',
            ),
          ],
          initialActiveIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
