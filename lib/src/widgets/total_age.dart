import 'package:my_age/l10n/l10n.dart';
import 'package:my_age/src/widgets/date_view.dart';
import 'package:flutter/material.dart';

import '../models/person.dart';

class TotalAge extends StatelessWidget {
  const TotalAge(
    this.title,
    this.age, {
    super.key,
  });

  final String title;
  final Age age;

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
                Strings.of(context).year,
                age.years.toString(),
              ),
              DateView(
                Strings.of(context).month,
                age.months.toString(),
              ),
              DateView(
                Strings.of(context).day,
                age.days.toString(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
