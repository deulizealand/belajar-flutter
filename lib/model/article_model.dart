import 'dart:convert';

import 'package:http/http.dart' as http;

class Article {
  String title;
  String createdat;

  Article({this.title, this.createdat});

  factory Article.createUser(Map<String, dynamic> object) {
    return Article(title: object['title'], createdat: object['created_at']);
  }

  static Future<Article> connectToAPI(String slug) async {
    String apiURL = "http://192.168.43.211:8000/api/articles/" + slug;
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    var articleData = (jsonObject as Map<String, dynamic>)['data'];

    return Article.createUser(articleData);
  }
}
