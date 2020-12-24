import 'dart:convert';

import 'package:http/http.dart' as http;

class Articles {
  String title;
  String createdat;

  Articles({this.title, this.createdat});

  factory Articles.createArticles(Map<String, dynamic> object) {
    return Articles(title: object['title'], createdat: object['created_at']);
  }

  static Future<List<Articles>> getArticles(String page) async {
    String apiURL = "http://192.168.43.211:8000/api/articles?page=" + page;
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listArticles = (jsonObject as Map<String, dynamic>)['data'];

    List<Articles> articles = [];
    for (int i = 0; i < listArticles.length; i++)
      articles.add(Articles.createArticles(listArticles[i]));
    return articles;
  }
}
