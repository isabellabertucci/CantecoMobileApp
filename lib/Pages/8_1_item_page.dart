import 'package:flutter/material.dart';

import '../utils/theme.dart';
import '../widgets/customItem_impact.dart';
import '../widgets/custom_nutritional_stats.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              /* title */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tuna',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              /* image */
              /* */
              Container(
                width: 200.0,
                height: 200.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: CustomTheme.ultramarineBlue, width: 8)),
                // inner one
                child: Container(
                  width: 140.0,
                  height: 140.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomTheme.cultured,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Nutritional Value',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NutriStats(statsInfo: 'kcal', statsNumber: 565),
                    NutriStats(
                        statsInfo: 'protein', statsNumber: 160 /* + 'g' */),
                    NutriStats(statsInfo: 'fat', statsNumber: 14 /* + 'g' */),
                    NutriStats(statsInfo: 'carbs', statsNumber: 50 /* + 'g' */),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'Impact',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ItemStatsSimple(
                itemName: 'Water',
                type: '1500 liters',
              ),
              ItemStatsSimple(
                itemName: 'Carbon',
                type: '25 CO2e ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
