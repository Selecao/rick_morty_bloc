import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/selected_episode_model.dart';
import 'package:sc_03/data/network/service_api.dart';

class Repository {
  final _serviceApi = ServiceApi();

  Future<List<Character>?> getCharacters() async {
    final response = await _serviceApi.getCharacters();
    return response.data;
  }

  /*Future<EpisodeModel> getEpisodeById(String id) async {
    final response = await _serviceApi.getEpisodeById(id);
    return response;
  }*/
}
