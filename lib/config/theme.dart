import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0xff101010), // Default 500
    scaffoldBackgroundColor: const Color(0xffE7E7E7), // Light 200
    dialogBackgroundColor: const Color(0xffB7B7B7), // Light 300
    fontFamily: 'Urbanist',
    colorScheme: const ColorScheme(
      primary: Color(0xff101010), // Primary default
      primaryContainer: Color(0xff0D0B0B), // Primary dark 600
      secondary: Color(0xffF27A47), // Secondary default
      secondaryContainer: Color(0xffD05833), // Secondary dark 600
      surface: Colors.white,
      error: Color(0xffFF4C5E), // Error default
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xff070304),
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0xff070304),
        fontSize: 48,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: Color(0xff070304),
        fontSize: 32,
        fontWeight: FontWeight.w800,
      ),
      displaySmall: TextStyle(
        color: Color(0xff070304),
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      headlineLarge: TextStyle(
        color: Color(0xffB7B7B7),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        color: Color(0xff070304),
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: TextStyle(
        color: Color(0xff070304),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        color: Color(0xff070304),
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      titleMedium: TextStyle(
        color: Color(0xff070304),
        fontSize: 16,
        fontWeight: FontWeight.w200,
      ),
      titleSmall: TextStyle(
        color: Color(0xff070304),
        fontSize: 16,
        fontWeight: FontWeight.w100,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
      ),
    ),
  );
}
