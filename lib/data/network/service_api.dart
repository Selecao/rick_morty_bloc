import 'package:dio/dio.dart';
import 'package:sc_03/data/network/dio_settings.dart';
import 'package:sc_03/data/network/models/characters_model.dart';

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

  Future<CharactersModel> getCharacters() async {
    print("## Пошел запрос на персонажей");
    Response<String> response = await _dio.get(
      "/Characters/GetAll",
      queryParameters: {"PageNumber": 1, "PageSize": 10},
    );
    return charactersFromJson(response.toString());
  }
}
