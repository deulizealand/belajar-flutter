import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RegisterRes {
  String username;
  String name;
  String email;
  String password;

  RegisterRes({this.username, this.name, this.email, this.password});

  // factory Register.createLoginResult(Map<String, dynamic> object) {
  //   return Register(token: object['token']);
  // }

  static connect(
      String email, String username, String name, String password) async {
    String apiURL = "http://172.17.0.1:8000/api/register";

    var apiResult = await http.post(
      apiURL,
      body: {
        "email": email,
        "username": username,
        "name": name,
        "password": password
      },
    );

    // var jsonObject = json.decode(apiResult.body);
    if (apiResult.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
