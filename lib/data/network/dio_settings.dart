import 'package:dio/dio.dart';

class DioSettings {
  static final mainServer = "https://api.???.kz/";

  Dio dio = Dio(
    BaseOptions(
      baseUrl: mainServer,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ),
  );

  void initialSettings() {
    Interceptors interceptors = dio.interceptors;
    late RequestOptions requestOptions;

    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          requestOptions = options;
        },

        /// Обрабатываем ошибки
        onResponse: (response, handler) {
          if (response.statusCode == 204) {
            throw DioError(
              requestOptions: requestOptions,
              error: "Отсутствуют данные",
              response: Response(
                requestOptions: requestOptions,
                statusCode: 400,
              ),
            );
          }
        },
        onError: (DioError error, handler) async {
          if (error.type == DioErrorType.connectTimeout) {
            throw DioError(
              requestOptions: requestOptions,
              error: "Сервер не отвечает попробуйте еще раз",
              response: Response(
                requestOptions: requestOptions,
                statusCode: 400,
              ),
            );
          } else if (error.message.contains("SocketException:")) {
            throw DioError(
              requestOptions: requestOptions,
              error: "Отсутствует интернет соединение",
              response: Response(
                requestOptions: requestOptions,
                statusCode: 400,
              ),
            );
          } else if (error.response!.statusCode == 401) {

            //TODO: make Error handler class with widget return on [showError]
            /*ErrorHandler().showError(
              DioError(
                requestOptions: requestOptions,
                error: "Ошибка авторизации",
              ),
            );*/
          }
          return error as Future;
        },
      ),
    );

    /// Добавляем настройки логов
    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));

    /// Разблокируем запрос
    interceptors.requestLock.unlock();
  }

  DioSettings() {
    initialSettings();
  }
}
