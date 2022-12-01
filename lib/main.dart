import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

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
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
