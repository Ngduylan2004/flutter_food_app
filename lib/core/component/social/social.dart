import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final String text;
  final Function() onPressed;

  const SocialButton(
      {super.key,
      required this.image,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 137, // Đường kính của vòng tròn
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: ThemeColor.lightGray),
              // Đảm bảo là hình tròn
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Canh giữa
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Canh giữa theo chiều dọc
              children: [
                Image.asset(
                  image,
                  width: 24, // Điều chỉnh lại kích thước của icon
                  height: 24,
                ),
                const SizedBox(width: 8), // Khoảng cách giữa icon và text
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 14), // Điều chỉnh kích thước font của text
                ),
              ],
            ),
          ),
        ),
        // Container(
        //   width: 48, // Đường kính của vòng tròn
        //   height: 48,
        //   decoration: BoxDecoration(
        //     border: Border.all(color: ThemeColor.lightBlack),
        //     shape: BoxShape.circle, // Đảm bảo là hình tròn
        //   ),
        //   child: Image.asset(
        //     'assets/image/icons/facebook.png',
        //   ),
        // ),
        // Container(
        //   width: 48, // Đường kính của vòng tròn
        //   height: 48,
        //   decoration: BoxDecoration(
        //     border: Border.all(color: ThemeColor.lightBlack),
        //     shape: BoxShape.circle, // Đảm bảo là hình tròn
        //   ),
        //   child: Image.asset(
        //     'assets/image/icons/twitter.png',
        //     width: double.infinity,
        //   ),
        // ),
        // Container(
        //   width: 48, // Đường kính của vòng tròn
        //   height: 48,
        //   decoration: BoxDecoration(
        //     border: Border.all(color: ThemeColor.lightBlack),
        //     shape: BoxShape.circle, // Đảm bảo là hình tròn
        //   ),
        //   child: Image.asset(
        //     'assets/image/icons/apple.png',
        //   ),
        // )
      ],
    );
  }
}
