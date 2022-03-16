

import 'dart:convert';
import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';



class SharedPreferenceHelper{
  static late SharedPreferences _prefsInstance;
  var _prefs;


  static const String _fcmToken  = "fcmToken";
  static const String _userType = "userType";
  static const String _userId = "userId";
  static const String _userToken = "userToken";
  static const String _cardId = "cardId";
  static const String _countryCode = "countryCode";

  static final JsonDecoder _decoder = JsonDecoder();
  static final JsonEncoder _encoder = JsonEncoder.withIndent('  ');

  static final SharedPreferenceHelper _singleton =
  SharedPreferenceHelper._internal();

  SharedPreferenceHelper._internal() {
    _prefs ??= SharedPreferences.getInstance();
  }

  static Future<SharedPreferences> init() async {
    _prefsInstance = await SharedPreferences.getInstance();
    return _prefsInstance;
  }

  factory SharedPreferenceHelper() {
    return _singleton;
  }

  _savePref(String key, Object? value) async{
    var prefs = _prefsInstance;
    if (prefs.containsKey(key)) {
      prefs.remove(key);
    }
    if (value is bool) {
      return prefs.setBool(key, value);
    } else if (value is int) {
      return prefs.setInt(key, value);
    } else if (value is String) {
      return prefs.setString(key, value);
    } else if (value is Double || value is Float) {
      return prefs.setDouble(key, value as double);
    }
  }

  T _getPref<T>(String key) {
    return _prefsInstance.get(key) as T;
  }

  void clearAll() {
    var token = getFcmToken();
    var countryCode = getCountryCode();
    _prefsInstance.clear();
    saveFcmToken(token);
    saveCountryCode(countryCode);
  }

  String? getCountryCode() {
    return _getPref(_countryCode);
  }

  void saveCountryCode(String? countryCode) {
    _savePref(_countryCode, countryCode);
  }

  String? getFcmToken() {
    return _getPref(_fcmToken);
  }

  void saveFcmToken(String? token) {
    _savePref(_fcmToken, token);
  }

  String getUserType() {
    return _getPref(_userType)??"2";
  }

  void saveUserType(String? token) {
    _savePref(_userType, token);
  }

  String? getUserId() {
    return _getPref(_userId);
  }

  void saveUserId(String? userId) {
    _savePref(_userId, userId);
  }

  String? getUserToken() {
    return _getPref(_userToken);
  }

  void saveUserToken(String? token) {
    _savePref(_userToken, token);
  }





  String? getCardId() {
    return _getPref(_cardId)??"";
  }

  void saveCardId(String? cardId) {
    _savePref(_cardId, cardId);
  }
}