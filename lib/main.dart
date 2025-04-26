import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/birthdate_provider.dart';
import 'src/pages/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BirthdateProvider(),
      child: MaterialApp(
        title: 'Birthdate Reminder',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
