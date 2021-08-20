import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/filter_app_bar.dart';
import 'package:sc_03/screens/locations_filter/widgets/locations_filter_body.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';

class LocationsFilterScreen extends StatelessWidget {
  const LocationsFilterScreen();

  @override
  Widget build(BuildContext context) {
    final _vm = context.watch<LocationsListBloc>();

    return Scaffold(
      appBar: FilterAppBar(
        title: "Фильтры",
        isFilterEnable: _vm.isFilterEnable,
        onTap: () {
          context.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _vm.locationToFind,
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
