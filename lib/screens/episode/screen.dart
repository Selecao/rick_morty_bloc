import 'package:flutter/material.dart';
import 'package:sc_03/components/transparent_app_bar.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/episode/widgets/episode_characters.dart';
import 'package:sc_03/screens/episode/widgets/episode_description.dart';
import 'package:sc_03/screens/episode/widgets/episode_image.dart';

class EpisodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TransparentAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            EpisodeImage(
              image: currentChapter.image,
              onPressed: () {},
            ),
            EpisodeDescription(currentChapter),
            EpisodeCharacters(currentChapter.title),
          ],
        ),
      ),
    );
  }
}
