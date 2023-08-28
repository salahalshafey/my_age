import 'package:flutter/material.dart';

import 'pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _setThemeMode(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Age',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: ThemeData.light(useMaterial3: true).textTheme.copyWith(
              displayLarge: const TextStyle(
                fontSize: 18,
              ),
              displayMedium: const TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        textTheme: ThemeData.dark(useMaterial3: true).textTheme.copyWith(
              displayLarge: const TextStyle(
                fontSize: 18,
              ),
              displayMedium: const TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
      ),
      themeMode: _themeMode,
      home: HomeScreen(setThemeMode: _setThemeMode),
    );
  }
}
