import 'package:flutter/material.dart';

class ButtonLunchDinner extends StatelessWidget {
  final String title;
  final String titleTwo;
  final TabController tabController;

  const ButtonLunchDinner(
      {required this.tabController,
      super.key,
      required this.title,
      required this.titleTwo});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: [
        Tab(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        Tab(
          child: Text(
            titleTwo,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ],
    );
  }
}
