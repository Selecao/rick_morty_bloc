import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/components/search_text_field.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/widgets/characters_count.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int? charactersListLength;
  static const _appBarHeight = 112.0;

  CharactersAppBar(this.charactersListLength)
      : preferredSize = Size.fromHeight(_appBarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: SearchTextField(
        title: 'Найти персонажа',
        suffixIcon: Row(
          //this two lines makes icons and text stay at proper position
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 1.0,
              height: 24.0,
              color: ColorTheme.white.withOpacity(0.1),
            ),
            IconButton(
              padding: EdgeInsets.fromLTRB(10.0, 12.0, 12.0, 12.0),
              icon: SvgPicture.asset(
                AppIcons.filterSort,
                color: ColorTheme.blueGrey_600,
              ),
              onPressed: () {},
            ),
          ],
        ),
        onSubmitted: (String value) {
          context.read<CharactersBloc>()
            ..add(
              CharactersEvent.find(chars: value),
            );
        },
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: CharactersCount(
          charactersCount: charactersListLength ?? 0,
          onSelected: (value) {
            /// Для создания события используется контекст с обращением к блоку в контексте
            context.read<CharactersBloc>()
              ..add(
                CharactersEvent.selectedView(isGrid: value),
              );
          },
        ),
      ),
    );
  }
}
