import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sc_03/components/models/character.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/profile/models/chapter.dart';
import 'package:sc_03/screens/profile/widgets/chapters.dart';
import 'package:sc_03/screens/profile/widgets/chapters_header.dart';
import 'package:sc_03/screens/profile/widgets/description.dart';
import 'package:sc_03/screens/profile/widgets/page_sliver_header.dart';
import 'package:sc_03/theme/color_theme.dart';

class ProfileScreen extends StatelessWidget {
  final ScrollController scrollController = ScrollController();
  final Character _character = profile1;
  final List<Chapter> _chaptersList = chaptersList;

  @override
  Widget build(BuildContext context) {
    final double avatarSize = MediaQuery.of(context).size.width / 4;

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: PageSliverHeader(
              expandedHeight: 218,
              image: _character.avatar,
            ),
            pinned: true,
          ),
          Description(avatarSize: avatarSize, character: _character),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 36.0),
              child: Divider(color: ColorTheme.blue_600, thickness: 2.0),
            ),
          ),
          ChaptersHeader(),
          Chapters(chaptersList: _chaptersList),
        ],
      ),
    );
  }
}
