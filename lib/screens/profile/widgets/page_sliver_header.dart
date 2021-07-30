import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:sc_03/components/app_circle_button.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/app_color.dart';

class PageSliverHeader extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final String image;

  PageSliverHeader({
    required this.expandedHeight,
    required this.image,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double avatarPosition = MediaQuery.of(context).size.width / 4;
    final double avatarSize = MediaQuery.of(context).size.width / 2;

    final appBarSize = maxExtent - shrinkOffset;
    final proportion = 2 - (maxExtent / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Image.network(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColor.white,
                    gradient: AppColor.appBarGradient,
                    backgroundBlendMode: BlendMode.multiply),
              ),
            ],
          ),
        ),
        Positioned(
          top: expandedHeight / 1.7 - shrinkOffset,
          left: avatarPosition,
          child: Opacity(
            opacity: percent,
            child: CachedNetworkImage(
              imageUrl: image,
              imageBuilder: (context, imageProvider) => Container(
                width: avatarSize,
                height: avatarSize,
                decoration: ShapeDecoration(
                  color: AppColor.blue_600,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: AppColor.blue_900,
                      width: 8.0,
                    ),
                  ),
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
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            automaticallyImplyLeading: false,
            titleSpacing: 0.0,
            title: Opacity(
              opacity: percent,
              child: AppCircleButton(
                icon: AppIcons.arrowBack,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
