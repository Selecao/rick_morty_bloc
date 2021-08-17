import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sc_03/components/app_radio.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

class CustomRadioButton extends StatelessWidget {
  final List<int> status;
  final List<int> gender;
  final bool isSortAscending;
  CustomRadioButton(this.status, this.gender, this.isSortAscending);

  @override
  Widget build(BuildContext context) {
    int selected = isSortAscending ? 0 : 1;

    return Row(
      children: [
        AppRadio(
          0,
          AppIcons.filterSortUp,
          selected: selected,
          onTap: () {
            context.read<CharactersBloc>()
              ..add(
                CharactersEvent.selectedFilters(
                  status: status,
                  gender: gender,
                  isSortAscending: true,
                ),
              );
          },
        ),
        const SizedBox(width: 24.0),
        AppRadio(
          1,
          AppIcons.filterSortDown,
          selected: selected,
          onTap: () {
            context.read<CharactersBloc>()
              ..add(
                CharactersEvent.selectedFilters(
                  status: status,
                  gender: gender,
                  isSortAscending: false,
                ),
              );
          },
        ),
      ],
    );
  }
}
