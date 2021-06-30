import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/data/network/service_api.dart';

class Repository {
  final _serviceApi = ServiceApi();

  Future<List<Character>?> getCharacters() async {
    final response = await _serviceApi.getCharacters();
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
}
