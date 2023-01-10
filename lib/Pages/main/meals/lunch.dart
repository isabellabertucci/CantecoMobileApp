import 'package:canteco_app/Pages/main/meals/menu_stats.dart';
import 'package:flutter/material.dart';
import '../../../utils/assets.dart';
import '../../../widgets/card_meals_menu.dart';

class Lunch extends StatelessWidget {
  final String? value;
  const Lunch({super.key, this.value});

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
                assetName: Assets.imgPeixe,
                text: 'Tuna pasta',
                itemKcal: '155 Kcal',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MenuStats(value: "Tuna pasta"),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.imgVaca,
                text: 'Bean bolognese',
                itemKcal: '155 Kcal',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const MenuStats(value: "Bean bolognese"),
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
                text: 'Chicken with pasta',
                itemKcal: '155 Kcal',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const MenuStats(value: "Chicken with pasta"),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CardMealsMenu(
                assetName: Assets.imgCenoura,
                text: 'Sautéed Legumes',
                itemKcal: '155 kcal',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const MenuStats(value: "Sautéed Legumes"),
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
