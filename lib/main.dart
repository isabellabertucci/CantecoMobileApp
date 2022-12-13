import 'package:canteco_app/Pages/home_page.dart';
import 'package:canteco_app/Pages/profile_page.dart';
import 'package:canteco_app/Pages/search_pageD.dart';
import 'package:canteco_app/Pages/serach_page.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'Pages/login_page.dart';
import 'Pages/main_screen.dart';
import 'Pages/menu_stats.dart';

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
      home: const LoginPage(),
      /* MenuStats */
      debugShowCheckedModeBanner: false,
    );
  }
}
