import 'package:flutter/material.dart';

class DateView extends StatelessWidget {
  const DateView(this.title, this.count, {Key? key}) : super(key: key);

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Expanded(
      child: Container(
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
            FittedBox(
              child: SelectableText(
                title,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            SelectableText(
              count,
              style: TextStyle(
                fontSize: 18,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
