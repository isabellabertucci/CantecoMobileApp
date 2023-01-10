import 'package:flutter/material.dart';
import '../../../widgets/custom_item_impact.dart';

class CarbonPage extends StatelessWidget {
  const CarbonPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ItemStats(
            itemName: 'Other',
            quantity: '125gr',
            impact: 200,
            color: Colors.purple[300],
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemStats(
            itemName: 'Other',
            quantity: '100gr',
            impact: 450,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemStats(
            itemName: 'Other',
            quantity: '20gr',
            impact: 20,
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemStats(
            itemName: 'Other',
            quantity: '20gr',
            impact: 20,
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemStats(
            itemName: 'Other',
            quantity: '20gr',
            impact: 20,
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
