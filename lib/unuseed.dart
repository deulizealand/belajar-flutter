import 'package:belajar_multipage/main_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController username = TextEditingController();

  final TextEditingController password = TextEditingController();
  void showToast(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  String info = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Card(
                color: Colors.red,
                elevation: 4,
                child: Text(
                  info,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Username"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Password"),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _cek(context, username.text, password.text);
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) {
                //   return MainPage();
                // }));
              },
              child: Text("Login"),
            ),
          ],
        ),
      )),
    );
  }

  Future<void> _cek(
      BuildContext context, String username, String password) async {
    if (username == "dee" && password == "dee") {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MainPage();
      }));
    } else {
      setState(() {
        info = "Username atau Password salah ";
        showToast('Login Gagal');
      });
    }
  }
}
