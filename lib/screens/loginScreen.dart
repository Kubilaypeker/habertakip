import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:deneme2/authenticationService.dart';
import 'package:deneme2/screens/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';


class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => new _loginScreenState();
}

  class _loginScreenState extends State<loginScreen> {

    final FirebaseAuth _auth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = GoogleSignIn();

    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void myFunc() {
      print("Hello World");
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
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
                    onPressed: myFunc,
                    style: TextButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signUpScreen()),
                          );
                        },
                    style: TextButton.styleFrom(
                      primary: const Color.fromARGB(64, 255, 255, 255),
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
          padding: EdgeInsets.only(left: 20, top: safeAreaHeight/20),
          child: const Text(
            "Giriş Yapın",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 20, top: safeAreaHeight/30),
          child: const Text(
            "Hesabınız ile giriş yapın",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 20, top: safeAreaHeight/25),
          child: const Text(
            "Kullanıcı Adı Veya E-mail",
            style: TextStyle(
              color: Color(0xffA1A2A4),
              fontSize: 14,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child:  TextFormField(
            style: TextStyle(color: Colors.white),
            controller: email,
            obscureText: false,
            decoration: InputDecoration(
              labelText: "example@gmail.com",
              labelStyle: TextStyle(
                color: Color(0xffA1A2A4),
                fontSize: 14,
                ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding:  EdgeInsets.only(left: 20, top: safeAreaHeight/30),
          child: const Text(
            "Şifre",
            style: TextStyle(
              color: Color(0xffA1A2A4),
              fontSize: 14,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child: TextFormField(
            controller: password,
            style: TextStyle(color: Colors.white),
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
          padding: EdgeInsets.only(top: safeAreaHeight/25),
          alignment: Alignment.center,
          child: SizedBox(
            height: safeAreaHeight/11,
            width: 3*width/4,
            child: TextButton(
            child: const Text("Giriş Yap",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Allerta',
              fontSize: 16,
            ),
            ),
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                email: email.text,
                password: password.text,
              );
            },
            style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFFF4242),
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      textStyle: const TextStyle(fontFamily: 'Allerta', fontSize: 20),),
          ),
        ),
        ),
        Container(
          alignment: Alignment.center,
          child: SizedBox(
            height: safeAreaHeight/12,
            width: width/3,
            child: TextButton(
            child: const Text("Şifremi Unuttum",
            style: TextStyle(
              color: Color(0xFFFF4242),
              fontFamily: 'Allerta',
              fontSize: 12,
            ),),
            onPressed: myFunc,
            style: TextButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      textStyle: const TextStyle(fontFamily: 'Allerta',),),
          ),
        ),
        ),
        Container(
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
                 onPressed: myFunc
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
}  }

