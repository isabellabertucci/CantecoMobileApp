import 'package:canteco_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItemSimple extends StatelessWidget {
  final String itemName;
  final String icon;

  CardItemSimple({
    super.key,
    required this.itemName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: SizedBox(
          width: 25,
          height: double.infinity,
          child: SvgPicture.asset(icon),
        ),
        title:
            Text(itemName, style: Theme.of(context).primaryTextTheme.subtitle1),
        subtitle: Text('1kg', style: Theme.of(context).textTheme.bodyText1),
      ),
    );
  }
}
