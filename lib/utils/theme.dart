import 'package:flutter/material.dart';

class CustomTheme {
  static final CustomTheme _instance = CustomTheme._internal();

  factory CustomTheme(Color ceruleanCrayola) => _instance;

  CustomTheme._internal();

  static const white = Color(0xffffffff);
  static const eerieBlack = Color(0xff1E1E1E);
  static const battleshipGray = Color(0xff858585);
  static const silver = Color(0xffC1C1C1);
  static const cultured = Color(0xffF5F5F5);
  static const ultramarineBlue = Color(0xff325FFF);
  static const blueCrayola = Color(0xff5B7CF1);
  static const periwinkleCrayola = Color(0xffD4DEFF);
  static const sapphireBlue = Color(0xff176BA0);
  static const ceruleanCrayola = Color(0xff19AADE);
  static const skyBlueCrayola = Color(0xff1AC9E6);
  static const redPigment = Color(0xffEA251A);

  static ThemeData lightMode(BuildContext context) {
    return ThemeData(
      primarySwatch: generateMaterialColorFromColor(ultramarineBlue),
      primaryColor: ultramarineBlue,
      primaryColorLight: ultramarineBlue,
      primaryTextTheme: getTextTheme(textColor: eerieBlack),
      textTheme: getTextTheme(textColor: silver),
      elevatedButtonTheme: getButtonTheme(),
      brightness: Brightness.light,
    );
  }

  static ElevatedButtonThemeData getButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: ultramarineBlue,
          disabledBackgroundColor: periwinkleCrayola,
          disabledForegroundColor: white,
          textStyle: getTextTheme(textColor: white).headline1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    );
  }

  static TextTheme getTextTheme({required Color textColor}) {
    return TextTheme(
      // Title one
      headline1: TextStyle(
          fontSize: 20,
          color: textColor,
          fontWeight: FontWeight.w600,
          fontFamily: 'inter'),
      // Title two
      headline2: TextStyle(
          fontSize: 18,
          color: textColor,
          fontWeight: FontWeight.w600,
          fontFamily: 'inter'),
      // subtitle S
      headline3: TextStyle(
          fontSize: 16,
          color: textColor,
          fontWeight: FontWeight.w600,
          fontFamily: 'inter'),
      //  subtitle M
      headline4: TextStyle(
          fontSize: 16,
          color: textColor,
          fontWeight: FontWeight.w500,
          fontFamily: 'inter'),
      //  subtitle R
      headline5: TextStyle(
          fontSize: 16,
          color: textColor,
          fontWeight: FontWeight.w400,
          fontFamily: 'inter'),
      // Body S
      headline6: TextStyle(
          fontSize: 14,
          color: textColor,
          fontWeight: FontWeight.w600,
          fontFamily: 'inter'),
      // Body M
      subtitle1: TextStyle(
          fontSize: 14,
          color: textColor,
          fontWeight: FontWeight.w500,
          fontFamily: 'inter'),
      // Caption M
      subtitle2: TextStyle(
          fontSize: 12,
          color: textColor,
          fontWeight: FontWeight.w500,
          fontFamily: 'inter'),
      // Caption R
      bodyText1: TextStyle(
          fontSize: 12,
          color: textColor,
          fontWeight: FontWeight.w400,
          fontFamily: 'inter'),
      // Sm Caption M
      bodyText2: TextStyle(
          fontSize: 10,
          color: textColor,
          fontWeight: FontWeight.w500,
          fontFamily: 'inter'),
      // Sm Caption R
      caption: TextStyle(
          fontSize: 10,
          color: textColor,
          fontWeight: FontWeight.w400,
          fontFamily: 'inter'),
    );
  }

  static MaterialColor generateMaterialColorFromColor(Color color) {
    return MaterialColor(color.value, {
      50: Color.fromRGBO(color.red, color.green, color.blue, 0.1),
      100: Color.fromRGBO(color.red, color.green, color.blue, 0.2),
      200: Color.fromRGBO(color.red, color.green, color.blue, 0.3),
      300: Color.fromRGBO(color.red, color.green, color.blue, 0.4),
      400: Color.fromRGBO(color.red, color.green, color.blue, 0.5),
      500: Color.fromRGBO(color.red, color.green, color.blue, 0.6),
      600: Color.fromRGBO(color.red, color.green, color.blue, 0.7),
      700: Color.fromRGBO(color.red, color.green, color.blue, 0.8),
      800: Color.fromRGBO(color.red, color.green, color.blue, 0.9),
      900: Color.fromRGBO(color.red, color.green, color.blue, 1.0),
    });
  }
}
