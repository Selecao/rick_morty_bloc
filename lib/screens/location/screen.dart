import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sc_03/components/transparent_app_bar.dart';
import 'package:sc_03/screens/location/bloc/location_bloc.dart';
import 'package:sc_03/screens/location/widgets/location_characters.dart';
import 'package:sc_03/screens/location/widgets/location_description.dart';
import 'package:sc_03/screens/location/widgets/location_image.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      create: (BuildContext context) =>
          LocationBloc()..add(LocationEvent.initial()),

      /// Обрабатываем состояние
      child: BlocConsumer<LocationBloc, LocationState>(
        /// Возвращает виджеты поверх основного состояния. Используется для отображения
        /// ошибок, навигации и пр.
        listener: (context, state) {},

        /// Обрабатываем состояния
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => CircularProgressIndicator(),
            data: (_data) => Scaffold(
              extendBodyBehindAppBar: true,
              appBar: TransparentAppBar(),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    LocationImage(_data.location.image),
                    LocationDescription(_data.location),
                    LocationCharacters(_data.charactersAtLocation),
                  ],
                ),
              ),
            ),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
