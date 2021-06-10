import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';
import 'package:sc_03/components/search_text_field.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/locations_list/widgets/location_tile.dart';
import 'package:sc_03/screens/locations_list/widgets/locations_list_app_bar.dart';
import 'package:sc_03/theme/text_theme.dart';

class LocationsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LocationsListAppBar(locationsList.length),
      body: ListView.builder(
        itemBuilder: (context, index) => LocationTile(locationsList[index]),
        itemCount: locationsList.length,
        itemExtent: 242.0,
        shrinkWrap: true,
        padding: EdgeInsets.only(
          left: 16.0,
          right: 18.0,
          bottom: 16.0,
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: 1),
    );
  }
}
