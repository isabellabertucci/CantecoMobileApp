import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/assets.dart';
import '../../../utils/routes.dart';
import '../../../widgets/custom_schedules_meal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.adaptive.arrow_back),
                  ),
                  Text(
                    AppLocalizations.of(context)!.yourSchedules,
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(
                      context,
                      Routes.yourScheduleHistoryPage,
                    ),
                    child: SvgPicture.asset(
                      Assets.icClockC,
                      height: 25,
                      width: 25,
                    ),
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
                        AppLocalizations.of(context)!.today,
                        style: Theme.of(context).primaryTextTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              const SchedulesMeal(
                mealName: 'Classic Chilli',
                time: 'Lunch from 12:30 - 14:30',
                kcal: 579,
                icon: Assets.imgVaca,
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
                        AppLocalizations.of(context)!.tomorrow,
                        style: Theme.of(context).primaryTextTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              const SchedulesMeal(
                mealName: 'Fish Pasta',
                time: 'Lunch from 12:30 - 14:30',
                kcal: 359,
                icon: Assets.imgPeixe,
              ),
              const SizedBox(
                height: 20,
              ),
              const SchedulesMeal(
                mealName: 'Green Beans with Mushrooms',
                time: 'Dinner from 19:30 - 21:30',
                kcal: 393,
                icon: Assets.imgCenoura,
              )
            ],
          ),
        ),
      ),
    );
  }
}
