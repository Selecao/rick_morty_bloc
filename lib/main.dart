import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';

import 'package:sc_03/data/repository.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

import 'package:sc_03/screens/settings/screen.dart';
import 'package:sc_03/screens/characters/screen.dart';
import 'package:sc_03/screens/episodes_list/bloc/episodes_list_bloc.dart';
import 'package:sc_03/screens/episodes_list/screen.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';
import 'package:sc_03/screens/locations_list/screen.dart';
import 'package:sc_03/screens/splash/screen.dart';
import 'package:sc_03/theme/app_color.dart';
import 'package:sc_03/theme/main_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColor.transparent, // transparent status bar
    ),
  );
  runApp(
    ChangeNotifierProvider<MainTheme>(
      create: (_) => MainTheme(),
      child: RickAndMortyApp(),
    ),
  );
}

class RickAndMortyApp extends StatefulWidget {
  @override
  _RickAndMortyAppState createState() => _RickAndMortyAppState();
}

class _RickAndMortyAppState extends State<RickAndMortyApp> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    CharactersScreen(),
    LocationsListScreen(),
    EpisodesListScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<Repository>(
          create: (_) => Repository()..init(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<CharactersBloc>(
            create: (BuildContext context) => CharactersBloc()
              ..add(
                CharactersEvent.initial(),
              ),
          ),
          BlocProvider<LocationsListBloc>(
            create: (BuildContext context) => LocationsListBloc()
              ..add(
                LocationsListEvent.initial(),
              ),
          ),
          BlocProvider<EpisodesListBloc>(
            create: (BuildContext context) => EpisodesListBloc()
              ..add(
                EpisodesListEvent.initial(),
              ),
          ),
        ],

        /// Provider make MainTheme data available in the tree, to Notify Listeners
        child: Consumer<MainTheme>(
          builder: (context, theme, _) => MaterialApp(
            debugShowCheckedModeBanner: false,

            /// DI from MainTheme
            theme: theme.getTheme(),
            home: Scaffold(
              /// [IndexedStack] preserve State of the bottomNavBar pages
              body: IndexedStack(
                index: _selectedIndex,
                children: _pages,
              ),
              bottomNavigationBar: AppBottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
