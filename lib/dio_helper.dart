import 'package:dio/dio.dart';

class DioHelper {
  static Dio? ourDio;
  static init() {
    ourDio = Dio(BaseOptions(baseUrl: 'https://newsapi.org/v2/'));
  }

  static Future<Response?> getData(path, Map<String, dynamic> query) async {
    return ourDio?.get(path, queryParameters: query);
  }
}
