import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginResult {
  String token;
  String code;

  LoginResult({this.token, this.code});

  static addStringToSF(String name, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(name, value);
  }

  static getStringValuesSF(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String

    String stringValue = await prefs.getString(token);
    print(stringValue);
    return stringValue;
  }

  static removeValues(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Remove String
    await prefs.remove(token);
  }

  factory LoginResult.createLoginResult(Map<String, dynamic> object, int code) {
    addStringToSF('token', object['token']);
    return LoginResult(token: object['token'], code: code.toString());
  }

  static Future<LoginResult> connectTOAPI(String email, String password) async {
    String apiURL = "http://172.17.0.1:8000/api/login";

    var apiResult = await http.post(
      apiURL,
      body: {"email": email, "password": password},
    );

    var jsonObject = json.decode(apiResult.body);
    if (apiResult.statusCode == 401) {
      return LoginResult.createLoginResult(jsonObject, apiResult.statusCode);
    } else {
      return LoginResult.createLoginResult(jsonObject, apiResult.statusCode);
    }
  }
}
