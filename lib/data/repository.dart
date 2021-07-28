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

  Future<List<Character>?> getCharactersList(
      {required int pageNumber, required int pageSize}) async {
    final response = await _serviceApi.getCharacters(pageNumber, pageSize);
    return response.data;
  }

  Future<Episode> getEpisodeById(String id) async {
    final response = await _serviceApi.getEpisodeById(id);
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

  Future<List<Location>?> getLocationsList(
      {required int pageNumber, required int pageSize}) async {
    final response = await _serviceApi.getLocationsList(pageNumber, pageSize);
    return response.data;
  }

  Future<Character> getCharacter(String id) async {
    final response = await _serviceApi.getCharacterById(id);
    return response.data;
  }
}
