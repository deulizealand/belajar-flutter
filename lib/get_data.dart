import 'package:belajar_multipage/model/post_result_model.dart';
import 'package:flutter/material.dart';

import 'model/article_model.dart';
import 'model/articles_model.dart';

class PostData extends StatefulWidget {
  @override
  _PostDataState createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  TextEditingController getTitle = TextEditingController();
  PostResult postResult = null;
  Article article = null;
  String output = "nodata";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Post Method'),
            Text((postResult != null)
                ? postResult.title +
                    " | " +
                    postResult.body +
                    " |" +
                    postResult.slug
                : "Tidak ada Data"),
            RaisedButton(
              onPressed: () {
                PostResult.connectTOAPI("Post FLutter", "COBAIN GG DONG")
                    .then((value) => postResult = value);
                setState(() {});
              },
              child: Icon(Icons.get_app),
            ),
            Column(
              children: [
                Text('Get {id} Method'),
                Text((article != null)
                    ? article.title + " | " + article.createdat
                    : "Tidak ada Data"),
                RaisedButton(
                  onPressed: () {
                    Article.connectToAPI("post-flutter")
                        .then((value) => article = value);
                    setState(() {});
                  },
                  child: Icon(Icons.get_app),
                )
              ],
            ),
            Column(
              children: [
                Text('Get Method'),
                Text(output),
                TextField(
                  controller: getTitle,
                ),
                RaisedButton(
                  onPressed: () {
                    Articles.getArticles(getTitle.text).then((value) {
                      output = "";
                      for (int i = 0; i < value.length; i++)
                        output = output + "[" + value[i].title + "]";
                    });
                    setState(() {});
                  },
                  child: Icon(Icons.get_app),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
