import 'package:belajar_multipage/Menu/daftar.dart';
import 'package:belajar_multipage/introduction.dart';
import 'package:belajar_multipage/login_screen.dart';
import 'package:belajar_multipage/main_page.dart';
import 'package:belajar_multipage/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  Future<bool> showLoginPage() async {
    var sharedPreferences = await SharedPreferences.getInstance();

    // sharedPreferences.setString('user', 'hasuser');

    String token = sharedPreferences.getString('token');

    return token == null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<bool>(
        future: showLoginPage(),
        builder: (buildContext, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data) {
              // Return your login here
              return Login();
            }

            // Return your home here
            return DaftarArticle();
          } else {
            // Return loading screen while reading preferences
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
