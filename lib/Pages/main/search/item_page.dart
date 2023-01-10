import 'package:canteco_app/models/food.dart';
import 'package:flutter/material.dart';
import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../widgets/custom_item_impact.dart';
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
    final food = ModalRoute.of(context)!.settings.arguments as Food;
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
                      child: Icon(Icons.adaptive.arrow_back)),
                  Text(
                    food.itemName,
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
                      color: CustomTheme.ultramarineBlue,
                      width: 8,
                    )),
                // inner one
                child: Container(
                  width: 135.0,
                  height: 135.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomTheme.cultured,
                  ),
                  child: SvgPicture.asset(
                    food.img,
                    width: 120,
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
                  children: [
                    NutriStats(statsInfo: 'kcal', statsNumber: food.kcal),
                    NutriStats(
                        statsInfo: 'protein', statsNumber: '${food.protein}g'),
                    NutriStats(statsInfo: 'fat', statsNumber: '${food.fat}g'),
                    NutriStats(
                        statsInfo: 'carbs', statsNumber: '${food.carbs}g'),
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
              ItemStatsSimple(
                image: Assets.imgAgua,
                itemName: 'Water',
                type: "${food.waterImpact} liters",
              ),
              ItemStatsSimple(
                image: Assets.imgCo2,
                itemName: 'Carbon',
                type: "${food.carbonimpact} Coe2",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
