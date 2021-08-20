import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/components/custom_radio_button.dart';
import 'package:sc_03/components/two_line_text_tile.dart';
import 'package:sc_03/resources/variables.dart' as constant;
import 'package:sc_03/screens/locations_filter/widgets/selection_screen.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';

class LocationsFilterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _vm = context.read<LocationsListBloc>();

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
                  isSortAscending: _vm.isSortAscending,
                  onFirstRadioTap: () {
                    context.read<LocationsListBloc>()
                      ..add(
                        LocationsListEvent.selectedFilters(
                          locationToFind: _vm.locationToFind,
                          isSortAscending: true,
                          locationType: _vm.locationType,
                          locationMeasure: _vm.locationMeasure,
                        ),
                      );
                  },
                  onSecondRadioTap: () {
                    context.read<LocationsListBloc>()
                      ..add(
                        LocationsListEvent.selectedFilters(
                          locationToFind: _vm.locationToFind,
                          isSortAscending: false,
                          locationType: _vm.locationType,
                          locationMeasure: _vm.locationMeasure,
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
              _vm.locationType == "" ? "Тип" : _vm.locationType,
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
              _vm.locationMeasure == "" ? "Измерение" : _vm.locationMeasure,
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
      final _vm = contextRoute.watch<LocationsListBloc>();

      return SelectionScreen(
        title: "Выберите тип",
        activeSelection: _vm.locationType,
        selectionList: constant.locationsType,
        onTapToDefault: () {
          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _vm.locationToFind,
                  isSortAscending: _vm.isSortAscending,
                  locationType: "",
                  locationMeasure: _vm.locationMeasure),
            );
        },
        onTapToNew: (String value) {
          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _vm.locationToFind,
                  isSortAscending: _vm.isSortAscending,
                  locationType: value,
                  locationMeasure: _vm.locationMeasure),
            );
        },
      );
    });
  }

  MaterialPageRoute measureSelectionRoute() {
    return MaterialPageRoute(builder: (contextRoute) {
      final _vm = contextRoute.watch<LocationsListBloc>();

      return SelectionScreen(
        title: "Выберите измерение",
        activeSelection: _vm.locationMeasure,
        selectionList: constant.locationsMeasure,
        onTapToDefault: () {
          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _vm.locationToFind,
                  isSortAscending: _vm.isSortAscending,
                  locationType: _vm.locationType,
                  locationMeasure: ""),
            );
        },
        onTapToNew: (String value) {
          contextRoute.read<LocationsListBloc>()
            ..add(
              LocationsListEvent.selectedFilters(
                  locationToFind: _vm.locationToFind,
                  isSortAscending: _vm.isSortAscending,
                  locationType: _vm.locationType,
                  locationMeasure: value),
            );
        },
      );
    });
  }
}
