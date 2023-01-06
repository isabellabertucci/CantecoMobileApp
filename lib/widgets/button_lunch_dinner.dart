import 'package:flutter/material.dart';

class ButtonLunchDinner extends StatelessWidget {
  final TabController tabController;

  const ButtonLunchDinner({required this.tabController, super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: [
        Tab(
          child: Text(
            'Lunch',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        Tab(
          child: Text(
            'Dinner',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ],
    );
  }
}
