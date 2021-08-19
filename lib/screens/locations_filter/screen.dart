import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/components/filter_app_bar.dart';
import 'package:sc_03/screens/locations_filter/widgets/locations_filter_body.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';

class LocationsFilterScreen extends StatelessWidget {
  const LocationsFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationsListBloc, LocationsListState>(
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(
            child: AppCircularProgressIndicator(),
          ),
          data: (_data) => Scaffold(
            appBar: FilterAppBar(
              "Фильтры",
            ),
            body: LocationsFilterBody(),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
