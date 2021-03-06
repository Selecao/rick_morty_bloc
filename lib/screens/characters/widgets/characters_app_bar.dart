import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:sc_03/components/search_text_field.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/screens/character_filter/screen.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/characters_filter.dart';
import 'package:sc_03/screens/characters/widgets/characters_count.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/theme/app_color.dart';

class CharactersAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int? charactersCount;

  static const _appBarHeight = 112.0;

  CharactersAppBar({
    required this.charactersCount,
  }) : preferredSize = Size.fromHeight(_appBarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final _filterData = context.watch<CharactersFilter>();

    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).primaryColor,
      title: SearchTextField(
        title: 'Найти персонажа',
        text: _filterData.nameToFind,
        suffixIcon: Row(
          //this two lines makes icons and text stay at proper position
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 1.0,
              height: 24.0,
              color: Theme.of(context).accentColor.withOpacity(0.1),
            ),
            IconButton(
              padding: EdgeInsets.fromLTRB(10.0, 12.0, 12.0, 12.0),
              icon: SvgPicture.asset(
                _filterData.isFilterEnable
                    ? AppIcons.filterDisable
                    : AppIcons.filterSort,
                color: _filterData.isFilterEnable
                    ? AppColor.red_100
                    : Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterFilterScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        onSubmitted: (String value) {
          _filterData.setNameToFind(value);

          context.read<CharactersBloc>()
            ..add(CharactersEvent.selectedFilters(filter: _filterData));
        },
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: CharactersCount(
          charactersCount: charactersCount ?? 0,
          onSelected: (value) {
            context.read<CharactersBloc>()
              ..add(
                CharactersEvent.selectedView(
                  isGrid: value,
                  filter: context.read<CharactersFilter>(),
                ),
              );
          },
        ),
      ),
    );
  }
}
