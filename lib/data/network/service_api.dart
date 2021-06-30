import 'package:dio/dio.dart';
import 'package:sc_03/data/network/dio_settings.dart';
import 'package:sc_03/data/network/models/characters_model.dart';
import 'package:sc_03/data/network/models/episode_model.dart';
import 'package:sc_03/data/network/models/episodes_list_model.dart';
import 'package:sc_03/data/network/models/location_model.dart';

class ServiceApi {
  late DioSettings _dioSettings;
  late Dio _dio;

  /// TODO: мап для запроса?!
  // late Map<String, dynamic> _request;

  /// singleton
  static ServiceApi _instance = new ServiceApi.internal();
  factory ServiceApi() => _instance;

  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  Future<CharactersModel> getCharacters(int pageNumber, int pageSize) async {
    print("## Пошел запрос на персонажей");
    Response<String> response = await _dio.get(
      "/Characters/GetAll",
      queryParameters: {"PageNumber": pageNumber, "PageSize": pageSize},
    );
    return charactersModelFromJson(response.toString());
  }

  Future<EpisodeModel> getEpisodeById(String id) async {
    print("## Пошел запрос на выбранный эпизод");
    Response<String> response = await _dio.get(
      "/Episodes/GetById",
      queryParameters: {"Id": id},
    );
    return episodeModelFromJson(response.toString());
  }

  Future<EpisodesListModel> getEpisodesList(
      int pageNumber, int pageSize) async {
    print("## Пошел запрос на список всех персонажей");
    Response<String> response = await _dio.get(
      "/Episodes/GetAll",
      queryParameters: {"PageNumber": pageNumber, "PageSize": pageSize},
    );
    return episodesListModelFromJson(response.toString());
  }

  Future<LocationModel> getLocationById(String id) async {
    print("## Пошел запрос на выбранную локацию");
    Response<String> response = await _dio.get(
      "/Locations/GetById",
      queryParameters: {"Id": id},
    );
    return locationModelFromJson(response.toString());
  }
}
