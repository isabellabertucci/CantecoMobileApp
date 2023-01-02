import 'package:canteco_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
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
        title: Text(title, style: Theme.of(context).primaryTextTheme.subtitle1),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodyText1),
        trailing: SvgPicture.asset(
          Assets.icClose,
          height: 12,
          width: 12,
        ),
      ),
    );
  }
}
