import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/data/network/models/location.dart';

class LocationTile extends StatelessWidget {
  final Location location;
  final VoidCallback onTap;

  LocationTile({
    required this.location,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const double cornerRadius = 16.0;
    const double pictureHeight = 150.0;

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: location.imageName ?? 'no image',

              imageBuilder: (context, imageProvider) => Container(
                height: pictureHeight,
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: _getTopBorder(cornerRadius),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  AppCircularProgressIndicator(
                      value: downloadProgress.progress),
              errorWidget: (context, _, __) => Container(
                height: pictureHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: _getTopBorder(cornerRadius),
                ),
              ),
              //errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Container(
              height: 68.0,
              padding: EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(cornerRadius),
                  bottomLeft: Radius.circular(cornerRadius),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (location.name ?? "").isEmpty ? "N/A" : location.name!,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          letterSpacing: .15,
                          height: 1.4,
                        ),
                  ),
                  Row(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 340.0),
                        child: Text(
                          '${(location.type ?? "").isEmpty ? "N/A" : location.type} ??? ${(location.measurements ?? "").isEmpty ? "N/A" : location.measurements}',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.caption?.copyWith(
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
      ),
      onTap: onTap,
    );
  }

  BorderRadiusGeometry _getTopBorder(double cornerRadius) => BorderRadius.only(
        topLeft: Radius.circular(cornerRadius),
        topRight: Radius.circular(cornerRadius),
      );
}
