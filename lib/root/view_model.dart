import 'package:flutter/material.dart';

class RootViewModel extends ChangeNotifier {
  // Global pages keys
  List<GlobalKey<NavigatorState>> navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  int currentScreenIndex = 0;

  void changeScreenIndex(int index) {
    currentScreenIndex = index;
    notifyListeners();
  }
}
