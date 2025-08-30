import '../../exports.dart';

class DioClient {
  Dio provideDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConsts.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );

    // dio.interceptors.add(
    //   PrettyDioLogger(
    //     requestHeader: true,
    //     requestBody: true,
    //     responseBody: true,
    //     responseHeader: false,
    //     error: true,
    //     compact: true,
    //     maxWidth: 100,
    //     enabled: kDebugMode,
    //   ),
    // ); // Logging

    return dio;
  }
}
