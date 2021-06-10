import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class EpisodeDescription extends StatelessWidget {
  final Episode episode;

  EpisodeDescription(this.episode);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: [
          Text(
            episode.title,
            style: AppTextTheme.headline5.copyWith(height: 1.33),
            textAlign: TextAlign.center,
          ),
          Container(height: 3.0),
          Text(
            episode.number.toUpperCase(),
            style: AppTextTheme.subtitle2.copyWith(
              color: ColorTheme.cyan_300.withOpacity(0.87),
              letterSpacing: 1.5,
              height: 1.6,
            ),
          ),
          Container(height: 36.0),
          Text(
            episode.description,
            style: AppTextTheme.bodyText2.copyWith(
              height: 1.5,
              letterSpacing: 0.25,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(height: 24.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Премьера',
                style: AppTextTheme.caption.copyWith(
                  letterSpacing: 0.5,
                  height: 1.33,
                ),
              ),
              Container(height: 4.0),
              Text(
                episode.releaseDate,
                style: AppTextTheme.bodyText1.copyWith(
                  letterSpacing: .25,
                  height: 1.42,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 36.0),
            child: AppDivider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Персонажи',
                style: AppTextTheme.headline5.copyWith(
                  height: 1.4,
                  letterSpacing: 0.15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
