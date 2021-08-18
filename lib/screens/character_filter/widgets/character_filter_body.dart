import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/components/custom_radio_button.dart';
import 'package:sc_03/screens/character_filter/widgets/checkbox_text.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

class CharacterFilterBody extends StatelessWidget {
  final List<int> status;
  final List<int> gender;
  final bool isSortAscending;
  const CharacterFilterBody(
    this.status,
    this.gender,
    this.isSortAscending,
  );

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
                  status,
                  gender,
                  isSortAscending,
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
              isEnable(0, status),
              "Живой",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      status: changeValues(0, status),
                      gender: gender,
                      isSortAscending: isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(1, status),
              "Мёртвый",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      status: changeValues(1, status),
                      gender: gender,
                      isSortAscending: isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(2, status),
              "Неизвестно",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      status: changeValues(2, status),
                      gender: gender,
                      isSortAscending: isSortAscending,
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
              isEnable(0, gender),
              "Мужской",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      status: status,
                      gender: changeValues(0, gender),
                      isSortAscending: isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(1, gender),
              "Женский",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      status: status,
                      gender: changeValues(1, gender),
                      isSortAscending: isSortAscending,
                    ),
                  );
              },
            ),
            CheckboxText(
              isEnable(2, gender),
              "Бесполый",
              onTap: () {
                context.read<CharactersBloc>()
                  ..add(
                    CharactersEvent.selectedFilters(
                      status: status,
                      gender: changeValues(2, gender),
                      isSortAscending: isSortAscending,
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
    if (isEnable(itemValue, previousValues) && (bufferList.length > 1)) {
      bufferList.remove(itemValue);
    } else {
      bufferList.add(itemValue);
    }
    return bufferList;
  }

  bool isEnable(int itemIndex, List<int> listToCheck) =>
      listToCheck.contains(itemIndex);
}
