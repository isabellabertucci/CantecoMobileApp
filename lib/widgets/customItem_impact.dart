import 'package:flutter/material.dart';

class ItemStats extends StatelessWidget {
  final String itemName;
  final String quantity;
  final int impact;
  final color;

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
          children: [
            FlutterLogo(),
          ],
        ),
        title: Row(
          children: [
            Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                quantity,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        subtitle: Text(impact.toString() + ' liters'),
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
  final String quantity;

  const ItemStatsSimple({
    Key? key,
    required this.itemName,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(),
          ],
        ),
        title: Text(
          itemName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(quantity),
      ),
    );
  }
}
