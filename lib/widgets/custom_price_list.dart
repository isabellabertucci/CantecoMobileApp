import 'package:canteco_app/utils/theme.dart';
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
        color: CustomTheme.cultured,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              user,
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
            Text(
              '$withoutIva€',
              style: Theme.of(context).primaryTextTheme.subtitle2,
            ),
            Text(
              '$withIva€',
              style: Theme.of(context).primaryTextTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
