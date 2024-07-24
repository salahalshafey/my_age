import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:my_age/l10n/l10n.dart';

class DatePiker extends StatefulWidget {
  const DatePiker(this.addBirthDate, {Key? key}) : super(key: key);

  final Function addBirthDate;

  @override
  State<DatePiker> createState() => _DatePikerState();
}

class _DatePikerState extends State<DatePiker> {
  DateTime? date;

  void _showDateTimePicker(BuildContext ctx) {
    showDatePicker(
      context: ctx,
      initialDate: date ?? DateTime.now(), // DateTime(2002, 10, 29)
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      setState(() {
        if (pickedDate == null) return;
        date = pickedDate;
        widget.addBirthDate(date);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Text(
          Strings.of(context).dateOfBirth,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: GestureDetector(
            onTap: () => _showDateTimePicker(context),
            child: Row(
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    date == null
                        ? Strings.of(context).noDateChosen
                        : DateFormat(
                            "d MMMM, yyy",
                            Localizations.localeOf(context).languageCode,
                          ).format(date!),
                    // textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                IconButton(
                  onPressed: () => _showDateTimePicker(context),
                  icon: Icon(
                    Icons.date_range_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  tooltip: Strings.of(context).pickADate,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
