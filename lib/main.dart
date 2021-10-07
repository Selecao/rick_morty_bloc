import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:sc_03/data/repository.dart';
import 'package:sc_03/root/root_screen.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/characters_filter.dart';
import 'package:sc_03/screens/locations_list/locations_filter.dart';

import 'package:sc_03/screens/episodes_list/bloc/episodes_list_bloc.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';
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
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MainTheme>(
          create: (_) => MainTheme(),
        ),
        ChangeNotifierProvider<CharactersFilter>(
          create: (_) => CharactersFilter(),
        ),
        ChangeNotifierProvider<LocationsFilter>(
          create: (_) => LocationsFilter(),
        ),
      ],
      child: RickAndMortyApp(),
    ),
  );
}

class RickAndMortyApp extends StatelessWidget {
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
                CharactersEvent.initial(filter: CharactersFilter()),
              ),
          ),
          BlocProvider<LocationsListBloc>(
            create: (BuildContext context) => LocationsListBloc()
              ..add(
                LocationsListEvent.initial(filter: LocationsFilter()),
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
            home: RootScreen(),
          ),
        ),
      ),
    );
  }
}
