import 'package:canteco_app/utils/assets.dart';
import '../../../widgets/button_lunch_dinner.dart';
import '../../../widgets/card_meals_menu.dart';
import '../../../widgets/input_date.dart';
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
              const SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    'Date',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              const InputDate(text: 'Today', icon: Assets.icAngle),
              const SizedBox(height: 20),
              const ButtonLunchDinner(),
              const SizedBox(
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Tuna pasta',
                      itemKcal: '155 Kcal',
                    ),
                  ),
                  SizedBox(width: 16),
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
                children: const [
                  Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Chicken with pasta',
                      itemKcal: '155 Kcal',
                    ),
                  ),
                  SizedBox(width: 16),
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
