import 'package:flutter/material.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: SafeArea(
          bottom: false,
          child: Container(
            padding: const EdgeInsets.all(30),
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  '오늘은',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '$count개의',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
                const Text(
                  '할 일이 남았어요!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
