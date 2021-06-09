import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/location/widgets/location_app_bar.dart';
import 'package:sc_03/screens/location/widgets/location_characters.dart';
import 'package:sc_03/screens/location/widgets/location_description.dart';
import 'package:sc_03/screens/location/widgets/location_image.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: LocationAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            LocationImage(location1.image),
            LocationDescription(location1),
            LocationCharacters(charactersOnLocation),
          ],
        ),
      ),
    );
  }
}
