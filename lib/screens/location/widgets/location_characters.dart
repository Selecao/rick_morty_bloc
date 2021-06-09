import 'package:flutter/material.dart';
import 'package:sc_03/components/arrow_button.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class LocationCharacters extends StatelessWidget {
  final List<Character> charactersOnLocation;

  LocationCharacters(this.charactersOnLocation);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 12.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Row(
        children: [
          const SizedBox(width: 16.0),
          Container(
            alignment: Alignment.center,
            width: 74.0,
            height: 74.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(charactersOnLocation[index].avatar),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(40.0),
              color: ColorTheme.blue_600,
            ),
          ),
          const SizedBox(width: 18.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                charactersOnLocation[index].status.toUpperCase(),
                style: AppTextTheme.subtitle2.copyWith(
                  height: 1.6,
                  letterSpacing: 1.5,
                  color: charactersOnLocation[index].status.toUpperCase() ==
                          'ЖИВОЙ'
                      ? ColorTheme.green_200
                      : ColorTheme.red_100,
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200.0),
                child: Text(
                  charactersOnLocation[index].name,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: AppTextTheme.subtitle1.copyWith(
                    height: 1.5,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Text(
                '${charactersOnLocation[index].race}, ${charactersOnLocation[index].gender}',
                style: AppTextTheme.caption.copyWith(
                  height: 1.33,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          Spacer(),
          ArrowButton(onPressed: () {}),
        ],
      ),
      itemCount: charactersOnLocation.length,
      itemExtent: 98.0,
    );
  }
}
