import 'package:canteco_app/Pages/main/meals/lunch.dart';
import 'package:canteco_app/Pages/main/meals/dinner.dart';
import 'package:canteco_app/utils/assets.dart';
import 'package:flutter_svg/svg.dart';
import '../../../widgets/button_lunch_dinner.dart';
import '../../../widgets/input_date.dart';
import 'package:flutter/material.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({super.key});

  @override
  State<MealsPage> createState() => _MealsPageState();
}

List<Widget> pages = [
  const Lunch(),
  const Dinner(),
];

class _MealsPageState extends State<MealsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        Assets.icArrowL,
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Text(
                      'Menu',
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
                      'Date',
                      style: Theme.of(context).primaryTextTheme.headline3,
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
                const InputDate(text: 'Today', icon: Assets.icAngle),
                const SizedBox(height: 20),
                ButtonLunchDinner(tabController: _tabController),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: TabBarView(
                  controller: _tabController,
                  children: [
                    pages[0],
                    pages[1],
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
