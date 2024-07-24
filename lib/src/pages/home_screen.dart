import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:my_age/l10n/l10n.dart';

import '../models/person.dart';

import 'genearal_settings_screen.dart';
import 'about_app_screen.dart';

import '../widgets/date_picker.dart';
import '../widgets/total_age.dart';
import '../widgets/day_when_you_born.dart';
import '../widgets/next_birth_day.dart';
import '../widgets/next_birth_day_live.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Person _person = Person(context: context);
  DateTime? theDate;

  void _addBirthDate(DateTime? date) {
    setState(() {
      theDate = date;
      _person = Person(birthDate: date, context: context);
    });
  }

  @override
  Widget build(BuildContext context) {
    HijriCalendar.setLocal(Localizations.localeOf(context).languageCode);

    var horizantalPadding = 20.0;
    var width = MediaQuery.of(context).size.width;
    if (width > 800) {
      horizantalPadding += (width - 800) / 2;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).ageCalculator),
        leading: IconButton(
          tooltip: Strings.of(context).about,
          onPressed: () {
            goToScreenWithSlideTransition(
              context,
              const AboutAppScreen(),
              reverseDirection: true,
            );
          },
          icon: const Icon(Icons.info),
        ),
        actions: [
          IconButton(
            tooltip: Strings.of(context).settings,
            onPressed: () {
              goToScreenWithSlideTransition(
                context,
                const GeneralSettingsScreen(),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: horizantalPadding),
        children: <Widget>[
          const SizedBox(height: 20),
          DatePiker(_addBirthDate),
          const SizedBox(height: 50),
          TotalAge(
            Strings.of(context).totalAge,
            _person.totalAge,
          ),
          const SizedBox(height: 50),
          DayWhenYouBorn(_person.dayOfBorn, _person.hijriDate),
          const SizedBox(height: 50),
          NextBirthDay(
            Strings.of(context).nextBirthday,
            _person.remainingTimeToNextBirthDay,
          ),
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
  Offset? beginOffset,
  Duration transitionDuration = const Duration(milliseconds: 300),
  Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  bool reverseDirection = false,
}) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (ctx, animation, secondaryAnimation, child) {
        // ScaffoldMessenger.of(ctx).removeCurrentSnackBar();

        var screenTransitionDirection =
            Directionality.of(ctx) == TextDirection.rtl ? -1.0 : 1.0;
        if (reverseDirection) {
          screenTransitionDirection *= -1;
        }

        return SlideTransition(
          position: Tween<Offset>(
            begin: beginOffset ?? Offset(screenTransitionDirection, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
    ),
  );
}
