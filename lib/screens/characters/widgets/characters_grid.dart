import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/data/network/models/character.dart';

import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/characters_filter.dart';
import 'package:sc_03/screens/characters/widgets/character_grid_item.dart';
import 'package:sc_03/screens/profile/screen.dart';

class CharactersGrid extends StatefulWidget {
  final List<Character> characters;
  CharactersGrid(this.characters);
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
    final _filterProvider = context.watch<CharactersFilter>();

    bool isShowLoading() => !_filterProvider.hasReachedLastPage && isLoading;

    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          _checkAndLoadData(context, scrollInfo);

          return false;
        },
        child: GridView.builder(
          itemCount: isShowLoading()
              ? (widget.characters.length + 1)
              : widget.characters.length,
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 0),
          physics: AlwaysScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12.0,
          ),
          itemBuilder: (context, index) => isShowLoading() &&
                  index == (widget.characters.length)
              ? Center(child: AppCircularProgressIndicator())
              : CharacterGridItem(
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
        ),
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
