import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets.dart';
import '../widgets/customItem_impact.dart';
import '../widgets/custom_schedules_meal.dart';

class MySchedules extends StatefulWidget {
  const MySchedules({super.key});

  @override
  State<MySchedules> createState() => _MySchedulesState();
}

class _MySchedulesState extends State<MySchedules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              /* topbar */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    Assets.icArrowL,
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    'Your Schedules',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  SvgPicture.asset(
                    Assets.icClockC,
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
              /* mealToday */
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Today',
                        style: Theme.of(context).primaryTextTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              SchedulesMeal(
                mealName: 'Classic Chilli',
                time: 'Lunch from 12:30 - 14:30',
                kcal: 579,
                icon: Assets.icCamera,
              ),

              /* mealTommorow */
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Tomorrow',
                        style: Theme.of(context).primaryTextTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              SchedulesMeal(
                mealName: 'Fish Pasta',
                time: 'Lunch from 12:30 - 14:30',
                kcal: 359,
                icon: Assets.icHomeU,
              ),
              SizedBox(
                height: 20,
              ),
              SchedulesMeal(
                mealName: 'Green Beans with Mushrooms',
                time: 'Dinner from 19:30 - 21:30',
                kcal: 393,
                icon: Assets.icClockU,
              )
            ],
          ),
        ),
      ),
    );
  }
}
