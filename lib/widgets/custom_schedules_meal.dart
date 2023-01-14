import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/assets.dart';
import '../utils/theme.dart';
import 'custom_pop_up.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          return PopUpDialog(
              title: AppLocalizations.of(context)!.cancelM,
              description:
                  'Tuna Pasta ${AppLocalizations.of(context)!.scheduleFor} xx/xx/xx');
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
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomTheme.cultured),
                child: SvgPicture.asset(
                  widget.icon,
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          title: Row(
            children: [
              Text(
                widget.mealName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
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
