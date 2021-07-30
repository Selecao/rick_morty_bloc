import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/theme/app_color.dart';

class LocationImage extends StatelessWidget {
  final String? image;

  LocationImage(this.image);

  @override
  Widget build(BuildContext context) {
    const imageHeight = 276.0;
    const borderRadius = 26.0;

    return Stack(
      children: [
        (image == null) || (image == '')
            ? Container(
                height: imageHeight,
                color: Theme.of(context).canvasColor,
              )
            : ShaderMask(
                shaderCallback: (rect) {
                  return AppColor.shadeGradient.createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.srcATop,
                child: CachedNetworkImage(
                  imageUrl: image ?? 'no image',
                  imageBuilder: (context, imageProvider) => Container(
                    height: imageHeight,
                    decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
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
              ),
        Positioned(
          bottom: .0,
          child: Container(
            height: borderRadius,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
