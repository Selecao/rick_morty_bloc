import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class LocationTile extends StatelessWidget {
  final Location location;

  LocationTile(this.location);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Container(
            height: 150.0,
            decoration: BoxDecoration(
              color: ColorTheme.blueGrey_600,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              image: DecorationImage(
                image: NetworkImage(location.imageName ?? "None"),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
          ),
          Container(
            height: 68.0,
            padding: EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
            decoration: BoxDecoration(
              color: ColorTheme.blue_600,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (location.name ?? "").isEmpty ? "N/A" : location.name!,
                  style: AppTextTheme.headline6.copyWith(
                    letterSpacing: .15,
                    height: 1.4,
                  ),
                ),
                Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 340.0),
                      child: Text(
                        '${(location.type ?? "").isEmpty ? "N/A" : location.type} • ${(location.measurements ?? "").isEmpty ? "N/A" : location.measurements}',
                        overflow: TextOverflow.ellipsis,
                        style: AppTextTheme.caption.copyWith(
                          letterSpacing: .5,
                          height: 1.33,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
