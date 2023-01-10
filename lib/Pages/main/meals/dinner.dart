import 'package:flutter/material.dart';
import '../../../utils/assets.dart';
import '../../../widgets/card_meals_menu.dart';
import 'menu_stats.dart';

class Dinner extends StatelessWidget {
  final String? value;
  const Dinner({super.key, this.value});

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
                assetName: Assets.imgPeixe,
                text: 'Codfish w/ potatoes',
                itemKcal: '421 Kcal',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const MenuStats(value: "Codfish w/ potatoes"),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.imgPeixe,
                text: 'Fish sticks Rice',
                itemKcal: '362 Kcal',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const MenuStats(value: "Fish sticks Rice"),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.imgVaca,
                text: 'Roasted Beef',
                itemKcal: '443 Kcal',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const MenuStats(value: "Roasted Beef"),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.imgCenoura,
                text: 'Veggie Paella',
                itemKcal: '355 kcal',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const MenuStats(value: "Veggie Paella"),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
