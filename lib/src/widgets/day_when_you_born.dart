import 'package:flutter/material.dart';
import 'package:my_age/l10n/l10n.dart';

class DayWhenYouBorn extends StatelessWidget {
  const DayWhenYouBorn(this.dayOfBorn, this.hijriDateOfBorn, {Key? key})
      : super(key: key);

  final String dayOfBorn;
  final String hijriDateOfBorn;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Column(
      children: [
        const SizedBox(height: 10),
        Text(
          Strings.of(context).dayWhenYouBorn,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.1),
                color.withOpacity(0.2),
                color.withOpacity(0.3),
                color.withOpacity(0.4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(
              width: 0.5,
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SelectableText(
                dayOfBorn,
                style: TextStyle(
                  fontSize: 18,
                  color: color,
                ),
              ),
              SelectableText(
                hijriDateOfBorn,
                style: TextStyle(
                  fontSize: 18,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
