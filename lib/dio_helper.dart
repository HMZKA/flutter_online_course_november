import 'package:dio/dio.dart';

class DioHelper {
  static Dio? ourDio;
  static init() {
    ourDio = Dio(BaseOptions(baseUrl: 'https://newsapi.org/v2/'));
  }

  static getData() {
    ourDio?.get('top-headlines', queryParameters: {
      'country': 'us',
      'category': 'business',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    });
  }
}
