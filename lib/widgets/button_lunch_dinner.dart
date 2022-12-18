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

/* final List<CardMealsMenu> cards_data = [
  Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Tuna pasta',
                      itemKcal: '155 Kcal',
                    ),
                  ),
  Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Tuna pasta',
                      itemKcal: '155 Kcal',
                    ),
                  ),Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Tuna pasta',
                      itemKcal: '155 Kcal',
                    ),
                  ),Expanded(
                    child: CardMealsMenu(
                      assetName: Assets.icDatabase,
                      text: 'Tuna pasta',
                      itemKcal: '155 Kcal',
                    ),
                  ),
]; */