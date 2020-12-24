import 'package:belajar_multipage/Menu/daftar.dart';
import 'package:belajar_multipage/card_widget.dart';
import 'package:belajar_multipage/login_screen.dart';
import 'package:belajar_multipage/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './second_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatelessWidget {
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

  String token;

  @override
  Widget build(BuildContext context) {
    dynamic screenHeight = MediaQuery.of(context).size.height;
    dynamic screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: Text('MainPage'),
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                LoginResult.removeValues('token').then((v) => token = v);
                if (token == null) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                } else {
                  showToast('gagal logout');
                }
              })
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              width: screenwidth / 1,
              height: screenHeight / 2,
              child: Card(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Asw();
                          }));
                        },
                        child: Icon(Icons.person),
                      ),
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DaftarArticle();
                          }));
                        },
                        child: Icon(Icons.contact_mail),
                      ),
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: () {
                          _displaySnackBar('What you wanna add ?');
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            flex: 1,
          ),
          Flexible(
            child: Container(
              width: screenwidth / 1,
              height: screenHeight / 1,
              padding: EdgeInsets.all(1),
              child: Card(
                child: Column(
                  children: [generateMainView(screenHeight)],
                ),
              ),
            ),
            flex: 5,
          ),
          Flexible(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      color: Colors.cyan,
                      elevation: 5,
                      onPressed: () {
                        _displaySnackBar('Not Ready Yet !');
                      },
                      child: Text('logout'),
                    ),
                    MaterialButton(
                      color: Colors.red,
                      elevation: 5,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondPage();
                        }));
                      },
                      child: Text('Second Page'),
                    ),
                  ],
                )),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Stack generateMainView(screenHeight) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: screenHeight * .03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  _displaySnackBar('Not Ready Yet !');
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.view_agenda), Text('View')],
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _displaySnackBar('Not Ready Yet !');
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.list), Text('List')],
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _displaySnackBar('Not Ready Yet !');
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.slideshow), Text('Play')],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: screenHeight * .03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  _displaySnackBar('Not Ready Yet !');
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.code), Text('Code')],
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _displaySnackBar('Not Ready Yet !');
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.cached), Text('Refresh')],
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _displaySnackBar('Not Ready Yet !');
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.inbox), Text('Inbox')],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: screenHeight * .03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.adb), Text('ADB')],
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _displaySnackBar('Not Ready Yet !');
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.account_circle_sharp), Text('Acc')],
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _displaySnackBar('Not Ready Yet !');
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.accessibility), Text('Access')],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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
}
