import 'package:belajar_multipage/login_screen.dart';
import 'package:belajar_multipage/model/login_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:belajar_multipage/main_page.dart';
import 'package:belajar_multipage/Register/model/register.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController username = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  Register register = null;
  String token = '';
  String hasil = '';

  double smallSize(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double bigSize(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
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
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
        children: [
          Positioned(
            left: -bigSize(context) / 4,
            top: -bigSize(context) / 3,
            child: Container(
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 75),
                  child: Text(
                    "Hi App",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Billabong'),
                  ),
                ),
              ),
              width: bigSize(context),
              height: bigSize(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffff4891), Colors.cyan],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -bigSize(context) / 4,
            bottom: 450,
            child: Container(
              width: bigSize(context),
              height: bigSize(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffff4891), Colors.cyan],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -smallSize(context) / 3,
            top: -smallSize(context) / 3,
            child: Container(
              width: smallSize(context),
              height: smallSize(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffff4891), Colors.cyan],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -bigSize(context) / 2,
            bottom: -bigSize(context) / 2,
            child: Container(
              width: bigSize(context),
              height: bigSize(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xfff3e9ee)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 270, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Column(
                    children: [
                      TextField(
                        controller: name,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891))),
                            labelText: "Name",
                            labelStyle: TextStyle(color: Color(0xffff4891))),
                      ),
                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891))),
                            labelText: "Username",
                            labelStyle: TextStyle(color: Color(0xffff4891))),
                      ),
                      // Text((hasil != null) ? hasil : "Tidak ada Data"),
                      TextField(
                        controller: email,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891))),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Color(0xffff4891))),
                      ),
                      TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891))),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Color(0xffff4891))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.cyan,
                              onTap: () {
                                if (username.text.isEmpty &&
                                    password.text.isEmpty &&
                                    name.text.isEmpty &&
                                    email.text.isEmpty) {
                                  showToast('Kosong ? s ?');
                                } else {
                                  RegisterRes.connect(email.text, username.text,
                                          name.text, password.text)
                                      .then((v) => {
                                            if (true == v)
                                              {
                                                Navigator.pushReplacement(
                                                    context, MaterialPageRoute(
                                                        builder: (context) {
                                                  return Login();
                                                }))
                                              }
                                            else
                                              {showToast('Register gagal')}
                                          });
                                }
                              },
                              child: Center(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [Color(0xffff4891), Colors.cyan],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                      Container(
                        child: FloatingActionButton(
                          backgroundColor: Colors.cyan,
                          heroTag: null,
                          mini: true,
                          elevation: 0,
                          onPressed: () {
                            LoginResult.getStringValuesSF('token').then((v) =>
                                v == null
                                    ? showToast('Token kosong')
                                    : showToast(v));
                          },
                          child: Icon(
                            Icons.face,
                            color: Color(0xffff4891),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.cyan,
                        heroTag: null,
                        mini: true,
                        elevation: 0,
                        onPressed: () {},
                        child: Icon(Icons.person, color: Color(0xffff4891)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudah Daftar ? ',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                      child: Text(
                        'Klik Disini ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xffff4891)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
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
        showToast('Login Gagal');
      });
    }
  }
}
