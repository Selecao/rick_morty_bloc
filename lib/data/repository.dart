import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/data/network/service_api.dart';
import 'package:sc_03/resources/constants.dart';
import 'package:sc_03/theme/theme_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'network/models/location.dart';

class Repository {
  Repository() {
    init();
  }

  late SharedPreferences _prefs;

  Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  ThemeType getThemeType() {
    final String? type = _prefs.getString(Constants.ThemeType);
    return type as ThemeType;
  }

  final _serviceApi = ServiceApi();

  Future<List<Character>?> getAllCharacters(
      {required int pageNumber, required int pageSize}) async {
    final response = await _serviceApi.getAllCharacters(pageNumber, pageSize);
    return response.data;
  }

  Future<Character> getCharacterById(String id) async {
    final response = await _serviceApi.getCharacterById(id);
    return response.data;
  }

  Future<List<Character>?> getCharacterByName(String name,
      {List<int> status = const [0, 1, 2],
      List<int> gender = const [0, 1, 2]}) async {
    List<int> _status = _setDefaultIfEmpty(status);
    List<int> _gender = _setDefaultIfEmpty(gender);

    final response =
        await _serviceApi.getCharacterByName(name, _status, _gender);
    return response.data;
  }

  Future<Episode> getEpisodeById(String id) async {
    final response = await _serviceApi.getEpisodeById(id);
    return response.data;
  }

  Future<List<Episode>?> getEpisodesByName(String name) async {
    final response = await _serviceApi.getEpisodesByName(name);
    return response.data;
  }

  Future<List<Episode>?> getEpisodesList(
      {required int pageNumber, required int pageSize}) async {
    final response = await _serviceApi.getEpisodesList(pageNumber, pageSize);
    return response.data;
  }

  Future<Location> getLocationById(String id) async {
    final response = await _serviceApi.getLocationById(id);
    return response.data;
  }

  Future<List<Location>?> getLocationsByName(String name,
      {String type = "", String measurements = ""}) async {
    final response =
        await _serviceApi.getLocationsByFilter(name, type, measurements);
    return response.data;
  }

  Future<List<Location>?> getLocationsList(
      {required int pageNumber, required int pageSize}) async {
    final response = await _serviceApi.getLocationsList(pageNumber, pageSize);
    return response.data;
  }

  List<int> _setDefaultIfEmpty(List<int> list) {
    if (list.isEmpty) {
      return const [0, 1, 2];
    } else {
      return list;
    }
  }
}
