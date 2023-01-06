import 'package:canteco_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../utils/assets.dart';
import '../../../widgets/custom_bar_chart.dart';
import '../../../widgets/custom_item_impact.dart';
import '../../../widgets/custom_nutritional_stats.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../widgets/custom_pop_up.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MenuStats extends StatefulWidget {
  const MenuStats({super.key});

  @override
  State<MenuStats> createState() => _MenuStatstate();
}

class _MenuStatstate extends State<MenuStats> {
  final List<BarChartModel> data = [
    BarChartModel(
      item: "Pasta",
      financial: 200,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    BarChartModel(
      item: "Beef",
      financial: 450,
      color: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    BarChartModel(
      item: "Carrot",
      financial: 20,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return const PopUpDialog(
              title: 'Confirm your order',
              description: 'Tuna Pasta scheduled for xx/xx/xx');
        });
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.item,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              /* LABEL */
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
                    'Meal Name',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  const SizedBox(
                    width: 25,
                    height: 25,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),

              /* GRAPH */
              Container(
                height: 200,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: charts.BarChart(
                  series,
                  animate: true,
                ),
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
                height: 10,
              ),
              const ItemStats(
                itemName: 'Beef',
                quantity: '100gr',
                impact: 450,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 10,
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
              CustomButton(text: 'Order', onTap: _showDialog),

              /* FIM */
            ],
          ),
        ),
      ),
    );
  }
}
