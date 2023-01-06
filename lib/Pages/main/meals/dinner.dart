import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/routes.dart';
import '../../../widgets/card_meals_menu.dart';

class Dinner extends StatelessWidget {
  const Dinner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Text(
              '19:30 - 21:30',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.icDatabase,
                text: 'Tuna pasta',
                itemKcal: '155 Kcal',
                onTap: () => Navigator.pushNamed(context, Routes.menuStatsPage),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.icDatabase,
                text: 'Bean bolognese',
                itemKcal: '155 Kcal',
                onTap: () => Navigator.pushNamed(context, Routes.menuStatsPage),
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
                onTap: () => Navigator.pushNamed(context, Routes.menuStatsPage),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.icDatabase,
                text: 'Sautéed Legumes',
                itemKcal: '155 kcal',
                onTap: () => Navigator.pushNamed(context, Routes.menuStatsPage),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
