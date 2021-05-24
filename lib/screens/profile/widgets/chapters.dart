import 'package:flutter/material.dart';
import 'package:sc_03/screens/profile/models/chapter.dart';
import 'package:sc_03/screens/profile/widgets/arrow_button.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class Chapters extends StatelessWidget {
  const Chapters({
    @required this.chaptersList,
  });

  final List<Chapter> chaptersList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 74.0,
                  height: 74.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(chaptersList[index].image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    //color: ColorTheme.blue_600,
                  ),
                ),
                SizedBox(width: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chaptersList[index].number.toUpperCase(),
                        style: AppTextTheme.subtitle2.copyWith(
                            height: 1.6,
                            letterSpacing: 1.5,
                            color: ColorTheme.cyan_300.withOpacity(0.87)),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 200.0),
                        child: Text(
                          chaptersList[index].title,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: AppTextTheme.subtitle1.copyWith(
                            height: 1.5,
                            letterSpacing: 0.5,
                            color: ColorTheme.white.withOpacity(0.87),
                          ),
                        ),
                      ),
                      Text(
                        chaptersList[index].releaseDate,
                        style: AppTextTheme.bodyText1.copyWith(
                          height: 1.4,
                          letterSpacing: 0.25,
                          color: ColorTheme.blueGrey_500.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ArrowButton(onPressed: () {}),
              ],
            ),
          );
        },
        childCount: chaptersList.length,
      ),
    );
  }
}
