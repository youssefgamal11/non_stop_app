import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio;
  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: 'http://nonstop.taha.rmal.com.sa/api/',
          receiveDataWhenStatusError: true,
          headers: {
            'Accept': 'application/json',
          }),
    );
  }

  static Future<Response> postData(
      {Map<String, dynamic> data, Map<String, dynamic> query, String url}) {
    return dio.post(url, data: data, queryParameters: query);
  }

  static Future<Response> getData({
    String url,
    Map<String, dynamic> query,
    // String lang,
  }) async {
    return await dio.get(url, queryParameters: query);
  }
}
