import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItemSimple extends StatelessWidget {
  final String itemName;
  final String icon;
  final Function onTap;

  const CardItemSimple({
    super.key,
    required this.itemName,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: CustomTheme.eerieBlack.withOpacity(0.04),
          spreadRadius: 0,
          blurRadius: 3,
          offset: const Offset(0, 1),
        ),
      ], borderRadius: BorderRadius.circular(10)),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => onTap(),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomTheme.cultured,
              ),
              width: 50,
              height: 50,
              child: SvgPicture.asset(
                icon,
              ),
            ),
            title: Text(itemName,
                style: Theme.of(context).primaryTextTheme.subtitle1),
            subtitle: Text('1kg', style: Theme.of(context).textTheme.bodyText1),
          ),
        ),
      ),
    );
  }
}
