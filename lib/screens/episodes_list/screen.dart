import 'package:flutter/material.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';
import 'package:sc_03/components/app_chapters_tile.dart';
import 'package:sc_03/screens/episodes_list/widgets/episodes_list_app_bar.dart';
import 'package:sc_03/resources/variables.dart';

class EpisodesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: seasons.length,
      child: Scaffold(
        appBar: EpisodesListAppBar(),
        body: TabBarView(
          children: [
            for (final season in seasons)
              ListView.builder(
                itemBuilder: (context, index) => AppChaptersTile(
                  imageSize: 60.0,
                  textConstraint: 280.0,
                  chapter: season.chapters[index],
                  onTap: () {},
                ),
                itemCount: season.chapters.length,
                itemExtent: 84.0,
                shrinkWrap: true,
              ),
          ],
        ),
        bottomNavigationBar: AppBottomNavigationBar(currentIndex: 2),
      ),
    );
  }
}
