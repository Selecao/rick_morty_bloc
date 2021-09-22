import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/components/custom_radio_button.dart';
import 'package:sc_03/components/two_line_text_tile.dart';
import 'package:sc_03/resources/constants.dart';
import 'package:sc_03/screens/locations_filter/widgets/selection_screen.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';
import 'package:sc_03/screens/locations_list/locations_filter.dart';

class LocationsFilterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _filterData = context.watch<LocationsFilter>();

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
                  isSortAscending: _filterData.isSortAscending,
                  onFirstRadioTap: () {
                    _filterData.setIsSortAscending(true);

                    context.read<LocationsListBloc>()
                      ..add(
                        LocationsListEvent.selectedFilters(filter: _filterData),
                      );
                  },
                  onSecondRadioTap: () {
                    _filterData.setIsSortAscending(false);

                    context.read<LocationsListBloc>()
                      ..add(
                        LocationsListEvent.selectedFilters(filter: _filterData),
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
              _filterData.locationType == "" ? "Тип" : _filterData.locationType,
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
              _filterData.locationMeasure == ""
                  ? "Измерение"
                  : _filterData.locationMeasure,
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
      final _filterData = contextRoute.watch<LocationsFilter>();

      return SelectionScreen(
        title: "Выберите тип",
        activeSelection: _filterData.locationType,
        selectionList: Constants.locationsType,
        onTapToDefault: () {
          _filterData.setLocationType("");

          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(filter: _filterData),
            );
        },
        onTapToNew: (String value) {
          _filterData.setLocationType(value);

          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(filter: _filterData),
            );
        },
      );
    });
  }

  MaterialPageRoute measureSelectionRoute() {
    return MaterialPageRoute(builder: (contextRoute) {
      final _filterData = contextRoute.watch<LocationsFilter>();

      return SelectionScreen(
        title: "Выберите измерение",
        activeSelection: _filterData.locationMeasure,
        selectionList: Constants.locationsMeasure,
        onTapToDefault: () {
          _filterData.setLocationMeasure("");

          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(filter: _filterData),
            );
        },
        onTapToNew: (String value) {
          _filterData.setLocationMeasure(value);

          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(filter: _filterData),
            );
        },
      );
    });
  }
}
