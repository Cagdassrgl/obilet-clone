import 'package:flutter/material.dart';

class AppTheme {
  // Ana renkler
  static const Color primary = Color(0xFF580D2F); // Bordo
  static const Color secondary = Color(0xFF133261); // Mavi vurgu
  static const Color error = Color.fromARGB(
    255,
    182,
    2,
    2,
  ); // Kırmızı hata rengi
  static const Color backgroundLight = Color(0xFFF4F4F4); // Açık gri
  static const Color textPrimary = Color(0xFF1C1C1C); // Koyu gri-siyah
  static const Color textSecondary = Color(0xFF757575); // Açık gri yazı

  // Light Tema
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primary,
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.light(
      primary: primary,
      secondary: secondary,
      surface: backgroundLight,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: textPrimary,
    ),
    iconTheme: const IconThemeData(color: secondary),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: backgroundLight,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: primary, width: 2),
      ),
      labelStyle: TextStyle(color: textPrimary),
      hintStyle: TextStyle(color: textSecondary),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(
        color: textPrimary,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(color: textPrimary, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(color: textPrimary, fontWeight: FontWeight.w600),
      titleSmall: TextStyle(color: textPrimary, fontWeight: FontWeight.w600),
      labelLarge: TextStyle(color: textPrimary),
      labelMedium: TextStyle(color: textPrimary),
      labelSmall: TextStyle(color: textPrimary),
      bodyLarge: TextStyle(color: textPrimary),
      bodyMedium: TextStyle(color: textPrimary),
      bodySmall: TextStyle(color: textSecondary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: secondary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
    ),
  );
}
