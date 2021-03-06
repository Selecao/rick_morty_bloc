import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';

import 'package:sc_03/data/network/models/episode.dart';

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
            CachedNetworkImage(
              imageUrl: chapter.imageName ?? 'no image',
              imageBuilder: (context, imageProvider) => Container(
                width: imageSize,
                height: imageSize,
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  AppCircularProgressIndicator(
                      value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            const SizedBox(width: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "СЕРИЯ ${chapter.series ?? "None"}",
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      height: 1.6,
                      letterSpacing: 1.5,
                      color:
                          Theme.of(context).highlightColor.withOpacity(0.87)),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: textConstraint),
                  child: Text(
                    chapter.name ?? "None",
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          height: 1.5,
                          letterSpacing: 0.5,
                          color:
                              Theme.of(context).accentColor.withOpacity(0.87),
                        ),
                  ),
                ),
                Text(
                  "${chapter.premiere?.toStringRus()}",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        height: 1.4,
                        letterSpacing: 0.25,
                        color: Theme.of(context)
                            .primaryColorLight
                            .withOpacity(0.6),
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
