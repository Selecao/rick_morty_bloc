import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/components/empty_finder_widget.dart';
import 'package:sc_03/resources/constants.dart';
import 'package:sc_03/screens/location/screen.dart';
import 'package:sc_03/components/location_tile.dart';

import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';
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
                : ListView.builder(
                    itemBuilder: (context, index) => LocationTile(
                      location: _data.locationsList[index],
                      onTap: () {
                        if (_data.locationsList[index].id != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LocationScreen(
                                  _data.locationsList[index].id!),
                            ),
                          );
                        }
                      },
                    ),
                    itemCount: _data.locationsList.length,
                    itemExtent: 242.0,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                      left: 16.0,
                      right: 18.0,
                      bottom: 16.0,
                    ),
                  ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
