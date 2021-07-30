import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sc_03/resources/constants.dart';
import 'package:sc_03/theme/app_color.dart';
import 'package:sc_03/theme/theme_type.dart';

import 'package:shared_preferences/shared_preferences.dart';

// Dark and Light Styles for application

class MainTheme with ChangeNotifier {
  ///
  /// APPLICATION DARK STYLE
  ///

  final darkTheme = ThemeData(
    fontFamily: 'Roboto',
    primaryColor: AppColor.blue_900,
    brightness: Brightness.dark,
    //backgroundColor: const Color(0xFF212121),
    accentColor: AppColor.white,
    primaryColorLight: AppColor.blueGrey_500,
    primaryColorDark: AppColor.blueGrey_600,

    // accentIconTheme: IconThemeData(color: Colors.black),
    highlightColor: AppColor.cyan_300,
    indicatorColor: AppColor.yellow_200,
    hintColor: AppColor.green_200,
    errorColor: AppColor.red_100,
    canvasColor: AppColor.blue_600,
    dividerColor: AppColor.blue_600,
    secondaryHeaderColor: AppColor.black,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColor.white,
      ),
    ),
    scaffoldBackgroundColor: AppColor.blue_900,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.green_200,
      unselectedItemColor: AppColor.blueGrey_600,
    ),
    textTheme: TextTheme(
      headline4: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        letterSpacing: 0.25,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.15,
        color: Colors.white,
      ),
      overline: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 10,
        letterSpacing: 1.5,
        color: AppColor.blueGrey_600,
      ),
      caption: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        color: AppColor.blueGrey_500,
      ),
      bodyText1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.44,
        color: AppColor.blueGrey_600,
      ),
      bodyText2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.25,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.15,
        color: AppColor.blueGrey_600,
      ),
    ),
    dialogBackgroundColor: AppColor.blue_600,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((state) => Colors.white),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColor.blue_600,
    ),
  );

  ///
  /// APPLICATION LIGHT STYLE
  ///

  final lightTheme = ThemeData(
    fontFamily: 'Roboto',
    // primarySwatch: Colors.grey,
    primaryColor: AppColor.white_900,
    brightness: Brightness.light,
    // backgroundColor: const Color(0xFFE5E5E5),
    accentColor: AppColor.blue_800,
    // accentIconTheme: IconThemeData(color: Colors.white),
    canvasColor: Colors.white,
    dividerColor: AppColor.white_800,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColor.grey_500,
      ),
    ),
    scaffoldBackgroundColor: AppColor.white_900,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.cyan_900,
      unselectedItemColor: AppColor.grey_300,
    ),
    textTheme: TextTheme(
      headline4: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        letterSpacing: 0.25,
        color: AppColor.blue_800,
      ),
      headline6: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.15,
        color: AppColor.blue_800,
      ),
      overline: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 10,
        letterSpacing: 1.5,
        color: AppColor.grey_500,
      ),
      caption: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        color: AppColor.grey_500,
      ),
      bodyText1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.44,
        color: AppColor.grey_500,
      ),
      bodyText2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.25,
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.15,
        color: AppColor.grey_500,
      ),
    ),
    dialogBackgroundColor: Colors.white,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((state) => AppColor.grey_700),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColor.white_800,
    ),
  );

  // Active theme style
  late ThemeData _themeData;
  ThemeData getTheme() => _themeData;

  // Active theme type
  late ThemeType _activeThemeType;
  ThemeType getThemeType() => _activeThemeType;

  MainTheme() {
    // Initial active theme style and type
    initTheme();
  }

  void initTheme() {
    // Detected theme (light or dark)
    final brightness = SchedulerBinding.instance?.window.platformBrightness;
    if (brightness == Brightness.dark) {
      _themeData = darkTheme;
      _activeThemeType = ThemeType.dark;
    } else {
      _themeData = lightTheme;
      _activeThemeType = ThemeType.light;
    }

    // Get data from local save
    SharedPreferences.getInstance().then(
      (prefs) {
        final localThemeType = prefs.getString(Constants.ThemeType);

        if (localThemeType != null) {
          _activeThemeType = ThemeType.values
              .firstWhere((element) => element.toString() == localThemeType);
        } else {
          _activeThemeType = ThemeType.byDevice;
        }

        if (_activeThemeType == ThemeType.dark) {
          _themeData = darkTheme;
        } else if (_activeThemeType == ThemeType.light) {
          _themeData = lightTheme;
        } else {
          final brightness =
              SchedulerBinding.instance?.window.platformBrightness;
          if (brightness == Brightness.dark) {
            _themeData = darkTheme;
          } else {
            _themeData = lightTheme;
          }
        }

        notifyListeners();
      },
    );
  }

  // Change application Theme (light, dark, system)
  void setThemeStyle(ThemeType themeType) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(Constants.ThemeType, '$themeType');
    _activeThemeType = themeType;
    initTheme();
  }
}
