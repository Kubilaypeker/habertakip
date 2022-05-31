import 'package:deneme2/screens/loginScreen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class signUpScreen extends StatelessWidget {
  const signUpScreen({Key? key}) : super(key: key);
  void myFunc() {
    print("Hello World");
  }
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    double height2 = height - padding.top;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50;
    final Widget svgLogo = SvgPicture.asset('assets/svgfiles/HaberTakip_Logo.svg');
    final Widget googleSvg = SvgPicture.asset("assets/svgfiles/Google.svg");
    final Widget facebookSvg = SvgPicture.asset("assets/svgfiles/Facebook.svg");
    final Widget twitterSvg = SvgPicture.asset("assets/svgfiles/Twitter.svg");

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff1E1E1E)
          ),
      home: Scaffold(
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
          body: ListView( children: <Widget>[Container( 
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),

                ),
                color: Color(0xFFFF4242)),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: safeAreaHeight/9,
                    child: TextButton(
                    child: const Text("GİRİŞ YAP",
                    style: TextStyle(fontFamily: 'Allerta', fontSize: 16),
                    ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => loginScreen()),
                        );
                      },
                    style: TextButton.styleFrom(
                      primary: const Color.fromARGB(64, 255, 255, 255),
                      textStyle: const TextStyle(fontFamily: 'Allerta', fontSize: 20),
                    ),
                  ),
                 ),
                ),
                Expanded(
                  child: SizedBox(
                    height: safeAreaHeight/9,
                    child: TextButton(
                    child: const Text("KAYIT OL",
                    style: TextStyle(
                     fontFamily: 'Allerta',
                     fontSize: 16,
                     ),
                    ),
                    onPressed: myFunc, // if we change this button to a functional button, then original color will be used - use myFunc for till we code backend functions
                    style: TextButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
                
            ],
          ),
          
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 20, top: safeAreaHeight/25),
          child: const Text(
            "Kullanıcı Adınız",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child: const TextField(
            style: TextStyle(color: Colors.white),
            obscureText: false,
            decoration: InputDecoration(
              labelText: "Örnek",
              labelStyle: TextStyle(
                color: Color(0xffA1A2A4),
                fontSize: 12,
                ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20, top: 8),
          child: const Text(
            "E-mail",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child:   const TextField(
            obscureText: false,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: "Örnek@gmail.com",
              labelStyle: TextStyle(
                color: Color(0xffA1A2A4),
                fontSize: 14,
                ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20, top: 2),
          child: const Text(
            "Şifrenizi girin",
            style: TextStyle(
              color: Color(0xffA1A2A4),
              fontSize: 12,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "******",
              labelStyle: TextStyle(
                color: Color(0xffA1A2A4),
                fontSize: 14,
                ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20, top: 2),
          child: const Text(
            "Şifrenizi Onaylayın",
            style: TextStyle(
              color: Color(0xffA1A2A4),
              fontSize: 12,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        
        Container(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "******",
              labelStyle: TextStyle(
                color: Color(0xffA1A2A4),
                fontSize: 14,
                ),
            ),
          ),
        ),
        
        
        Container( 
          padding: const EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: SizedBox(
            height: safeAreaHeight/11,
            width: 3*width/4,

            child: TextButton(
            
            child: const Text("KAYIT OL",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Allerta',
              fontSize: 16,
            ),),
            onPressed: myFunc,
            style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFFF4242),
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      textStyle: const TextStyle(fontFamily: 'Allerta', fontSize: 20),),
          ),
        ),
        ),
        
        Container( 
          padding: EdgeInsets.only(top: safeAreaHeight/30),
          alignment: Alignment.center,
          child: const Text("SOSYAL MEDYA İLE GİRİŞ YAP",
            style: TextStyle(
              color: Color(0xFFFF4242),
              fontFamily: 'Allerta',
              fontSize: 10,
              
            ),
            ),
        ),
        Container(
          alignment: Alignment.center,
          
            child: Wrap(              
              spacing: 15,
            children: <Widget>[
              
            Expanded(
              child: SizedBox(
                 child: IconButton(icon: googleSvg,
                 onPressed: myFunc,
                 ),


            ),
            ),
            Expanded(
              child: SizedBox(
                 child: IconButton(icon: facebookSvg,
                 onPressed: myFunc,
                 ),


            ),
            ),
            Expanded(
              child: SizedBox(
                 child: IconButton(icon: twitterSvg,
                 onPressed: myFunc,
                 ),


            ),
            ),
          ]
          ),
        ),
        
        ],
        ), 
    
      
      ),
    );
  }
}
