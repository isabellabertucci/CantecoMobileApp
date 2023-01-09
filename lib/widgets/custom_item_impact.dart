import 'package:flutter/material.dart';

class ItemStats extends StatelessWidget {
  final String itemName;
  final String quantity;
  final int impact;
  final dynamic color;

  const ItemStats({
    Key? key,
    required this.itemName,
    required this.quantity,
    required this.impact,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(),
          ],
        ),
        title: Row(
          children: [
            Text(
              itemName,
              style: Theme.of(context).primaryTextTheme.headline3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                quantity,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ],
        ),
        subtitle: Text(
          '$impact liters',
          style: Theme.of(context).primaryTextTheme.bodyText1,
        ),
        trailing: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class ItemStatsSimple extends StatelessWidget {
  final String itemName;
  final dynamic type;

  const ItemStatsSimple({
    Key? key,
    required this.itemName,
    required this.type,
  }) : super(key: key);

  /*  final List<Items> items_data = [
    ItemStatsSimple(itemName: 'Rice'),
    ItemStatsSimple(itemName: 'Beans'),
    ItemStatsSimple(itemName: 'Meat'),
    ItemStatsSimple(itemName: 'Tuna'),
    ItemStatsSimple(itemName: 'Pasta'),
  ]; */

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(),
          ],
        ),
        title: Text(
          itemName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          type.toString(),
          style: Theme.of(context).primaryTextTheme.bodyText1,
        ),
      ),
    );
  }
}
