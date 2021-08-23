import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/components/custom_radio_button.dart';
import 'package:sc_03/screens/character_filter/widgets/checkbox_text.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

class CharacterFilterBody extends StatelessWidget {
  const CharacterFilterBody();

  @override
  Widget build(BuildContext context) {
    final _charactersProvider =
        BlocProvider.of<CharactersBloc>(context, listen: false);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
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
                  isSortAscending: _charactersProvider.isSortAscending,
                  onFirstRadioTap: () {
                    context.read<CharactersBloc>()
                      ..add(
                        CharactersEvent.selectedFilters(
                          name: _charactersProvider.nameToFind,
                          status: _charactersProvider.status,
                          gender: _charactersProvider.gender,
                          isSortAscending: true,
                        ),
                      );
                  },
                  onSecondRadioTap: () {
                    context.read<CharactersBloc>()
                      ..add(
                        CharactersEvent.selectedFilters(
                          name: _charactersProvider.nameToFind,
                          status: _charactersProvider.status,
                          gender: _charactersProvider.gender,
                          isSortAscending: false,
                        ),
                      );
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36.0),
              child: AppDivider(),
            ),
            Text(
              "СТАТУС",
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    letterSpacing: 1.5,
                    height: 1.6,
                  ),
            ),
            const SizedBox(height: 12.0),
            CheckboxText(
              isEnable(0, _charactersProvider.status),
              "Живой",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _charactersProvider.nameToFind,
                      status: changeValues(0, _charactersProvider.status),
                      gender: _charactersProvider.gender,
                      isSortAscending: _charactersProvider.isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(1, _charactersProvider.status),
              "Мёртвый",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _charactersProvider.nameToFind,
                      status: changeValues(1, _charactersProvider.status),
                      gender: _charactersProvider.gender,
                      isSortAscending: _charactersProvider.isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(2, _charactersProvider.status),
              "Неизвестно",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _charactersProvider.nameToFind,
                      status: changeValues(2, _charactersProvider.status),
                      gender: _charactersProvider.gender,
                      isSortAscending: _charactersProvider.isSortAscending,
                    ),
                  );
              },
            ),
            const SizedBox(height: 9.0),
            AppDivider(),
            const SizedBox(height: 36.0),
            Text(
              "ПОЛ",
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    letterSpacing: 1.5,
                    height: 1.6,
                  ),
            ),
            const SizedBox(height: 12.0),
            CheckboxText(
              isEnable(0, _charactersProvider.gender),
              "Мужской",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _charactersProvider.nameToFind,
                      status: _charactersProvider.status,
                      gender: changeValues(0, _charactersProvider.gender),
                      isSortAscending: _charactersProvider.isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(1, _charactersProvider.gender),
              "Женский",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _charactersProvider.nameToFind,
                      status: _charactersProvider.status,
                      gender: changeValues(1, _charactersProvider.gender),
                      isSortAscending: _charactersProvider.isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(2, _charactersProvider.gender),
              "Бесполый",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _charactersProvider.nameToFind,
                      status: _charactersProvider.status,
                      gender: changeValues(2, _charactersProvider.gender),
                      isSortAscending: _charactersProvider.isSortAscending,
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<int> changeValues(int itemValue, List<int> currentValues) {
    List<int> bufferList = currentValues.toList();
    if (isEnable(itemValue, currentValues)) {
      bufferList.remove(itemValue);
    } else {
      bufferList.add(itemValue);
    }
    return bufferList;
  }

  bool isEnable(int itemIndex, List<int> listToCheck) =>
      listToCheck.contains(itemIndex);
}
