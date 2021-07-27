import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/global_bloc/global_bloc.dart';
import 'package:sc_03/screens/adjustments/bloc/adjustments_bloc.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

import 'package:sc_03/screens/adjustments/screen.dart';
import 'package:sc_03/screens/characters/screen.dart';
import 'package:sc_03/screens/episodes_list/bloc/episodes_list_bloc.dart';
import 'package:sc_03/screens/episodes_list/screen.dart';
import 'package:sc_03/screens/find/screen.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';
import 'package:sc_03/screens/locations_list/screen.dart';
import 'package:sc_03/screens/splash/screen.dart';
import 'package:sc_03/theme/color_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorTheme.transparent, // transparent status bar
    ),
  );
  runApp(RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
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
        BlocProvider<AdjustmentsBloc>(
          create: (BuildContext context) => AdjustmentsBloc()
            ..add(
              AdjustmentsEvent.initial(),
            ),
        ),
      ],
      child: MaterialApp(
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
        home: BlocListener<GlobalBloc, GlobalState>(
          listener: (context, state) {},
          child: BlocBuilder<GlobalBloc, GlobalState>(
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => Center(child: AppCircularProgressIndicator()),
                data: (_data) {
                  if (_data.activeTab == 0) {
                    return CharactersScreen();
                  }

                  if (_data.activeTab == 1) {
                    return LocationsListScreen();
                  }

                  if (_data.activeTab == 2) {
                    return EpisodesListScreen();
                  }

                  if (_data.activeTab == 3) {
                    return AdjustmentsScreen();
                  }

                  return SplashScreen();
                },
                orElse: () => Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }
}
