import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/data/repository.dart';
import 'package:sc_03/global_bloc/global_bloc.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

import 'package:sc_03/screens/settings/screen.dart';
import 'package:sc_03/screens/characters/screen.dart';
import 'package:sc_03/screens/character_filter/screen.dart';
import 'package:sc_03/screens/episodes_list/bloc/episodes_list_bloc.dart';
import 'package:sc_03/screens/episodes_list/screen.dart';
import 'package:sc_03/screens/find/screen.dart';
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
          BlocProvider<GlobalBloc>(
            create: (BuildContext context) => GlobalBloc()
              ..add(
                GlobalEvent.initial(),
              ),
          ),
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
        child: Consumer<MainTheme>(
          builder: (context, theme, _) => MaterialApp(
            debugShowCheckedModeBanner: false,

            /// DI from MainTheme
            theme: theme.getTheme(),
            home: BlocConsumer<GlobalBloc, GlobalState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                  loading: (_) => Center(child: AppCircularProgressIndicator()),
                  data: (_data) {
                    if (_data.activeTab == 0) {
                      return CharactersScreen();
                      //return CharacterFilterScreen();
                    }

                    if (_data.activeTab == 1) {
                      return LocationsListScreen();
                    }

                    if (_data.activeTab == 2) {
                      return EpisodesListScreen();
                    }

                    if (_data.activeTab == 3) {
                      return SettingsScreen();
                    }

                    return SplashScreen();
                  },
                  orElse: () => Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
