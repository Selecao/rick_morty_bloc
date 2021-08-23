import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/components/custom_radio_button.dart';
import 'package:sc_03/components/two_line_text_tile.dart';
import 'package:sc_03/resources/constants.dart';
import 'package:sc_03/screens/locations_filter/widgets/selection_screen.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';

class LocationsFilterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _locationsProvider =
        BlocProvider.of<LocationsListBloc>(context, listen: false);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                "СОРТИРОВАТЬ",
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      letterSpacing: 1.5,
                      height: 1.6,
                    ),
              ),
            ),
            Row(
              children: [
                Text(
                  "По алфавиту",
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.15,
                        height: 1.5,
                      ),
                ),
                const Spacer(),
                CustomRadioButton(
                  isSortAscending: _locationsProvider.isSortAscending,
                  onFirstRadioTap: () {
                    context.read<LocationsListBloc>()
                      ..add(
                        LocationsListEvent.selectedFilters(
                          locationToFind: _locationsProvider.locationToFind,
                          isSortAscending: true,
                          locationType: _locationsProvider.locationType,
                          locationMeasure: _locationsProvider.locationMeasure,
                        ),
                      );
                  },
                  onSecondRadioTap: () {
                    context.read<LocationsListBloc>()
                      ..add(
                        LocationsListEvent.selectedFilters(
                          locationToFind: _locationsProvider.locationToFind,
                          isSortAscending: false,
                          locationType: _locationsProvider.locationType,
                          locationMeasure: _locationsProvider.locationMeasure,
                        ),
                      );
                  },
                ),
              ],
            ),
            const SizedBox(height: 36.0),
            AppDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36.0),
              child: Text(
                "ФИЛЬТРОВАТЬ ПО:",
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      letterSpacing: 1.5,
                      height: 1.6,
                    ),
              ),
            ),
            TwoLineTextTile(
              _locationsProvider.locationType == ""
                  ? "Тип"
                  : _locationsProvider.locationType,
              "Выберите тип локации",
              onTap: () {
                Navigator.push(
                  context,
                  typeSelectionRoute(),
                );
              },
            ),
            const SizedBox(height: 36.0),
            TwoLineTextTile(
              _locationsProvider.locationMeasure == ""
                  ? "Измерение"
                  : _locationsProvider.locationMeasure,
              "Выберите измерение локации",
              onTap: () {
                Navigator.push(
                  context,
                  measureSelectionRoute(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  MaterialPageRoute typeSelectionRoute() {
    return MaterialPageRoute(builder: (contextRoute) {
      final _locationsProvider = contextRoute.watch<LocationsListBloc>();

      return SelectionScreen(
        title: "Выберите тип",
        activeSelection: _locationsProvider.locationType,
        selectionList: Constants.locationsType,
        onTapToDefault: () {
          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _locationsProvider.locationToFind,
                  isSortAscending: _locationsProvider.isSortAscending,
                  locationType: "",
                  locationMeasure: _locationsProvider.locationMeasure),
            );
        },
        onTapToNew: (String value) {
          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _locationsProvider.locationToFind,
                  isSortAscending: _locationsProvider.isSortAscending,
                  locationType: value,
                  locationMeasure: _locationsProvider.locationMeasure),
            );
        },
      );
    });
  }

  MaterialPageRoute measureSelectionRoute() {
    return MaterialPageRoute(builder: (contextRoute) {
      final _locationsProvider = contextRoute.watch<LocationsListBloc>();

      return SelectionScreen(
        title: "Выберите измерение",
        activeSelection: _locationsProvider.locationMeasure,
        selectionList: Constants.locationsMeasure,
        onTapToDefault: () {
          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _locationsProvider.locationToFind,
                  isSortAscending: _locationsProvider.isSortAscending,
                  locationType: _locationsProvider.locationType,
                  locationMeasure: ""),
            );
        },
        onTapToNew: (String value) {
          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _locationsProvider.locationToFind,
                  isSortAscending: _locationsProvider.isSortAscending,
                  locationType: _locationsProvider.locationType,
                  locationMeasure: value),
            );
        },
      );
    });
  }
}
