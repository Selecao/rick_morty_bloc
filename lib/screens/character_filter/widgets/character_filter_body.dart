import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/components/custom_radio_button.dart';
import 'package:sc_03/screens/character_filter/widgets/checkbox_text.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/characters_filter.dart';

class CharacterFilterBody extends StatelessWidget {
  const CharacterFilterBody();

  @override
  Widget build(BuildContext context) {
    final _filterData = context.watch<CharactersFilter>();

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
                  isSortAscending: _filterData.isSortAscending,
                  onFirstRadioTap: () {
                    _filterData.setIsSortAscending(true);

                    context.read<CharactersBloc>()
                      ..add(
                        CharactersEvent.selectedFilters(filter: _filterData),
                      );
                  },
                  onSecondRadioTap: () {
                    _filterData.setIsSortAscending(false);

                    context.read<CharactersBloc>()
                      ..add(
                        CharactersEvent.selectedFilters(filter: _filterData),
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
              isEnable(0, _filterData.status),
              "Живой",
              onTap: () {
                _filterData.setStatus(changeValues(0, _filterData.status));

                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(filter: _filterData),
                  );
              },
            ),
            CheckboxText(
              isEnable(1, _filterData.status),
              "Мёртвый",
              onTap: () {
                _filterData.setStatus(changeValues(1, _filterData.status));

                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(filter: _filterData),
                  );
              },
            ),
            CheckboxText(
              isEnable(2, _filterData.status),
              "Неизвестно",
              onTap: () {
                _filterData.setStatus(changeValues(2, _filterData.status));

                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(filter: _filterData),
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
              isEnable(0, _filterData.gender),
              "Мужской",
              onTap: () {
                _filterData.setGender(changeValues(0, _filterData.gender));

                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(filter: _filterData),
                  );
              },
            ),
            CheckboxText(
              isEnable(1, _filterData.gender),
              "Женский",
              onTap: () {
                _filterData.setGender(changeValues(1, _filterData.gender));

                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(filter: _filterData),
                  );
              },
            ),
            CheckboxText(
              isEnable(2, _filterData.gender),
              "Бесполый",
              onTap: () {
                _filterData.setGender(changeValues(2, _filterData.gender));

                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(filter: _filterData),
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
