
import 'package:deneme2/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:deneme2/Widgets/BottomBar.dart';
import 'package:deneme2/authenticationService.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

void myFunc() {
  print("Hello World");
}



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    //var userEmail = FirebaseAuth.instance.currentUser!.email;
    final Widget svgLogo = SvgPicture.asset('assets/svgfiles/HaberTakip_Logo.svg');
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50;




    return Scaffold(
      appBar: AppBar(
          toolbarHeight: safeAreaHeight/8,
          backgroundColor: const Color.fromRGBO(30, 30, 30, 0),
          centerTitle: true,
          title: IconButton(
            icon: svgLogo,
            iconSize: 100,
            onPressed: null,
          )
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: SizedBox(
              height: safeAreaHeight/12,
              width: width/2,
              child: TextButton(
                child: const Text("Çıkış Yap",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Allerta',
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  context.read<AuthenticationService>().signOut();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthenticationWrapper(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFFF4242),
                  primary: const Color.fromARGB(255, 255, 255, 255),
                  textStyle: const TextStyle(fontFamily: 'Allerta', fontSize: 20),),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}