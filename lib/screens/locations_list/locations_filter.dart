import 'package:flutter/foundation.dart';

class LocationsFilter with ChangeNotifier {
  String _locationToFind = "";
  String get locationToFind => _locationToFind;
  bool? _isSortAscending;
  bool? get isSortAscending => _isSortAscending;
  String _locationType = "";
  String get locationType => _locationType;
  String _locationMeasure = "";
  String get locationMeasure => _locationMeasure;
  bool get isFilterEnable =>
      locationType != "" || locationMeasure != "" || _isSortAscending != null;
  bool _isPaginationEnable = true;
  bool get isPaginationEnable => _isPaginationEnable;
  bool _hasReachedLastPage = false;
  bool get hasReachedLastPage => _hasReachedLastPage;

  void reset() {
    _isSortAscending = null;
    _locationType = '';
    _locationMeasure = '';
    print(" # Reset Locations Filter");
    notifyListeners();
  }

  void setHasReachedLastPage(bool value) {
    _hasReachedLastPage = value;
    if (_hasReachedLastPage) print(" ### LAST PAGE REACHED ###");
    print(" ### [Setter]: hasReachedLastPage : $_hasReachedLastPage");
    notifyListeners();
  }

  void setIsPaginationEnable(bool value) {
    _isPaginationEnable = value;
    print(" ### [Setter]: isPaginationEnable : $_isPaginationEnable");
    notifyListeners();
  }

  void setLocationToFind(String value) {
    _locationToFind = value;
    print(" ### [Setter]: locationToFind : $_locationToFind");
    notifyListeners();
  }

  void setLocationType(String value) {
    _locationType = value;
    print(" ### [Setter]: locationType : $_locationType");
    notifyListeners();
  }

  void setLocationMeasure(String value) {
    _locationMeasure = value;
    print(" ### [Setter]: locationMeasure : $_locationMeasure");
    notifyListeners();
  }

  void setIsSortAscending(bool? value) {
    _isSortAscending = value;
    print(" ### [Setter]: isSortAscendingToFind : $_isSortAscending");
    notifyListeners();
  }
}
