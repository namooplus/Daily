import 'package:daily/widgets/home/content_section.dart';
import 'package:daily/widgets/home/summary_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _count = 13;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SummarySection(count: _count),
          ContentSection(),
        ],
      ),
    );
  }
}
