import 'package:daily/entities/task.dart';
import 'package:daily/widgets/common/task_item.dart';
import 'package:flutter/material.dart';

class ContentSection extends StatelessWidget {
  ContentSection({super.key, required this.tasks});

  final List<Task> tasks;

  late final List<Task> nextTasks = tasks.take(2).toList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: ListView.separated(
        itemCount: nextTasks.length,
        itemBuilder: (context, index) => TaskItem(
          task: nextTasks[index],
          dimmed: index > 0,
        ),
        separatorBuilder: (context, index) => const Divider(height: 0),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
