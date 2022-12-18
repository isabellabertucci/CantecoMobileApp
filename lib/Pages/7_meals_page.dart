import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/widgets/input_search.dart';
import '../widgets/button_lunch_dinner.dart';
import '../widgets/card_meals_menu.dart';
import '../widgets/input_date.dart';
import 'package:flutter/material.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({super.key});

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Menu',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    'Date',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              InputDate(text: 'Today', icon: Assets.icAngle),
              SizedBox(height: 20),
              ButtonLunchDinner(),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    '12:30 - 14:30',
                    style: Theme.of(context).primaryTextTheme.headline6,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Tuna pasta',
                      itemKcal: '155 Kcal',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Bean bolognese',
                      itemKcal: '155 Kcal',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Chicken with pasta',
                      itemKcal: '155 Kcal',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Sautéed Legumes',
                      itemKcal: '155 kcal',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
