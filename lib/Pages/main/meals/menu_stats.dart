import 'package:canteco_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../widgets/customItem_impact.dart';
import '../../../widgets/custom_nutritional_stats.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuStats extends StatefulWidget {
  const MenuStats({super.key});

  @override
  State<MenuStats> createState() => _MenuStatstate();
}

class _MenuStatstate extends State<MenuStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              /* LABEL */
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                  Text(
                    'Color',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                ],
              ),

              /* ITENS */

              const SizedBox(
                height: 20,
              ),
              ItemStats(
                itemName: 'Pasta',
                quantity: '125gr',
                impact: 200,
                color: Colors.purple[300],
              ),
              const SizedBox(
                height: 15,
              ),
              const ItemStats(
                itemName: 'Beef',
                quantity: '100gr',
                impact: 450,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              const ItemStats(
                itemName: 'Carrot',
                quantity: '20gr',
                impact: 20,
                color: Colors.green,
              ),
              const SizedBox(
                height: 15,
              ),
              const ItemStats(
                  itemName: 'sugar',
                  quantity: '100gr',
                  impact: 50,
                  color: Colors.pink),

              /* NUTRITIONAL VALUE */
              const SizedBox(
                height: 15,
              ),
              Text(
                'Nutritional Value',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),

              /* NUTRISTATS */

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    NutriStats(statsInfo: 'kcal', statsNumber: 565),
                    NutriStats(
                        statsInfo: 'protein', statsNumber: 20 /* + 'g' */),
                    NutriStats(statsInfo: 'fat', statsNumber: 14 /* + 'g' */),
                    NutriStats(statsInfo: 'carbs', statsNumber: 50 /* + 'g' */),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(text: 'Order', onTap: () {}),
              const Spacer()

              /* FIM */
            ],
          ),
        ),
      ),
    );
  }
}
