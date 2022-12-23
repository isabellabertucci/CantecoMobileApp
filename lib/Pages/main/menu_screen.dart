import 'package:canteco_app/Pages/main/home/home_page.dart';
import 'package:canteco_app/Pages/main/profile/profile_page.dart';
import 'package:canteco_app/Pages/main/search/search_page.dart';
import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'meals/meals_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  var currentIndex = 0;

  final List<Widget> _children = const [
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
