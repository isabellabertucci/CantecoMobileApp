import 'package:canteco_app/Pages/main/meals/water_page.dart';
import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../widgets/button_lunch_dinner.dart';
import '../../../widgets/custom_bar_chart.dart';
import '../../../widgets/custom_nutritional_stats.dart';
import '../../../widgets/custom_pop_up.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'carbon_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MenuStats extends StatefulWidget {
  final String value;
  final DateTime time;
  const MenuStats({super.key, required this.value, required this.time});

  @override
  State<MenuStats> createState() => _MenuStatstate();
}

List<Widget> pages = [
  const WaterPage(),
  const CarbonPage(),
];

class _MenuStatstate extends State<MenuStats>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
          return PopUpDialog(
              title: AppLocalizations.of(context)!.confirmM,
              description:
                  '${widget.value} ${AppLocalizations.of(context)!.scheduleFor} ${widget.time.day}/${widget.time.month} /${widget.time.year}');
        });
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "chart",
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
                      child: Icon(Icons.adaptive.arrow_back)),
                  Text(
                    widget.value,
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  const SizedBox(
                    width: 25,
                    height: 25,
                  )
                ],
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
              ButtonLunchDinner(
                  title: AppLocalizations.of(context)!.water,
                  titleTwo: AppLocalizations.of(context)!.carbon,
                  tabController: _tabController),
              Expanded(
                  child: TabBarView(
                controller: _tabController,
                children: [
                  pages[0],
                  pages[1],
                ],
              )),

              /* NUTRITIONAL VALUE */

              Text(
                AppLocalizations.of(context)!.nutritional,
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
                  children: [
                    const NutriStats(statsInfo: 'kcal', statsNumber: 565),
                    NutriStats(
                        statsInfo: AppLocalizations.of(context)!.protein,
                        statsNumber: 20 /* + 'g' */),
                    NutriStats(
                        statsInfo: AppLocalizations.of(context)!.fat,
                        statsNumber: 14 /* + 'g' */),
                    NutriStats(
                        statsInfo: AppLocalizations.of(context)!.carbs,
                        statsNumber: 50 /* + 'g' */),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  text: AppLocalizations.of(context)!.order,
                  onTap: _showDialog),

              /* FIM */
            ],
          ),
        ),
      ),
    );
  }
}
