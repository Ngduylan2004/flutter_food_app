import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/features/explore/presentation/pages/explore_screen.dart';
import 'package:food_order_app/features/forum/presentation/pages/forum_screen.dart';
import 'package:food_order_app/features/grocery/presentation/pages/grocery_screen.dart';
import 'package:food_order_app/features/home/presentation/pages/home_screen.dart';
import 'package:food_order_app/features/profile/presentation/pages/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex = 0; // Đảm bảo _currentIndex có thể thay đổi khi chọn tab

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
      bottomNavigationBar: PersistentTabView(
        context,
        controller: PersistentTabController(initialIndex: _currentIndex),
        screens: _pages,
        items: _buildNavBarItems(),
        backgroundColor: Colors.white, // Màu nền của navigation bar
        handleAndroidBackButtonPress: true, // Xử lý nút back Android
        resizeToAvoidBottomInset: true,
        stateManagement: true, // Giữ lại trạng thái của mỗi tab
        navBarStyle: NavBarStyle.style15, // Áp dụng style 15
        navBarHeight: 90,
        padding: const EdgeInsets.only(top: 8, bottom: 16),

        onItemSelected: (index) {
          setState(() {
            _currentIndex = index; // Cập nhật _currentIndex khi chọn tab
          });
        },
      ),
    );
  }

  List<PersistentBottomNavBarItem> _buildNavBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/image/icons/cutlery 4.svg',
            width: 24,
            height: 24,
            color:
                _currentIndex == 0 ? ThemeColor.primary : ThemeColor.lightBlack
            // Thay đổi màu sắc khi chọn tab
            ),
        title: 'Recipes',
        textStyle: TextStyle(
          fontSize: 12, // Kích thước chữ
          fontWeight: FontWeight.bold, // Chữ in đậm
          color: _currentIndex == 0
              ? ThemeColor.primary
              : ThemeColor.lightBlack, // Thay đổi màu chữ khi chọn tab
          letterSpacing: 1.2, // Khoảng cách chữ
        ),
        activeColorPrimary: ThemeColor.primary,
        inactiveColorPrimary: ThemeColor.lightBlack,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/image/icons/cil_list.svg',
          width: 24,
          height: 24,
          color: _currentIndex == 1
              ? ThemeColor.primary
              : ThemeColor.lightBlack, // Thay đổi màu sắc khi chọn tab
        ),
        title: 'Grocery',
        textStyle: TextStyle(
          fontSize: 12, // Kích thước chữ
          fontWeight: FontWeight.bold, // Chữ in đậm
          color: _currentIndex == 1
              ? ThemeColor.primary
              : ThemeColor.lightBlack, // Thay đổi màu chữ khi chọn tab
          letterSpacing: 1.2, // Khoảng cách chữ
        ),
        activeColorPrimary: ThemeColor.primary,
        inactiveColorPrimary: ThemeColor.lightBlack,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/image/icons/akar-icons_search.svg',
          width: 24,
          height: 24,
          color: _currentIndex == 2
              ? ThemeColor.white
              : ThemeColor.white, // Thay đổi màu sắc khi chọn tab
        ),
        title: 'Explore',
        textStyle: TextStyle(
          fontSize: 12, // Kích thước chữ
          fontWeight: FontWeight.bold, // Chữ in đậm
          color: _currentIndex == 2
              ? ThemeColor.primary
              : ThemeColor.lightBlack, // Thay đổi màu chữ khi chọn tab
          letterSpacing: 1.2, // Khoảng cách chữ
        ),
        activeColorPrimary: ThemeColor.primary,
        inactiveColorPrimary: ThemeColor.lightBlack,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/image/icons/fluent_chat-32-regular.svg',
          width: 24,
          height: 24,
          color: _currentIndex == 3
              ? ThemeColor.primary
              : ThemeColor.lightBlack, // Thay đổi màu sắc khi chọn tab
        ),
        title: 'Forum',
        textStyle: TextStyle(
          fontSize: 12, // Kích thước chữ
          fontWeight: FontWeight.bold, // Chữ in đậm
          color: _currentIndex == 3
              ? ThemeColor.primary
              : ThemeColor.lightBlack, // Thay đổi màu chữ khi chọn tab
          letterSpacing: 1.2, // Khoảng cách chữ
        ),
        activeColorPrimary: ThemeColor.primary,
        inactiveColorPrimary: ThemeColor.lightBlack,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/image/icons/profile.svg',
          width: 24,
          height: 24,
          color: _currentIndex == 4
              ? ThemeColor.primary
              : ThemeColor.lightBlack, // Thay đổi màu sắc khi chọn tab
        ),
        title: 'Profile',
        textStyle: TextStyle(
          fontSize: 12, // Kích thước chữ
          fontWeight: FontWeight.bold, // Chữ in đậm
          color: _currentIndex == 4
              ? ThemeColor.primary
              : ThemeColor.lightBlack, // Thay đổi màu chữ khi chọn tab
          letterSpacing: 1.2, // Khoảng cách chữ
        ),
        activeColorPrimary: ThemeColor.primary,
        inactiveColorPrimary: ThemeColor.lightBlack,
      ),
    ];
  }
}
