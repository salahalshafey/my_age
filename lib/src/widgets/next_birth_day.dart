import 'package:my_age/l10n/l10n.dart';
import 'package:my_age/src/widgets/date_view.dart';
import 'package:flutter/material.dart';

import '../models/person.dart';

class NextBirthDay extends StatelessWidget {
  const NextBirthDay(
    this.title,
    this.remainingTime, {
    super.key,
  });

  final String title;
  final RemainingTime remainingTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width - 20,
          child: Row(
            // children: age.entries.map((entry) {
            //   return DateView(entry.key, entry.value.toString());
            // }).toList(),

            children: [
              DateView(
                Strings.of(context).month,
                remainingTime.months.toString(),
              ),
              DateView(
                Strings.of(context).day,
                remainingTime.days.toString(),
              ),
              DateView(
                Strings.of(context).hour,
                remainingTime.hours.toString(),
              ),
              DateView(
                Strings.of(context).minute,
                remainingTime.minutes.toString(),
              ),
              DateView(
                Strings.of(context).second,
                remainingTime.seconds.toString(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
