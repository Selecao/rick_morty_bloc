import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sc_03/resources/constants.dart';
import 'package:sc_03/theme/app_color.dart';
import 'package:sc_03/theme/app_text_theme.dart';
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
    accentColor: AppColor.white,
    primaryColorLight: AppColor.blueGrey_500,
    primaryColorDark: AppColor.blueGrey_600,
    highlightColor: AppColor.cyan_300,
    indicatorColor: AppColor.yellow_200,
    hoverColor: AppColor.green_200,
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
    dialogBackgroundColor: AppColor.blue_600,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.green_200,
      unselectedItemColor: AppColor.blueGrey_600,
    ),
    textTheme: TextTheme(
      headline4: AppTextTheme.headline4,
      headline5: AppTextTheme.headline5,
      headline6: AppTextTheme.headline6,
      subtitle1: AppTextTheme.subtitle1,
      subtitle2: AppTextTheme.subtitle2,
      bodyText1: AppTextTheme.bodyText1,
      bodyText2: AppTextTheme.bodyText2,
      caption: AppTextTheme.caption,
      button: AppTextTheme.button,
      overline: AppTextTheme.overline,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((state) => AppColor.white),
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
    primaryColor: AppColor.white_900,
    brightness: Brightness.light,
    accentColor: AppColor.blue_800,
    primaryColorLight: AppColor.blueGrey_500,
    primaryColorDark: AppColor.grey_300,
    highlightColor: AppColor.cyan_300,
    indicatorColor: AppColor.yellow_200,
    hoverColor: AppColor.cyan_300,
    hintColor: AppColor.green_200,
    errorColor: AppColor.red_100,
    canvasColor: AppColor.white_800,
    dividerColor: AppColor.white_800,
    secondaryHeaderColor: AppColor.black,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColor.white,
      ),
    ),
    scaffoldBackgroundColor: AppColor.white_900,
    dialogBackgroundColor: AppColor.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.cyan_300,
      unselectedItemColor: AppColor.grey_300,
    ),
    textTheme: TextTheme(
      headline4: AppTextTheme.headline4.copyWith(color: AppColor.blue_800),
      headline5: AppTextTheme.headline5.copyWith(color: AppColor.blue_800),
      headline6: AppTextTheme.headline6.copyWith(color: AppColor.blue_800),
      subtitle1: AppTextTheme.subtitle1.copyWith(color: AppColor.blue_800),
      subtitle2: AppTextTheme.subtitle2.copyWith(color: AppColor.grey_500),
      bodyText1: AppTextTheme.bodyText1.copyWith(color: AppColor.blue_800),
      bodyText2: AppTextTheme.bodyText2.copyWith(color: AppColor.blue_800),
      caption: AppTextTheme.caption.copyWith(color: AppColor.grey_500),
      button: AppTextTheme.button,
      overline: AppTextTheme.overline.copyWith(color: AppColor.grey_300),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((state) => AppColor.black),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColor.blue_600,
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
