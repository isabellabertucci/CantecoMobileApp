import 'package:flutter/material.dart';
import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../widgets/customItem_impact.dart';
import '../../../widgets/custom_nutritional_stats.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      Assets.icArrowL,
                      height: 25,
                      width: 25,
                    ),
                  ),
                  Text(
                    'Item Name',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  const SizedBox(
                    width: 25,
                    height: 25,
                  )
                ],
              ),
              const SizedBox(height: 50),
              /* image */
              /* */
              Container(
                width: 180.0,
                height: 180.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: CustomTheme.ultramarineBlue, width: 8)),
                // inner one
                child: Container(
                  width: 135.0,
                  height: 135.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomTheme.cultured,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Nutritional Value',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    NutriStats(statsInfo: 'kcal', statsNumber: 565),
                    NutriStats(
                        statsInfo: 'protein', statsNumber: 160 /* + 'g' */),
                    NutriStats(statsInfo: 'fat', statsNumber: 14 /* + 'g' */),
                    NutriStats(statsInfo: 'carbs', statsNumber: 50 /* + 'g' */),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    'Impact',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const ItemStatsSimple(
                itemName: 'Water',
                type: '1500 liters',
              ),
              const ItemStatsSimple(
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
