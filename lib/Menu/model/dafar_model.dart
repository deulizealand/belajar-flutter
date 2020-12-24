import 'dart:convert';

import 'package:http/http.dart' as http;

class DaftarModel {
  String title;
  String body;

  DaftarModel({this.title, this.body});

  factory DaftarModel.createDaftarModel(Map<String, dynamic> object) {
    return DaftarModel(title: object['title'], body: object['body']);
  }

  static Future<List<DaftarModel>> getDaftarModel() async {
    String apiURL = "http://172.17.0.1:8000/api/articles";
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listDaftarModel =
        (jsonObject as Map<String, dynamic>)['data'];
    List<DaftarModel> dm = [];
    for (int i = 0; i < listDaftarModel.length; i++)
      dm.add(DaftarModel.createDaftarModel(listDaftarModel[i]));
    return dm;
  }
}
