import 'package:hijri/hijri_calendar.dart';
import 'package:time/time.dart';

class Person {
  const Person([this.birthDate]);

  final DateTime? birthDate;

  Map<String, int> get totalAge {
    if (birthDate == null) {
      return {'years': 0, 'months': 0, 'days': 0};
    }

    return differenceBetweenDates(DateTime.now(), birthDate!);
  }

  String get dayOfBorn {
    if (birthDate == null) {
      return '';
    }

    final weekday = birthDate!.weekday;
    final daysOfTheWeek = [
      "",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ];

    return daysOfTheWeek[weekday];
  }

  String get hijriDate {
    if (birthDate == null || birthDate!.isBefore(DateTime(1937, 3, 14))) {
      return '';
    }

    final hijri = HijriCalendar.fromDate(birthDate!);

    return '${hijri.hDay} ${hijri.longMonthName}, ${hijri.hYear} h';
  }

  Map<String, int> get remainingTimeToNextBirthDay {
    if (birthDate == null) {
      return {'months': 0, 'days': 0, 'hours': 0, 'minutes': 0, 'seconds': 0};
    }

    final nextYear = totalAge['years']! + 1;
    final nextBirthDay = birthDate!.copyWith(year: birthDate!.year + nextYear);

    final m = differenceBetweenDates(nextBirthDay, DateTime.now());
    if (m['years'] == 1) {
      m['years'] = 0;
      m['months'] = 11;
      m['days'] = 30;
    } else if (m['days'] != 0) {
      m['days'] = m['days']! - 1;
    }

    final nextDay = 1.days.fromNow.copyWith(
        hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
    var remainTimeToNextDay = nextDay.difference(DateTime.now()).inSeconds;

    final hours = remainTimeToNextDay ~/ 1.hours.inSeconds;
    remainTimeToNextDay %= 1.hours.inSeconds;
    final minutes = remainTimeToNextDay ~/ 1.minutes.inSeconds;
    remainTimeToNextDay %= 1.minutes.inSeconds;
    final seconds = remainTimeToNextDay;

    return {
      //'years': m['years']!,
      'months': m['months']!,
      'days': m['days']!,
      'hours': hours,
      'minutes': minutes,
      'seconds': seconds,
    };
  }

  Map<String, int> differenceBetweenDates(DateTime date1, DateTime date2) {
    List<int> d1 = [date1.day, date1.month, date1.year];
    List<int> d2 = [date2.day, date2.month, date2.year];
    Map<String, int> res = {'years': 0, 'months': 0, 'days': 0};

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
      res['days'] = d1[0] - d2[0];
    } else {
      res['days'] = daysInMonth[d1[1]--] + d1[0] - d2[0];
    }
    if (d1[1] >= d2[1]) {
      res['months'] = d1[1] - d2[1];
    } else {
      res['months'] = 12 + d1[1] - d2[1];
      d1[2]--;
    }
    res['years'] = d1[2] - d2[2];

    return res;
  }
}
