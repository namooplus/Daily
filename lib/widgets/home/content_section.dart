import 'package:daily/widgets/common/task_item.dart';
import 'package:flutter/material.dart';

class ContentSection extends StatelessWidget {
  ContentSection({super.key});

  final List<String> todo = <String>['A', 'B'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: todo.length,
        itemBuilder: (context, index) => TaskItem(
          label: todo[index],
          description: 'Test description',
          dimmed: index > 0,
        ),
        separatorBuilder: (context, index) => const Divider(height: 0),
      ),
    );
  }
}
