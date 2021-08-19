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
    final _vm = BlocProvider.of<CharactersBloc>(context, listen: false);

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
                  isSortAscending: _vm.isSortAscending,
                  onFirstRadioTap: () {
                    context.read<CharactersBloc>()
                      ..add(
                        CharactersEvent.selectedFilters(
                          name: _vm.nameToFind,
                          status: _vm.status,
                          gender: _vm.gender,
                          isSortAscending: true,
                        ),
                      );
                  },
                  onSecondRadioTap: () {
                    context.read<CharactersBloc>()
                      ..add(
                        CharactersEvent.selectedFilters(
                          name: _vm.nameToFind,
                          status: _vm.status,
                          gender: _vm.gender,
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
              isEnable(0, _vm.status),
              "Живой",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _vm.nameToFind,
                      status: changeValues(0, _vm.status),
                      gender: _vm.gender,
                      isSortAscending: _vm.isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(1, _vm.status),
              "Мёртвый",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _vm.nameToFind,
                      status: changeValues(1, _vm.status),
                      gender: _vm.gender,
                      isSortAscending: _vm.isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(2, _vm.status),
              "Неизвестно",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _vm.nameToFind,
                      status: changeValues(2, _vm.status),
                      gender: _vm.gender,
                      isSortAscending: _vm.isSortAscending,
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
              isEnable(0, _vm.gender),
              "Мужской",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _vm.nameToFind,
                      status: _vm.status,
                      gender: changeValues(0, _vm.gender),
                      isSortAscending: _vm.isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(1, _vm.gender),
              "Женский",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _vm.nameToFind,
                      status: _vm.status,
                      gender: changeValues(1, _vm.gender),
                      isSortAscending: _vm.isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(2, _vm.gender),
              "Бесполый",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      name: _vm.nameToFind,
                      status: _vm.status,
                      gender: changeValues(2, _vm.gender),
                      isSortAscending: _vm.isSortAscending,
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<int> changeValues(int itemValue, List<int> previousValues) {
    List<int> bufferList = previousValues.toList();
    if (isEnable(itemValue, previousValues)) {
      bufferList.remove(itemValue);
    } else {
      bufferList.add(itemValue);
    }
    return bufferList;
  }

  bool isEnable(int itemIndex, List<int> listToCheck) =>
      listToCheck.contains(itemIndex);
}
