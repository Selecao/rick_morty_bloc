import 'package:flutter/material.dart';
import 'package:sc_03/components/search_text_field.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/episodes_list/bloc/episodes_list_bloc.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpisodesListAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  static const _bottomAppBarHeight = 40.0;

  EpisodesListAppBar()
      : preferredSize = Size.fromHeight(kToolbarHeight + _bottomAppBarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: SearchTextField(
        title: 'Найти эпизод',
        onSubmitted: (String value) {
          context.read<EpisodesListBloc>()
            ..add(
              EpisodesListEvent.find(chars: value),
            );
        },
      ),
      bottom: TabBar(
        indicatorColor: ColorTheme.white,
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: ColorTheme.blueGrey_600,
        isScrollable: true,
        labelStyle: AppTextTheme.button.copyWith(
          letterSpacing: 1.5,
          height: 1.71,
        ),
        tabs: [
          for (final season in seasons) Tab(text: season.name.toUpperCase()),
        ],
      ),
    );
  }
}
