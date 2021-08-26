import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';

import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/widgets/character_grid_item.dart';
import 'package:sc_03/screens/profile/screen.dart';

class CharactersGrid extends StatefulWidget {
  @override
  _CharactersGridState createState() => _CharactersGridState();
}

class _CharactersGridState extends State<CharactersGrid> {
  bool isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    final _charactersProvider = context.watch<CharactersBloc>();

    bool isShowLoading() =>
        !_charactersProvider.hasReachedLastPage && isLoading;

    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          _checkAndLoadData(context, scrollInfo);

          return false;
        },
        child: GridView.builder(
          itemCount: isShowLoading()
              ? (_charactersProvider.charactersList.length + 1)
              : _charactersProvider.charactersList.length,
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 0),
          physics: AlwaysScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12.0,
          ),
          itemBuilder: (context, index) => isShowLoading() &&
                  index == (_charactersProvider.charactersList.length)
              ? Center(child: AppCircularProgressIndicator())
              : CharacterGridItem(
                  character: _charactersProvider.charactersList[index],
                  onTap: () {
                    if (_charactersProvider.charactersList[index].id != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProfileScreen(
                              _charactersProvider.charactersList[index].id!);
                        }),
                      );
                    }
                  },
                ),
        ),
      ),
    );
  }

  void _checkAndLoadData(BuildContext context, ScrollNotification scrollInfo) {
    bool _isScrolledToEnd() {
      return scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent;
    }

    bool _isPaginated() {
      return BlocProvider.of<CharactersBloc>(context).isPaginationEnable &&
          !isLoading;
    }

    if (_isPaginated() && _isScrolledToEnd()) {
      setState(() {
        isLoading = true;
      });
      Future.delayed(new Duration(seconds: 1)).then((value) =>
          context.read<CharactersBloc>()..add(CharactersEvent.nextPage()));
    }
  }
}
