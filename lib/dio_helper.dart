import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        headers: {'lang': 'ar', 'Content-Type': 'application/json'}));
  }

  static Future<Response?> postData(path, data,
      {Map<String, dynamic>? query}) async {
    return dio?.post(path, queryParameters: query, data: data);
  }
}
