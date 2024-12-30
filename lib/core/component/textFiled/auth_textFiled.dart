import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';

class AuthTextFiled extends StatelessWidget {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final String label;
  final bool obscureText;

  const AuthTextFiled({
    super.key,
    required this.controller,
    this.prefixIcon,
    required this.label,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        style: context.bodyRegular500Style?.copyWith(
            fontSize: 20,
            color: ThemeColor.lightBlack), // Đặt mặc định cho kiểu chữ nhập vào
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          label: Text(label, style: context.bodyRegular500Style),
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
