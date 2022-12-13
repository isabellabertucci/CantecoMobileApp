import 'package:flutter/material.dart';

class PriceList extends StatelessWidget {
  final String user;
  final String withoutIva;
  final String withIva;

  PriceList(
      {required this.user, required this.withoutIva, required this.withIva});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.grey[400],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(user),
            Text('$withoutIva€'),
            Text('$withIva€'),
          ],
        ),
      ),
    );
  }
}
