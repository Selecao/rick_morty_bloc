import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/components/location_tile.dart';
import 'package:sc_03/screens/location/screen.dart';
import 'package:sc_03/screens/locations_list/bloc/locations_list_bloc.dart';

class LocationsList extends StatefulWidget {
  const LocationsList({Key? key}) : super(key: key);

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
    final _locationsProvider = context.watch<LocationsListBloc>();

    bool isShowLoading() => !_locationsProvider.hasReachedLastPage && isLoading;

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        _checkAndLoadData(context, scrollInfo);
        return false;
      },
      child: ListView.builder(
        itemBuilder: (context, index) => isShowLoading() &&
                index == (_locationsProvider.locationsList.length)
            ? Center(child: AppCircularProgressIndicator())
            : LocationTile(
                location: _locationsProvider.locationsList[index],
                onTap: () {
                  if (_locationsProvider.locationsList[index].id != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationScreen(
                            _locationsProvider.locationsList[index].id!),
                      ),
                    );
                  }
                },
              ),
        itemCount: isShowLoading()
            ? _locationsProvider.locationsList.length + 1
            : _locationsProvider.locationsList.length,
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

    bool _isPaginated() {
      return BlocProvider.of<LocationsListBloc>(context).isPaginationEnable &&
          !isLoading;
    }

    if (_isPaginated() && _isScrolledToEnd()) {
      setState(() {
        isLoading = true;
      });
      Future.delayed(new Duration(seconds: 1)).then((value) =>
          context.read<LocationsListBloc>()
            ..add(LocationsListEvent.nextPage()));
    }
  }
}
