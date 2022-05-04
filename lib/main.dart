import 'package:deneme2/screens/signUpScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HaberApp());
}

//  Language: dart commit
class HaberApp extends StatelessWidget {
  const HaberApp({Key? key}) : super(key: key);
  void myFunc() {
    print("Hello World"); // kubi kafanı sikm
  }

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff1E1E1E)
          ),
      home: signUpScreen(),
    );
  }
}
