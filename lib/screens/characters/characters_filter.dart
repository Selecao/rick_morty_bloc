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
    print(" # Reset Characters Filter");
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

  void setStatus(List<int> statuses) {
    _status = statuses;
    print(" ### [Setter]: status : $_status");
    notifyListeners();
  }

  void setGender(List<int> genders) {
    _gender = genders;
    print(" ### [Setter]: gender : $_gender");
    notifyListeners();
  }

  void setNameToFind(String value) {
    _nameToFind = value;
    print(" ### [Setter]: nameToFind : $_nameToFind");
    notifyListeners();
  }

  void setIsSortAscending(bool? value) {
    _isSortAscending = value;
    print(" ### [Setter]: isSortAscendingToFind : $_isSortAscending");
    notifyListeners();
  }
}
