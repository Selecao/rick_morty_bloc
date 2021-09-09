import 'dart:collection';

import 'package:flutter/foundation.dart';

class CharactersFilter with ChangeNotifier {
  String _nameToFind = "";
  String get nameToFind => _nameToFind;
  bool? _isSortAscending;
  bool? get isSortAscending => _isSortAscending;
  List<int> _status = [];
  UnmodifiableListView<int> get status => UnmodifiableListView(_status);
  List<int> _gender = [];
  UnmodifiableListView<int> get gender => UnmodifiableListView(_gender);
  bool get isFilterEnable =>
      status.length != 0 || gender.length != 0 || _isSortAscending != null;
  bool _isPaginationEnable = true;
  bool get isPaginationEnable => _isPaginationEnable;
  bool _hasReachedLastPage = false;
  bool get hasReachedLastPage => _hasReachedLastPage;

  void reset() {
    _isSortAscending = null;
    _status = [];
    _gender = [];
    print(" *~* Reset Characters Filter");
    notifyListeners();
  }

  void setHasReachedLastPage(bool newValue) {
    _hasReachedLastPage = newValue;
    if (_hasReachedLastPage) print(" ### LAST PAGE REACHED ###");
    print(" *~* [Setting]: hasReachedLastPage : $_hasReachedLastPage");
    notifyListeners();
  }

  void setIsPaginationEnable(bool isPaginationEnable) {
    _isPaginationEnable = isPaginationEnable;
    print(" *~* [Setting]: isPaginationEnable : $_isPaginationEnable");
    notifyListeners();
  }

  void setStatus(List<int> statuses) {
    _status = statuses;
    print(" *~* [Setting]: status : $_status");
    notifyListeners();
  }

  void setGender(List<int> genders) {
    _gender = genders;
    print(" *~* [Setting]: gender : $_gender");
    notifyListeners();
  }

  void setNameToFind(String name) {
    _nameToFind = name;
    print(" *~* [Setting]: nameToFind : $_nameToFind");
    notifyListeners();
  }

  void setIsSortAscending(bool? isAscending) {
    _isSortAscending = isAscending;
    print(" *~* [Setting]: isSortAscendingToFind : $_isSortAscending");
    notifyListeners();
  }
}
