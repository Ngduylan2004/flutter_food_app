
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:food_order_app/core/theme/colors/theme_color.dart';
// import 'package:food_order_app/core/theme/text/app_text_theme.dart';
// import 'package:food_order_app/features/grocery/presentation/widgets/list_grocery_widget.dart';

// class GroceryScreen extends StatelessWidget {
//   const GroceryScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           scrolledUnderElevation: 0,
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.transparent,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 30),
//                 child: Text(
//                   'Grocery',
//                   style: context.heading4Style,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 30),
//                 child: Container(
//                   width: 44,
//                   height: 44,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.add, color: Colors.green),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           toolbarHeight: 80, // Tùy chỉnh chiều cao AppBar nếu cần
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//             child: Column(
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                     fillColor: const Color(0xfff5f6f5),
//                     filled: true, //để đặt màu nền
//                     contentPadding: const EdgeInsets.symmetric(
//                         vertical: 12), //khoảng cách giữa nội dung và viền
//                     hintText: 'Search anything...',
//                     hintStyle: context.bodyRegular500Style?.copyWith(
//                       color: ThemeColor.lightBlack,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(200),
//                       borderSide: BorderSide.none,
//                       // borderSide: const BorderSide(
//                       //   color: ThemeColor.grayGreen,
//                       // ),
//                     ),
//                     prefixIcon: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: SvgPicture.asset(
//                         'assets/image/icons/akar-icons_search.svg',
//                         color: ThemeColor.lightBlack,
//                       ),
//                     ),
//                     suffixIcon: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: SvgPicture.asset(
//                         'assets/image/icons/setting-4.svg',
//                       ),
//                     ),
//                   ),
//                   style: const TextStyle(
//                     color: ThemeColor.lightBlack,
//                     fontSize: 24,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: 'Montserrat',
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 24,
//                 ),
//                 const ListGroceryWidget(),
//               ],
//             ),
//           ),
//         ));
//   }
// }
