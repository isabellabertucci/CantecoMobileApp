import 'package:canteco_app/Pages/6_home_page.dart';
import 'package:canteco_app/Pages/9_profile_page.dart';
import 'package:canteco_app/Pages/8_search_page.dart';
import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:canteco_app/widgets/custom_buttom_home.dart';
import 'package:canteco_app/widgets/custom_card.dart';
import 'package:canteco_app/widgets/custom_button.dart';
import 'package:canteco_app/widgets/custom_imputs.dart';
import 'package:canteco_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '7_meals_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  var currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    MealsPage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: CustomTheme.ultramarineBlue,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) => {setState(() => currentIndex = index)},
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icHomeU,
                height: 26,
                color: currentIndex == 0
                    ? CustomTheme.ultramarineBlue
                    : CustomTheme.silver),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icUtensilsU,
                height: 26,
                color: currentIndex == 1
                    ? CustomTheme.ultramarineBlue
                    : CustomTheme.silver),
            label: 'Meals',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icSeachU,
                height: 26,
                color: currentIndex == 2
                    ? CustomTheme.ultramarineBlue
                    : CustomTheme.silver),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icUserU,
                height: 26,
                color: currentIndex == 3
                    ? CustomTheme.ultramarineBlue
                    : CustomTheme.silver),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
