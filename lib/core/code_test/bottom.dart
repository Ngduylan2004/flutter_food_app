// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:food_order_app/core/theme/colors/theme_color.dart';
// import 'package:food_order_app/features/explore/presentation/pages/explore_screen.dart';
// import 'package:food_order_app/features/forum/presentation/pages/forum_screen.dart';
// import 'package:food_order_app/features/grocery/presentation/pages/grocery_screen.dart';
// import 'package:food_order_app/features/home/presentation/pages/home_screen.dart';
// import 'package:food_order_app/features/profile/presentation/pages/profile_screen.dart';

// class BottomNavigator extends StatefulWidget {
//   const BottomNavigator({super.key});

//   @override
//   State<BottomNavigator> createState() => _BottomNavigatorState();
// }

// class _BottomNavigatorState extends State<BottomNavigator> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     const HomeScreen(),
//     const GroceryScreen(),
//     ExploreScreen(),
//     const ForumScreen(),
//     const ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         scrolledUnderElevation: 0,
//       ),
//       body: _pages[_currentIndex], // Hiển thị trang tương ứng
//       bottomNavigationBar: ConvexAppBar(
//         backgroundColor: Colors.white,
//         color: Colors.grey,
//         activeColor: ThemeColor.primary,
//         height: 70,
//         style: TabStyle.fixedCircle,
//         items: const [
//           TabItem(icon: Icon(Icons.home), title: 'Home'),
//           TabItem(icon: Icon(Icons.shopping_cart), title: 'Grocery'),
//           TabItem(icon: Icon(Icons.search), title: 'Explore'),
//           TabItem(icon: Icon(Icons.chat), title: 'Forum'),
//           TabItem(icon: Icon(Icons.person), title: 'Profile'),
//         ],
//         initialActiveIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
