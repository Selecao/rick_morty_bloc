import 'package:dio/dio.dart';

class DioSettings {
  static final mainServer = "http://173.249.20.184:7001/api";

  Dio dio = Dio(
    BaseOptions(
      baseUrl: mainServer,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ),
  );

  void initialSettings() {
    print("## Dio initial settings");
    Interceptors interceptors = dio.interceptors;

    /// TODO: seems error here
    RequestOptions requestOptions = RequestOptions(path: "/Characters/GetAll");

    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          //requestOptions = options;
          return handler.next(options);
        },

        /// Обрабатываем ошибки
        onResponse: (response, handler) {
          print("## onResponse in DIO");
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
          return handler.next(response);
        },
        onError: (DioError error, handler) async {
          print(error);
          if (error.type == DioErrorType.connectTimeout) {
            print("## There is ServerTimeout on dio response");

            throw DioError(
              requestOptions: requestOptions,
              error: "Сервер не отвечает попробуйте еще раз",
              response: Response(
                requestOptions: requestOptions,
                statusCode: 400,
              ),
            );
          } else if (error.message.contains("SocketException:")) {
            print("## There is SocketException on dio response");

            throw DioError(
              requestOptions: requestOptions,
              error: "Отсутствует интернет соединение",
              response: Response(
                requestOptions: requestOptions,
                statusCode: 400,
              ),
            );
          } else if (error.response!.statusCode == 401) {
            print("## There is Error on dio response");
            //TODO: make Error handler class with widget return on [showError]
            /*ErrorHandler().showError(
              DioError(
                requestOptions: requestOptions,
                error: "Ошибка авторизации",
              ),
            );*/
          }
          return handler.next(error);
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
