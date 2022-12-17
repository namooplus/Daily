import 'package:daily/entities/task.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.task, this.dimmed = false});

  final Task task;
  final bool dimmed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Opacity(
        opacity: dimmed ? 0.5 : 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                task.label,
                style: const TextStyle(fontSize: 17),
              ),
              if (task.dateTime != null) ...[
                const SizedBox(height: 7),
                Row(children: [
                  const Icon(Icons.access_time, size: 15),
                  const SizedBox(width: 5),
                  Text(DateFormat('yyyy-MM-dd HH:mm').format(task.dateTime!))
                ])
              ],
              if (task.location != null) ...[
                const SizedBox(height: 7),
                Row(children: [
                  const Icon(Icons.location_on_outlined, size: 15),
                  const SizedBox(width: 5),
                  Text(task.location!)
                ])
              ],
            ],
          ),
        ),
      ),
    );
  }
}
