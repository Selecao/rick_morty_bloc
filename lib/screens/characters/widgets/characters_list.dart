import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';

import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/profile/screen.dart';

class CharactersList extends StatefulWidget {
  @override
  _CharactersListState createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList> {
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

    // making pagination here:
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        bool _isScrolledToEnd() {
          return scrollInfo.metrics.pixels ==
              scrollInfo.metrics.maxScrollExtent;
        }

        bool _isPaginated() {
          return _charactersProvider.isPaginationEnable && !isLoading;
        }

        if (_isPaginated() && _isScrolledToEnd()) {
          setState(() {
            isLoading = true;
          });
          Future.delayed(new Duration(seconds: 1)).then((value) =>
              context.read<CharactersBloc>()..add(CharactersEvent.nextPage()));
        }

        return false;
      },
      child: ListView.builder(
        itemBuilder: (context, index) => isShowLoading() &&
                index == (_charactersProvider.charactersList.length)
            ? Center(child: AppCircularProgressIndicator())
            : CharacterListTile(
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
        itemCount: isShowLoading()
            ? (_charactersProvider.charactersList.length + 1)
            : _charactersProvider.charactersList.length,
        itemExtent: 98.0,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 24),
      ),
    );
  }
}
