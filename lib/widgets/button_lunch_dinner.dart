import 'package:flutter/material.dart';

class ButtonLunchDinner extends StatelessWidget {
  const ButtonLunchDinner({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(
          child: Text(
            'Lunch',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Tab(
          child: Text(
            'Dinner',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
