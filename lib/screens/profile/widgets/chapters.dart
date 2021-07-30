import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/components/app_chapters_tile.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/screens/episode/screen.dart';
import 'package:sc_03/theme/app_color.dart';

class Chapters extends StatelessWidget {
  final List<Episode> chaptersList;

  const Chapters({
    required this.chaptersList,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: AppChaptersTile(
              imageSize: 74,
              chapter: chaptersList[index],
              suffix: SvgPicture.asset(
                AppIcons.arrowForwardIos,
                height: 8.0,
                color: Theme.of(context).accentColor,
              ),
              onTap: () {
                if (chaptersList[index].id != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return EpisodeScreen(chaptersList[index].id!);
                    }),
                  );
                }
              },
            ),
          );
        },
        childCount: chaptersList.length,
      ),
    );
  }
}
