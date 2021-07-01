import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';
import 'package:sc_03/screens/locations_list/widgets/location_tile.dart';

import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';
import 'package:sc_03/screens/locations_list/widgets/locations_list_app_bar.dart';

class LocationsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Делаем доступным блок в дереве виджетов
    return BlocProvider<LocationsListBloc>(
        create: (BuildContext context) =>
            LocationsListBloc()..add(LocationsListEvent.initial()),

        /// Обрабатываем состояние
        child: BlocConsumer<LocationsListBloc, LocationsListState>(
          /// Возвращает виджеты поверх основного состояния. Используется для отображения
          /// ошибок, навигации и пр.
          listener: (context, state) {},

          /// Обрабатываем состояния
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => Center(child: CircularProgressIndicator()),
              data: (_data) => Scaffold(
                appBar: LocationsListAppBar(_data.locationsList.length),
                body: ListView.builder(
                  itemBuilder: (context, index) =>
                      LocationTile(_data.locationsList[index]),
                  itemCount: _data.locationsList.length,
                  itemExtent: 242.0,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 18.0,
                    bottom: 16.0,
                  ),
                ),
                bottomNavigationBar: AppBottomNavigationBar(
                  currentIndex: 1,
                  onTap: () {},
                ),
              ),
              orElse: () => SizedBox.shrink(),
            );
          },
        ));
  }
}
