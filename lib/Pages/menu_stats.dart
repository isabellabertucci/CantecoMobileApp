import 'package:canteco_app/widgets/card_item_simple.dart';

import 'package:flutter/material.dart';
import '../widgets/customItem_impact.dart';
import '../widgets/custom_nutritional_stats.dart';
import 'package:canteco_app/utils/assets.dart';
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
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* LABEL */

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Color',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),

              /* ITENS */

              SizedBox(
                height: 20,
              ),
              ItemStats(
                itemName: 'Pasta',
                quantity: '125gr',
                impact: 200,
                color: Colors.purple[300],
              ),
              SizedBox(
                height: 15,
              ),
              ItemStats(
                itemName: 'Beef',
                quantity: '100gr',
                impact: 450,
                color: Colors.blue,
              ),
              SizedBox(
                height: 15,
              ),
              ItemStats(
                itemName: 'Carrot',
                quantity: '20gr',
                impact: 20,
                color: Colors.green,
              ),
              SizedBox(
                height: 15,
              ),
              ItemStats(
                  itemName: 'sugar',
                  quantity: '100gr',
                  impact: 50,
                  color: Colors.pink),

              /* NUTRITIONAL VALUE */

              Text(
                'Nutritional Value',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),

              /* NUTRISTATS */

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
                        statsInfo: 'protein', statsNumber: 20 /* + 'g' */),
                    NutriStats(statsInfo: 'fat', statsNumber: 14 /* + 'g' */),
                    NutriStats(statsInfo: 'carbs', statsNumber: 50 /* + 'g' */),
                  ],
                ),
              ),

              /* FIM */
            ],
          ),
        ),
      ),
    );
  }
}
