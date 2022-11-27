import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> setDataBool(key, value) async {
    return await sharedPreferences?.setBool(key, value);
  }

  static getData(key) {
    return sharedPreferences?.get(key);
  }
}
