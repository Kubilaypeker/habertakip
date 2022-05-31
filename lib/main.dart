import 'package:deneme2/screens/CategoryScreen.dart';
import 'package:deneme2/screens/ProfileScreen.dart';
import 'package:deneme2/screens/loginScreen.dart';
import 'package:deneme2/screens/signUpScreen.dart';
import 'package:deneme2/screens/news_screen/news_screen.dart';
import 'package:deneme2/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp(const HaberApp());
}

//  Language: dart commit
class HaberApp extends StatelessWidget {
  const HaberApp({Key? key}) : super(key: key);
  void myFunc() {
    print("Hello World");
  }

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff1E1E1E)
          ),
      home: loginScreen(),
    );
  }
}
