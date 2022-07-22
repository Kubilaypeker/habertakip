
import 'package:deneme2/main.dart';
import 'package:flutter/material.dart';
import 'package:deneme2/Widgets/BottomBar.dart';
import 'package:deneme2/authenticationService.dart';
import 'package:provider/provider.dart';

void myFunc() {
  print("Hello World");
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {


  // Full screen width and height
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  var padding = MediaQuery.of(context).viewPadding;
  double safeAreaHeight = height - padding.top - kToolbarHeight- 50;


    return Scaffold(
      body: ListView(
        children: <Widget>[

          SizedBox(
            width: 2*width/3,
            height: safeAreaHeight/11,

          child:Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: const Color(0xFFFF4242),
            child: TextButton(
              onPressed:
              () {
            context.read<AuthenticationService>().signOut();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AuthenticationWrapper(),
              ),
            );
          },
              child: Text("Çıkış Yap")
          ),
          )
    )
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}