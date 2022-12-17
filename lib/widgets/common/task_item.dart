import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  TaskItem(
      {super.key, required this.label, this.description, this.dimmed = false});

  final String label;
  final String? description;
  final bool dimmed;

  late final TextStyle textStyle = dimmed
      ? const TextStyle(color: Colors.grey)
      : const TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(label, style: textStyle),
            if (description != null) ...[
              const SizedBox(height: 5),
              Text(description!, style: textStyle)
            ],
          ],
        ),
      ),
    );
  }
}
