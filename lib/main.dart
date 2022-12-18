import 'package:canteco_app/Pages/4_onboarding.dart';
import 'package:canteco_app/Pages/6_home_page.dart';
import 'package:canteco_app/Pages/9_profile_page.dart';
import 'package:canteco_app/Pages/8_search_page.dart';
import 'package:canteco_app/Pages/test.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'Pages/1_login_page.dart';
import 'Pages/3_sign_up_page.dart';
import 'Pages/5_1_your_schedules.dart';
import 'Pages/5_menu_screen.dart';
import 'Pages/7_meals_page.dart';
import 'Pages/7_1_menu_stats.dart';
import 'Pages/5_2_price_list_page.dart';
import 'Pages/validate_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canteco',
      theme: CustomTheme.lightMode(context),
      themeMode: ThemeMode.light,
      home: const MySchedules(),
      /* MenuStats */
      debugShowCheckedModeBanner: false,
    );
  }
}
