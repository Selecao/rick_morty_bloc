import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/components/location_tile.dart';
import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/screens/location/screen.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';
import 'package:sc_03/screens/locations_list/locations_filter.dart';

class LocationsList extends StatefulWidget {
  final List<Location> locations;
  LocationsList(this.locations);

  @override
  _LocationsListState createState() => _LocationsListState();
}

class _LocationsListState extends State<LocationsList> {
  bool isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    final _filterData = context.watch<LocationsFilter>();

    bool isShowLoading() => !_filterData.hasReachedLastPage && isLoading;

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        _checkAndLoadData(context, scrollInfo);
        return false;
      },
      child: ListView.builder(
        itemBuilder: (context, index) =>
            isShowLoading() && index == (widget.locations.length)
                ? Center(child: AppCircularProgressIndicator())
                : LocationTile(
                    location: widget.locations[index],
                    onTap: () {
                      if (widget.locations[index].id != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                LocationScreen(widget.locations[index].id!),
                          ),
                        );
                      }
                    },
                  ),
        itemCount: isShowLoading()
            ? widget.locations.length + 1
            : widget.locations.length,
        itemExtent: 242.0,
        shrinkWrap: true,
        padding: EdgeInsets.only(
          left: 16.0,
          right: 18.0,
          bottom: 16.0,
        ),
      ),
    );
  }

  void _checkAndLoadData(BuildContext context, ScrollNotification scrollInfo) {
    bool _isScrolledToEnd() {
      return scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent;
    }

    bool _isPaginated(BuildContext context) {
      return context.read<LocationsFilter>().isPaginationEnable && !isLoading;
    }

    if (_isPaginated(context) && _isScrolledToEnd()) {
      setState(() {
        isLoading = true;
      });
      Future.delayed(new Duration(seconds: 1)).then(
        (value) => context.read<LocationsListBloc>()
          ..add(
            LocationsListEvent.nextPage(
                filter: context.read<LocationsFilter>()),
          ),
      );
    }
  }
}
