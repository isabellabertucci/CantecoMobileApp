import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String item;
  int financial;
  final charts.Color color;

  BarChartModel({
    required this.item,
    required this.financial,
    required this.color,
  });
}
