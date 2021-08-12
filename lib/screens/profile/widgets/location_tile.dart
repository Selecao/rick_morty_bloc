import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/screens/location/screen.dart';

class LocationTile extends StatelessWidget {
  final String title;
  final String location;
  final String? locationId;

  const LocationTile(
    this.title,
    this.location, {
    this.locationId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (locationId != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return LocationScreen(locationId!);
            }),
          );
        }
      },
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
                  location,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        letterSpacing: 0.25,
                        height: 1.42,
                      ),
                ),
              ],
            ),
            Spacer(),
            //ArrowButton(onPressed: () {}),
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
