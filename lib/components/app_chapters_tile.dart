import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class AppChaptersTile extends StatelessWidget {
  final double imageSize;
  final Episode chapter;
  final Widget? suffix;
  final VoidCallback onTap;
  final double textConstraint;

  const AppChaptersTile({
    required this.imageSize,
    required this.chapter,
    this.suffix,
    this.textConstraint = 200.0,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(chapter.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
                //color: ColorTheme.blue_600,
              ),
            ),
            const SizedBox(width: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chapter.number.toUpperCase(),
                  style: AppTextTheme.subtitle2.copyWith(
                      height: 1.6,
                      letterSpacing: 1.5,
                      color: ColorTheme.cyan_300.withOpacity(0.87)),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: textConstraint),
                  child: Text(
                    chapter.title,
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
                  chapter.releaseDate,
                  style: AppTextTheme.bodyText1.copyWith(
                    height: 1.4,
                    letterSpacing: 0.25,
                    color: ColorTheme.blueGrey_500.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            Spacer(),
            ...[suffix ?? Container()],
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
