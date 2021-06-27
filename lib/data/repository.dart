import 'package:sc_03/data/network/models/characters.dart';
import 'package:sc_03/data/network/service_api.dart';

class Repository {
  final _serviceApi = ServiceApi();

  Future<Characters> getCharacters() async {
    final response = await _serviceApi.getCharacters();
    return response;
  }
}
