import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sc_03/components/race_gender_text.dart';
import 'package:sc_03/components/status_text.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class CharacterListTile extends StatelessWidget {
  final Character character;
  final VoidCallback onTap;
  final Widget? suffix;

  CharacterListTile({
    required this.character,
    required this.onTap,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          const SizedBox(width: 16.0),
          CachedNetworkImage(
            imageUrl: character.imageName ?? 'no image',
            imageBuilder: (context, imageProvider) => Container(
              width: 74.0,
              height: 74.0,
              decoration: BoxDecoration(
                color: ColorTheme.blue_600,
                borderRadius: BorderRadius.circular(40.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          const SizedBox(width: 18.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StatusText(statusIndex: character.status ?? 2),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200.0),
                child: Text(
                  character.fullName ?? "None",
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: AppTextTheme.subtitle1.copyWith(
                    height: 1.5,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              RaceGenderText(character: character),
            ],
          ),
          Spacer(),
          ...[suffix ?? Container()],
          const SizedBox(width: 26.0),
        ],
      ),
      onTap: onTap,
    );
  }
}
