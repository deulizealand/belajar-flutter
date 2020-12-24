import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String slug;
  String title;
  String body;

  PostResult({this.slug, this.title, this.body});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      slug: object['slug'],
      title: object['title'],
      body: object['body'],
    );
  }

  static Future<PostResult> connectTOAPI(String title, String body) async {
    String apiURL = "http://192.168.43.211:8000/api/create-new-article";

    var apiResult = await http.post(
      apiURL,
      body: {"title": title, "body": body},
    );

    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
