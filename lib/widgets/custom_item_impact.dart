import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/theme.dart';

class ItemStats extends StatelessWidget {
  final String itemName;
  final String quantity;
  final String measure;
  final dynamic impact;
  final dynamic color;
  final dynamic image;

  const ItemStats({
    Key? key,
    required this.itemName,
    required this.quantity,
    required this.impact,
    required this.color,
    this.image,
    required this.measure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: CustomTheme.eerieBlack.withOpacity(0.04),
          spreadRadius: 0,
          blurRadius: 3,
          offset: const Offset(0, 1),
        ),
      ], borderRadius: BorderRadius.circular(10)),
      child: Card(
        child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                height: 45,
              ),
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
            '$impact $measure',
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
      ),
    );
  }
}

class ItemStatsSimple extends StatelessWidget {
  final String itemName;
  final dynamic type;
  final dynamic image;

  const ItemStatsSimple({
    Key? key,
    required this.itemName,
    required this.type,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomTheme.cultured,
              ),
              child: SvgPicture.asset(
                image,
                width: 45,
                height: 45,
              ),
            )
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
