import 'package:canteco_app/Langs/l10n.dart';
import 'package:canteco_app/Pages/login/onboarding.dart';
import 'package:canteco_app/Pages/login/sign_up_page.dart';
import 'package:canteco_app/Pages/login/sign_up_page_sec.dart';
import 'package:canteco_app/Pages/main/home/my_schedules.dart';
import 'package:canteco_app/Pages/main/home/price_list_page.dart';
import 'package:canteco_app/Pages/main/meals/schedules_history.dart';
import 'package:canteco_app/Pages/main/menu_screen.dart';
import 'package:canteco_app/Pages/main/meals/menu_stats.dart';
import 'package:canteco_app/Pages/main/meals/meals_page.dart';
import 'package:canteco_app/Pages/main/search/item_page.dart';
import 'package:canteco_app/Pages/main/search/search_page.dart';
import 'package:canteco_app/Pages/main/profile/profile_page.dart';
import 'package:canteco_app/utils/routes.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Pages/login/login_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: MaterialApp(
          title: 'Canteco',
          theme: CustomTheme.lightMode(context),
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onboardingPage,
          routes: getRoutes(context),
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
        ),
      ),
    );
  }

  Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return <String, WidgetBuilder>{
      Routes.loginPage: (context) => const LoginPage(),
      Routes.signUpMain: (context) => const SignUpPageMain(),
      Routes.signUpSec: (context) => const SignUpPageSec(),
      Routes.onboardingPage: (context) => const OnBoarding(),
      Routes.menuPage: (context) => const MainScreen(),
      Routes.yourSchedulePage: (context) => const MySchedules(),
      Routes.yourScheduleHistoryPage: (context) => const MyHistorySchedules(),
      Routes.priceListPage: (context) => const PriceListPage(),
      Routes.mealsPage: (context) => const MealsPage(),
      Routes.individualItemPage: (context) => const ItemPage(),
      Routes.menuStatsPage: (context) =>
          MenuStats(time: DateTime.now(), value: ''),
      Routes.searchPage: (context) => const SearchPage(),
      Routes.profilePage: (context) => const ProfilePage(),
    };
  }
}
