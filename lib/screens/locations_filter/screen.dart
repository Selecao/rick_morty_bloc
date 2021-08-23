import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/filter_app_bar.dart';
import 'package:sc_03/screens/locations_filter/widgets/locations_filter_body.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';

class LocationsFilterScreen extends StatelessWidget {
  const LocationsFilterScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FilterAppBar(
        title: "Фильтры",
        isFilterEnable: context.read<LocationsListBloc>().isFilterEnable,
        onTap: () {
          context.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind:
                      context.read<LocationsListBloc>().locationToFind,
                  isSortAscending: true,
                  locationType: "",
                  locationMeasure: ""),
            );
        },
      ),
      body: LocationsFilterBody(),
    );
  }
}
