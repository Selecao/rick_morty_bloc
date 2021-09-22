import 'package:flutter/material.dart';
import 'package:sc_03/components/search_text_field.dart';
import 'package:sc_03/screens/episodes_list/bloc/episodes_list_bloc.dart';
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
      backgroundColor: Theme.of(context).primaryColor,
      title: SearchTextField(
        title: 'Найти эпизод',
        text: context.read<EpisodesListBloc>().episodeToFind,
        onSubmitted: (String value) {
          context.read<EpisodesListBloc>()
            ..add(EpisodesListEvent.find(chars: value));
        },
      ),
      bottom: TabBar(
        indicatorColor: Theme.of(context).accentColor,
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: Theme.of(context).primaryColorDark,
        isScrollable: true,
        labelStyle: Theme.of(context).textTheme.button?.copyWith(
              letterSpacing: 1.5,
              height: 1.71,
            ),
        tabs: [
          for (final season in context.read<EpisodesListBloc>().resultSeasons)
            Tab(text: season.name.toUpperCase()),
        ],
      ),
    );
  }
}
