import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets.dart';

class SchedulesMeal extends StatelessWidget {
  final String mealName, time;
  final int kcal;
  final String icon;

  const SchedulesMeal({
    super.key,
    required this.mealName,
    required this.time,
    required this.kcal,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
          ],
        ),
        title: Row(
          children: [
            Text(
              mealName,
              style: Theme.of(context).primaryTextTheme.headline3,
            ),
          ],
        ),
        subtitle: Row(
          children: [
            Text(
              kcal.toString() + ' kcal | ',
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
            Text(
              time,
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
          ],
        ),
        trailing: SvgPicture.asset(
          Assets.icClose,
          height: 12,
          width: 12,
        ),
      ),
    );
  }
}
