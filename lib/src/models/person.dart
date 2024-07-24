// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:my_age/l10n/l10n.dart';
import 'package:time/time.dart';
import 'package:intl/intl.dart' as intl;

class Person {
  const Person({this.birthDate, required this.context});

  final DateTime? birthDate;
  final BuildContext context;

  Age get totalAge {
    if (birthDate == null) {
      return const Age(years: 0, months: 0, days: 0);
    }

    final age = _differenceBetweenDates(DateTime.now(), birthDate!);

    return Age(
      years: age.years,
      months: age.months,
      days: age._days,
    );
  }

  String get dayOfBorn {
    if (birthDate == null) {
      return '';
    }

    return intl.DateFormat(
      "EEEE",
      Localizations.localeOf(context).languageCode,
    ).format(birthDate!);
  }

  String get hijriDate {
    if (birthDate == null || birthDate!.isBefore(DateTime(1937, 3, 14))) {
      return '';
    }

    final hijri = HijriCalendar.fromDate(birthDate!);

    // return '${hijri.hDay} ${hijri.longMonthName}, ${hijri.hYear} h';
    return "${hijri.toFormat("dd MMMM, yyyy")} ${Strings.of(context).hijri}";
  }

  RemainingTime get remainingTimeToNextBirthDay {
    if (birthDate == null) {
      return const RemainingTime(
          months: 0, days: 0, hours: 0, minutes: 0, seconds: 0);
    }

    final nextYear = totalAge.years + 1;
    final nextBirthDay = birthDate!.copyWith(year: birthDate!.year + nextYear);

    final m = _differenceBetweenDates(nextBirthDay, DateTime.now());
    if (m.years == 1) {
      m.years = 0;
      m.months = 11;
      m.days = 30;
    } else if (m.days != 0) {
      m.days = m.days - 1;
    }

    final nextDay = 1.days.fromNow.copyWith(
        hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
    var remainTimeToNextDay = nextDay.difference(DateTime.now()).inSeconds;

    final hours = remainTimeToNextDay ~/ 1.hours.inSeconds;
    remainTimeToNextDay %= 1.hours.inSeconds;
    final minutes = remainTimeToNextDay ~/ 1.minutes.inSeconds;
    remainTimeToNextDay %= 1.minutes.inSeconds;
    final seconds = remainTimeToNextDay;

    return RemainingTime(
      months: m.months,
      days: m.days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
    );
  }

  _Age _differenceBetweenDates(DateTime date1, DateTime date2) {
    List<int> d1 = [date1.day, date1.month, date1.year];
    List<int> d2 = [date2.day, date2.month, date2.year];
    _Age res = _Age(years: 0, months: 0, days: 0);

    List<int> daysInMonth = [
      0,
      31,
      date1.isLeapYear ? 29 : 28,
      31,
      30,
      31,
      30,
      31,
      31,
      30,
      31,
      30,
      31
    ];

    if (d1[0] >= d2[0]) {
      res.days = d1[0] - d2[0];
    } else {
      res.days = daysInMonth[d1[1]--] + d1[0] - d2[0];
    }
    if (d1[1] >= d2[1]) {
      res.months = d1[1] - d2[1];
    } else {
      res.months = 12 + d1[1] - d2[1];
      d1[2]--;
    }
    res.years = d1[2] - d2[2];

    return res;
  }
}

////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
///////////////////////////////////////////

class Age {
  final int years;
  final int months;
  final int days;

  const Age({
    required this.years,
    required this.months,
    required this.days,
  });
}

class RemainingTime {
  final int months;
  final int days;
  final int hours;
  final int minutes;
  final int seconds;

  const RemainingTime({
    required this.months,
    required this.days,
    required this.hours,
    required this.minutes,
    required this.seconds,
  });
}

class DateDifference {
  final int years;
  final int months;
  final int days;

  const DateDifference({
    required this.years,
    required this.months,
    required this.days,
  });
}

class _Age {
  int _years;
  int _months;
  int _days;

  _Age({required int years, required int months, required int days})
      : _years = years,
        _months = months,
        _days = days;

  int get years => _years;
  set years(int value) {
    _years = value;
  }

  int get months => _months;
  set months(int value) {
    _months = value;
  }

  int get days => _days;
  set days(int value) {
    _days = value;
  }
}

// class _RemainingTime {
//   int _months;
//   int _days;
//   int _hours;
//   int _minutes;
//   int _seconds;

//   _RemainingTime({
//     required int months,
//     required int days,
//     required int hours,
//     required int minutes,
//     required int seconds,
//   })  : _months = months,
//         _days = days,
//         _hours = hours,
//         _minutes = minutes,
//         _seconds = seconds;

//   int get months => _months;
//   set months(int value) {
//     _months = value;
//   }

//   int get days => _days;
//   set days(int value) {
//     _days = value;
//   }

//   int get hours => _hours;
//   set hours(int value) {
//     _hours = value;
//   }

//   int get minutes => _minutes;
//   set minutes(int value) {
//     _minutes = value;
//   }

//   int get seconds => _seconds;
//   set seconds(int value) {
//     _seconds = value;
//   }
// }

// class _DateDifference {
//   int _years;
//   int _months;
//   int _days;

//   _DateDifference({
//     required int years,
//     required int months,
//     required int days,
//   })  : _years = years,
//         _months = months,
//         _days = days;

//   int get years => _years;
//   set years(int value) {
//     _years = value;
//   }

//   int get months => _months;
//   set months(int value) {
//     _months = value;
//   }

//   int get days => _days;
//   set days(int value) {
//     _days = value;
//   }
// }
