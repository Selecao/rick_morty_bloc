import 'package:flutter/material.dart';
import 'package:sc_03/components/app_chapters_tile.dart';

import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/components/location_tile.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/episode/screen.dart';
import 'package:sc_03/screens/find/widgets/find_empty.dart';
import 'package:sc_03/screens/find/widgets/find_screen_app_bar.dart';
import 'package:sc_03/screens/location/screen.dart';
import 'package:sc_03/screens/profile/screen.dart';

class FindScreen extends StatelessWidget {
  final Screen screenName;
  final List<Object>? searchList;
  final void Function(String)? onSubmitted;
  FindScreen(this.screenName, this.searchList, {this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FindScreenAppBar(onSubmitted: onSubmitted),
      body: _isEmpty(searchList)
          ? FindEmpty(screenName)
          : ListView.builder(
              itemBuilder: (context, index) => _makeObjectTile(
                screenName,
                context,
                searchList?[index],
              ),
              itemCount: searchList?.length,
              itemExtent: _extent(screenName),
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 24),
            ),
    );
  }

  bool _isEmpty(List<Object>? searchList) {
    if (searchList == null) return true;
    if (searchList.isEmpty) return true;
    return false;
  }

  Widget _makeObjectTile(Screen find, BuildContext context, Object? object) {
    if (find == Screen.Character)
      return CharacterListTile(
        character: object as Character,
        onTap: () {
          _onTapCharacter(context, object);
        },
      );
    if (find == Screen.Location)
      return LocationTile(
        location: object as Location,
        onTap: () {
          _onTapLocation(context, object);
        },
      );
    if (find == Screen.Episode)
      return AppChaptersTile(
        imageSize: 60.0,
        textConstraint: 280.0,
        chapter: object as Episode,
        onTap: () {
          _onTapEpisode(context, object);
        },
      );
    return Container();
  }

  double _extent(Screen find) {
    if (find == Screen.Character) return 98.0;
    if (find == Screen.Location) return 242.0;
    // episode
    return 84.0;
  }

  void _onTapCharacter(BuildContext context, Character character) {
    if (character.id != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return ProfileScreen(character.id!);
        }),
      );
    }
  }

  void _onTapLocation(BuildContext context, Location location) {
    if (location.id != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationScreen(location.id!),
        ),
      );
    }
  }

  void _onTapEpisode(BuildContext context, Episode episode) {
    if (episode.id != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return EpisodeScreen(episode.id!);
        }),
      );
    }
  }
}
