import 'package:flutter/material.dart';
import './model/dafar_model.dart';

class DaftarArticle extends StatefulWidget {
  @override
  _DaftarArticleState createState() => _DaftarArticleState();
}

class _DaftarArticleState extends State<DaftarArticle> {
  final output = <DaftarModel>[];

  Widget _buildList() {
    return FutureBuilder(
      future: DaftarModel.getDaftarModel(),
      builder: (context, snapshot) {
        return ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, item) {
              final index = item;
              output.addAll(snapshot.data);
              return _buildRow(output[index]);
            });
      },
    );
  }

  Widget _buildRow(DaftarModel a) {
    return ListTile(
      title: Text(
        'x7 ☘ ' + a.body,
        style: TextStyle(fontSize: 18.0),
      ),
      trailing: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List item'),
      ),
      body: _buildList(),
      endDrawer: RaisedButton(
        onPressed: () {
          // _getData();
          setState(() {});
        },
        child: Text('update'),
      ),
    );
  }
}
