import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';
import 'package:sc_03/screens/characters/screen.dart';
import 'package:sc_03/screens/episodes_list/screen.dart';
import 'package:sc_03/screens/locations_list/screen.dart';
import 'package:sc_03/screens/settings/screen.dart';

import 'view_model.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RootViewModel(),
      child: Consumer<RootViewModel>(
        builder: (context, model, _) => Scaffold(
          body: _Body(model: model),
          bottomNavigationBar: AppBottomNavigationBar(
            currentIndex: model.currentScreenIndex,
            onTap: (int value) {
              model.changeScreenIndex(value);
            },
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final model;

  const _Body({Key? key, required this.model}) : super(key: key);

  static List<Widget> screens = [
    CharactersScreen(),
    LocationsListScreen(),
    EpisodesListScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: model.currentScreenIndex,
      children: List.generate(
        screens.length,
        (index) => Navigator(
          key: model.navigatorKeys[index],
          onGenerateRoute: (route) => CupertinoPageRoute(
            settings: route,
            builder: (context) => screens[index],
          ),
        ),
      ),
    );
  }
}
