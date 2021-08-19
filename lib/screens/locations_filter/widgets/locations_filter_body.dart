import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/components/custom_radio_button.dart';
import 'package:sc_03/components/two_line_text_tile.dart';

class LocationsFilterBody extends StatelessWidget {
  const LocationsFilterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  isSortAscending: true,
                  onFirstRadioTap: () {
                    /*context.read<CharactersBloc>()
                      ..add(
                        CharactersEvent.selectedFilters(
                          status: status,
                          gender: gender,
                          isSortAscending: true,
                        ),
                      );*/
                  },
                  onSecondRadioTap: () {
                    /*context.read<CharactersBloc>()
                      ..add(
                        CharactersEvent.selectedFilters(
                          status: status,
                          gender: gender,
                          isSortAscending: false,
                        ),
                      );*/
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36.0),
              child: AppDivider(),
            ),
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
              "Тип",
              "Выберите тип локации",
              onTap: () {
                // TODO: make type screen
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FindScreen(
                      Screen.Character,
                      _data.charactersList,
                      onSubmitted: (value) {
                        context.read<CharactersBloc>()
                          ..add(CharactersEvent.find(chars: value));
                      },
                    ),
                  ),
                );*/
              },
            ),
            const SizedBox(height: 36.0),
            TwoLineTextTile(
              "Измерение",
              "Выберите измерение локации",
              onTap: () {
                //TODO: make measurement screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
