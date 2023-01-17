import 'package:canteco_app/Pages/main/meals/lunch.dart';
import 'package:canteco_app/Pages/main/meals/dinner.dart';
import 'package:canteco_app/utils/assets.dart';
import '../../../utils/routes.dart';
import '../../../widgets/button_lunch_dinner.dart';
import '../../../widgets/input_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({super.key});

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late DateTime tempo = DateTime.now();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pushNamedAndRemoveUntil(
                          context, Routes.menuPage, (route) => false),
                      child: Icon(Icons.adaptive.arrow_back),
                    ),
                    Text(
                      AppLocalizations.of(context)!.menu,
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                    const SizedBox(
                      height: 25,
                      width: 25,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.date,
                      style: Theme.of(context).primaryTextTheme.headline3,
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
                InputDate(
                  text: 'Today',
                  icon: Assets.icAngle,
                  callBack: (time) {
                    setState(() {
                      tempo = time;
                    });
                  },
                ),
                const SizedBox(height: 20),
                ButtonLunchDinner(
                    title: AppLocalizations.of(context)!.lunch,
                    titleTwo: AppLocalizations.of(context)!.dinner,
                    tabController: _tabController),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: TabBarView(
                  controller: _tabController,
                  children: [
                    Lunch(time: tempo),
                    Dinner(time: tempo),
                  ],
                ))
              ],
            ),
          ),
        )),
      ),
    );
  }
}
