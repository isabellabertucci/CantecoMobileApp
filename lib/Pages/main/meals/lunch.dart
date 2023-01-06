import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/routes.dart';
import '../../../widgets/card_meals_menu.dart';

class Lunch extends StatelessWidget {
  const Lunch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
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
          children: [
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.icClockC,
                text: 'Tuna pasta',
                itemKcal: '155 Kcal',
                onTap: () => Navigator.pushNamed(context, Routes.menuStatsPage),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.icClockC,
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
                assetName: Assets.icClockC,
                text: 'Chicken with pasta',
                itemKcal: '155 Kcal',
                onTap: () => Navigator.pushNamed(context, Routes.menuStatsPage),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.icClockC,
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
