import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sc_03/components/race_gender_text.dart';
import 'package:sc_03/components/status_text.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class CharacterGridItem extends StatelessWidget {
  final Character character;
  final VoidCallback onTap;

  CharacterGridItem({
    required this.character,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: character.imageName ?? 'no image',
            imageBuilder: (context, imageProvider) => Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: ColorTheme.blue_600,
                borderRadius: BorderRadius.circular(60.0),
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
          const SizedBox(height: 18.0),
          StatusText(statusIndex: character.status ?? 2),
          Text(
            character.fullName ?? "None",
            style: AppTextTheme.bodyText1.copyWith(
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
              height: 1.42,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          RaceGenderText(character: character),
        ],
      ),
      onTap: onTap,
    );
  }
}
