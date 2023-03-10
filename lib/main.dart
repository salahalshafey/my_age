import 'package:my_age/widgets/date_picker.dart';
import 'package:my_age/widgets/day_when_you_born.dart';
import 'package:my_age/widgets/date_view_list.dart';

import 'package:flutter/material.dart';
import 'package:my_age/widgets/next_birth_day_live.dart';

import './models/person.dart';
import 'widgets/toggle_theme_button.dart';

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
      home: MyHomePage(setThemeMode: _setThemeMode),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.setThemeMode}) : super(key: key);

  final void Function(ThemeMode themeMode) setThemeMode;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Person _person = const Person();
  DateTime? theDate;

  void _addBirthDate(DateTime? date) {
    setState(() {
      theDate = date;
      _person = Person(date);
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = (MediaQuery.of(context).size.height -
            AppBar().preferredSize.height -
            MediaQuery.of(context).padding.top -
            MediaQuery.of(context).padding.bottom) *
        1;
    var width = MediaQuery.of(context).size.width;
    if (width > 800) {
      width = 800;
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Age Calculator'),
            const SizedBox(width: 50),
            ToggleThemeButton(setThemeMode: widget.setThemeMode),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: height - 10,
          width: width,
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 30),
                DatePiker(_addBirthDate),
                const SizedBox(height: 50),
                DateViewList('TOTAL AGE', _person.totalAge),
                const SizedBox(height: 50),
                DayWhenYouBorn(_person.dayOfBorn, _person.hijriDate),
                const SizedBox(height: 50),
                DateViewList(
                    'NEXT BIRTHDAY', _person.remainingTimeToNextBirthDay),
                const SizedBox(height: 10),
                NextBirthDayLive(_addBirthDate, theDate),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
