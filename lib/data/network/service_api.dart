import 'package:dio/dio.dart';
import 'package:sc_03/data/network/dio_settings.dart';

class ServiceApi {
  late DioSettings _dioSettings;
  late Dio _dio;

  /// И мап для запроса
  late Map<String, dynamic> _request;

  /// singleton
  static ServiceApi _instance = new ServiceApi.internal();
  factory ServiceApi() => _instance;

  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }
}
