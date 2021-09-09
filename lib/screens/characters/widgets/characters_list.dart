import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';

import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/characters_filter.dart';
import 'package:sc_03/screens/profile/screen.dart';

class CharactersList extends StatefulWidget {
  final List<Character> characters;
  CharactersList(this.characters);
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
    final _filterProvider = context.watch<CharactersFilter>();

    bool isShowLoading() => !_filterProvider.hasReachedLastPage && isLoading;

    // making pagination here:
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        _checkAndLoadData(context, scrollInfo);
        return false;
      },
      child: ListView.builder(
        itemBuilder: (context, index) =>
            isShowLoading() && index == (widget.characters.length)
                ? Center(child: AppCircularProgressIndicator())
                : CharacterListTile(
                    character: widget.characters[index],
                    onTap: () {
                      if (widget.characters[index].id != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ProfileScreen(widget.characters[index].id!);
                          }),
                        );
                      }
                    },
                  ),
        itemCount: isShowLoading()
            ? widget.characters.length + 1
            : widget.characters.length,
        itemExtent: 98.0,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 24),
      ),
    );
  }

  void _checkAndLoadData(BuildContext context, ScrollNotification scrollInfo) {
    bool _isScrolledToEnd() {
      return scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent;
    }

    bool _isPaginated(BuildContext context) {
      return context.read<CharactersFilter>().isPaginationEnable && !isLoading;
    }

    if (_isPaginated(context) && _isScrolledToEnd()) {
      setState(() {
        isLoading = true;
      });
      Future.delayed(new Duration(seconds: 1)).then(
        (value) => context.read<CharactersBloc>()
          ..add(
            CharactersEvent.nextPage(filter: context.read<CharactersFilter>()),
          ),
      );
    }
  }
}
