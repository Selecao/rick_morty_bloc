import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/data/network/service_api.dart';

import 'network/models/location.dart';

class Repository {
  final _serviceApi = ServiceApi();

  Future<List<Character>?> getCharacters(
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
}
