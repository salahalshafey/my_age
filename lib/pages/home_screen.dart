import 'package:flutter/material.dart';

import '../models/person.dart';

import '../widgets/date_picker.dart';
import '../widgets/date_view_list.dart';
import '../widgets/day_when_you_born.dart';
import '../widgets/next_birth_day_live.dart';
import '../widgets/toggle_theme_button.dart';
import 'about_app_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.setThemeMode}) : super(key: key);

  final void Function(ThemeMode themeMode) setThemeMode;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    var horizantalPadding = 20.0;
    var width = MediaQuery.of(context).size.width;
    if (width > 800) {
      horizantalPadding += (width - 800) / 2;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Calculator'),
        leading: IconButton(
          onPressed: () {
            goToScreenWithSlideTransition(
              context,
              const AboutAppScreen(),
              beginOffset: const Offset(-1, 0),
            );
          },
          icon: const Icon(Icons.info),
        ),
        actions: [
          ToggleThemeButton(setThemeMode: widget.setThemeMode),
        ],
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: horizantalPadding),
        children: <Widget>[
          const SizedBox(height: 20),
          DatePiker(_addBirthDate),
          const SizedBox(height: 50),
          DateViewList('TOTAL AGE', _person.totalAge),
          const SizedBox(height: 50),
          DayWhenYouBorn(_person.dayOfBorn, _person.hijriDate),
          const SizedBox(height: 50),
          DateViewList('NEXT BIRTHDAY', _person.remainingTimeToNextBirthDay),
          const SizedBox(height: 10),
          Align(child: NextBirthDayLive(_addBirthDate, theDate)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

void goToScreenWithSlideTransition(
  BuildContext context,
  Widget screen, {
  Offset beginOffset = const Offset(1, 0),
}) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: beginOffset,
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    ),
  );
}
