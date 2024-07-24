import 'package:flutter/material.dart';
import 'package:my_age/l10n/l10n.dart';
import 'package:time/time.dart';

class NextBirthDayLive extends StatefulWidget {
  const NextBirthDayLive(this.addBirthDate, this.date, {Key? key})
      : super(key: key);
  final Function addBirthDate;
  final DateTime? date;

  @override
  State<NextBirthDayLive> createState() => _NextBirthDayLiveState();
}

class _NextBirthDayLiveState extends State<NextBirthDayLive> {
  bool seeNextBirthDay = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        setState(() {
          seeNextBirthDay = !seeNextBirthDay;
        });

        while (seeNextBirthDay) {
          widget.addBirthDate(widget.date);
          await 1.seconds.delay;
        }
      },
      icon: Icon(seeNextBirthDay ? Icons.pause : Icons.play_arrow),
      iconSize: 50,
      color: Theme.of(context).colorScheme.primary,
      tooltip: seeNextBirthDay
          ? Strings.of(context).pauseNextBirthdayLive
          : Strings.of(context).playNextBirthdayLive,
      /* child: Text(seeNextBirthDay
          ? 'STOP NEXT BIRTHDAY LIVE'
          : 'SEE NEXT BIRTHDAY LIVE'),*/
    );
  }
}
