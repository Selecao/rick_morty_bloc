import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';
import 'package:sc_03/components/search_text_field.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/locations_list/widgets/location_tile.dart';
import 'package:sc_03/theme/text_theme.dart';

class LocationsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: SearchTextField(title: 'Найти локацию'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Text(
                  'ВСЕГО ЛОКАЦИЙ: ${locationsList.length}',
                  style: AppTextTheme.subtitle2.copyWith(letterSpacing: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
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
