import 'package:daily/entities/task.dart';
import 'package:daily/widgets/home/content_section.dart';
import 'package:daily/widgets/home/summary_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> tasks = [
    Task('밥 먹기', dateTime: DateTime(2022, 12, 18), location: '집'),
    Task('꽃에 물 주기', dateTime: DateTime(2022, 12, 18), location: '집'),
    Task('Flutter 공부하기', location: '카페')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SummarySection(count: tasks.length),
          ContentSection(tasks: tasks),
        ],
      ),
    );
  }
}
