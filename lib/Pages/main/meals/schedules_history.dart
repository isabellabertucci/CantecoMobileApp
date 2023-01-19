import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/assets.dart';
import '../../../widgets/custom_schedules_meal.dart';
import '../../../widgets/input_date.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyHistorySchedules extends StatefulWidget {
  const MyHistorySchedules({super.key});

  @override
  State<MyHistorySchedules> createState() => _MyHistorySchedulesState();
}

class _MyHistorySchedulesState extends State<MyHistorySchedules> {
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
                    AppLocalizations.of(context)!.history,
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  SvgPicture.asset(
                    Assets.icClockU,
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
                  Text(
                    AppLocalizations.of(context)!.date,
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              const InputDate(text: 'Last Week', icon: Assets.icAngle),
              const SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '19/12/2021',
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
                mealName: 'Sautéed Reindeer',
                time: 'Lunch from 12:30 - 14:30',
                kcal: 619,
                icon: Assets.imgCenoura,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
