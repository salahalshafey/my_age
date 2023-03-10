import 'package:my_age/widgets/date_view.dart';
import 'package:flutter/material.dart';

class DateViewList extends StatelessWidget {
  const DateViewList(this.title, this.age, {Key? key}) : super(key: key);

  final String title;
  final Map<String, int> age;

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
            children: age.entries.map((entry) {
              return DateView(entry.key, entry.value.toString());
            }).toList(),
          ),
        ),
      ],
    );
  }
}
