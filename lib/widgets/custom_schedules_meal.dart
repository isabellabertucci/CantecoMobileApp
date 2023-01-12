import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/assets.dart';
import '../utils/theme.dart';
import 'custom_pop_up.dart';

class SchedulesMeal extends StatefulWidget {
  final String mealName, time;
  final int kcal;
  final String icon;

  const SchedulesMeal({
    super.key,
    required this.mealName,
    required this.time,
    required this.kcal,
    required this.icon,
  });

  @override
  State<SchedulesMeal> createState() => _SchedulesMealState();
}

class _SchedulesMealState extends State<SchedulesMeal> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return const PopUpDialog(
              title: 'Cancel your order',
              description: 'Tuna Pasta scheduled for xx/xx/xx');
        });
  }

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
              SvgPicture.asset(widget.icon),
            ],
          ),
          title: Row(
            children: [
              Text(
                widget.mealName,
                style: Theme.of(context).primaryTextTheme.headline3,
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Text(
                '${widget.kcal} kcal | ',
                style: Theme.of(context).primaryTextTheme.bodyText1,
              ),
              Text(
                widget.time,
                style: Theme.of(context).primaryTextTheme.bodyText1,
              ),
            ],
          ),
          trailing: InkWell(
            onTap: _showDialog,
            child: SvgPicture.asset(
              Assets.icClose,
              height: 12,
              width: 12,
            ),
          ),
        ),
      ),
    );
  }
}
