import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData light(Color color) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: color,
        primary: color,
        secondary: color,
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
            displayLarge: const TextStyle(
              fontSize: 18,
            ),
            displayMedium: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
    );
  }

  static ThemeData dark(Color color) {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: color,
        brightness: Brightness.dark,
        primary: color,
        secondary: color,
      ),
      textTheme: ThemeData.dark().textTheme.copyWith(
            displayLarge: const TextStyle(
              fontSize: 18,
            ),
            displayMedium: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
    );
  }
}
