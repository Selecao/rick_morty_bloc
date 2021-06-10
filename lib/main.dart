import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sc_03/screens/characters/screen.dart';
import 'package:sc_03/screens/episode/screen.dart';
import 'package:sc_03/screens/episodes_list/screen.dart';
import 'package:sc_03/screens/location/screen.dart';
import 'package:sc_03/screens/locations_list/screen.dart';
import 'package:sc_03/screens/profile/screen.dart';
import 'package:sc_03/theme/color_theme.dart';
//import 'package:sc_03/screens/splash/screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorTheme.transparent, // transparent status bar
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(),
        fontFamily: 'Roboto',
        //primarySwatch: Colors.blue,
        scaffoldBackgroundColor: ColorTheme.blue_900,
        //accentColor: ColorTheme.blue_900,
        //backgroundColor: ColorTheme.blue_900,
        //bottomAppBarColor: ColorTheme.blue_900,
        //canvasColor: ColorTheme.blue_900,
        primaryColor: ColorTheme.blue_900,
      ),
      home: EpisodeScreen(),
    );
  }
}
