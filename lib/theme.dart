import 'package:chatui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: kContentColorLightTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(bodyColor: kContentColorLightTheme),
      colorScheme: const ColorScheme.light(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: kContentColorLightTheme.withOpacity(0.8),
        selectedIconTheme: const IconThemeData(color: kPrimaryColor),
        unselectedItemColor: kContentColorLightTheme.withOpacity(0.3),
      ));
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kContentColorLightTheme,
      appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: kContentColorDarkTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(bodyColor: kContentColorDarkTheme),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: kContentColorLightTheme,
          selectedItemColor: Colors.white70,
          unselectedItemColor: kContentColorDarkTheme.withOpacity(0.3),
          selectedIconTheme: const IconThemeData(color: kPrimaryColor)));
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0, backgroundColor: kPrimaryColor);

class MyTheme extends ChangeNotifier {
  late Brightness brightness;

  MyTheme({this.brightness = Brightness.light});

  void toggleTheme() {
    brightness = brightness == Brightness.light ? Brightness.dark : Brightness.light;
    notifyListeners();
  }
}

MyTheme currentTheme =
    MyTheme(brightness: MediaQueryData.fromWindow(WidgetsBinding.instance.window).platformBrightness);
