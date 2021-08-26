import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/components/empty_finder_widget.dart';
import 'package:sc_03/resources/constants.dart';

import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';
import 'package:sc_03/screens/locations_list/widgets/locations_list.dart';
import 'package:sc_03/screens/locations_list/widgets/locations_list_app_bar.dart';

class LocationsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationsListBloc, LocationsListState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(child: AppCircularProgressIndicator()),
          data: (_data) => Scaffold(
            appBar: LocationsListAppBar(_data.locationsList.length),
            body: _data.locationsList.isEmpty
                ? EmptyFinderWidget(
                    context.read<LocationsListBloc>().isFilterEnable
                        ? Screen.LocationFilter
                        : Screen.Location,
                  )
                : LocationsList(),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
