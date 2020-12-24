import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController password = TextEditingController();
  String info = "";
  final globalKey = GlobalKey<ScaffoldState>();
  void showToast(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        // leading: Icon(Icons.subject_rounded),
        title: Container(
          child: Row(
            children: [Text('Masukan'), Text('Data Diri')],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showToast('Unready Bro !');
            },
            icon: Icon(
              Icons.settings,
            ),
          ),
          IconButton(
            onPressed: () {
              showToast('Unready Bro !');
            },
            icon: Icon(Icons.ac_unit),
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(nama.text),
          Text(info),
          Container(
            margin: EdgeInsets.all(5),
            child: Card(
              elevation: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      maxLength: 8,
                      onChanged: (value) {},
                      controller: nama,
                      decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          prefixText: "Nama :",
                          prefixStyle: TextStyle(color: Colors.cyan),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          labelText: 'Nama Lengkap'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: true,
                      maxLength: 8,
                      onChanged: (value) {},
                      controller: password,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'Password'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      info = "Form Kosong ";
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.backspace),
                ),
              ),
            ],
          )
        ],
      )),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _displaySnackBar('Not Yet !');
                      }),
                  Text('senpai mastery')
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              child: Column(
                children: [
                  daftar('Menu 1'),
                  daftar('Menu 2'),
                  daftar('Menu 3')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _displaySnackBar(String text) {
    final snackBar = SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Okay',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    globalKey.currentState.showSnackBar(snackBar);
  }

  ListTile daftar(String text) {
    return ListTile(
      title: Text(text),
      onTap: () {
        _displaySnackBar('Calm Down ');
      },
      trailing: Icon(Icons.more_vert),
    );
  }
}
