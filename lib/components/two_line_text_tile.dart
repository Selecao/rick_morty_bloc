import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';

class TwoLineTextTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const TwoLineTextTile(
    this.title,
    this.subtitle, {
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        height: 1.3,
                        letterSpacing: 0.5,
                      ),
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        letterSpacing: 0.25,
                        height: 1.42,
                      ),
                ),
              ],
            ),
            Spacer(),
            SvgPicture.asset(
              AppIcons.arrowForwardIos,
              height: 8.0,
              color: Theme.of(context).accentColor,
            )
          ],
        ),
      ),
    );
  }
}
