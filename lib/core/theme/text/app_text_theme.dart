import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme get textTheme => const TextTheme(
        // Font Cabin - Heading styles
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cabin',
        ),
        displayMedium: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cabin',
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cabin',
        ),
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cabin',
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cabin',
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cabin',
        ),
        titleLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cabin',
        ),

        // Font Montserrat - Body styles
        bodyLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        bodyMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        bodySmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        labelLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Montserrat',
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
      );

  AppTextTheme._();
}

extension TextThemeExtension on BuildContext {
  TextStyle? get body2XLargeStyle => AppTextTheme.textTheme.bodyMedium;
  TextStyle? get body3XLargeStyle => AppTextTheme.textTheme.bodyLarge;
  TextStyle? get bodyLarge500Style => AppTextTheme.textTheme.labelLarge;
  TextStyle? get bodyRegular500Style => AppTextTheme.textTheme.labelMedium;
  TextStyle? get bodySmall500Style => AppTextTheme.textTheme.labelSmall;
  TextStyle? get bodyXtraLargeStyle => AppTextTheme.textTheme.bodySmall;
  // Getter tiện ích để truy cập các style
  TextStyle? get heading1Style => AppTextTheme.textTheme.displayLarge;
  TextStyle? get heading2Style => AppTextTheme.textTheme.displayMedium;
  TextStyle? get heading3Style => AppTextTheme.textTheme.displaySmall;
  TextStyle? get heading4Style => AppTextTheme.textTheme.headlineLarge;
  TextStyle? get heading5Style => AppTextTheme.textTheme.headlineMedium;
  TextStyle? get heading6Style => AppTextTheme.textTheme.headlineSmall;
  TextStyle? get heading7Style => AppTextTheme.textTheme.titleLarge;
}
