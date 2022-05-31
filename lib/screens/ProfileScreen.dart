import 'package:deneme2/Widgets/animatedSubscribeButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/Widgets/BottomBar.dart';




void myFunc() {
  print("Hello World");
}


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {

  var UserName = "MuRKuT";
  // Full screen width and height
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

// Height (without SafeArea)
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

// Height (without status bar)
    double height2 = height - padding.top;

// Height (without status and toolbar)
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50; // 50 for appBar of Scaffold.


    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 0),

            height: 2*width/5,

          child: CircleAvatar(
            radius: width/5,

            child: ClipRRect(
              child: Image.network('https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg'),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),


            ),

          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
           child: Text(
             UserName,
             style: TextStyle(
               fontSize: 18,
               color: Color(0xffA8A7A7),
               fontWeight: FontWeight.bold
             ),
           ),
          ),
          Container(
            width: width/3,
            alignment: Alignment.center,
            height: safeAreaHeight/11,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Color(0xffF3474F),
            ),
            child: const TextButton(
                child: Text("Profili Düzenle",
                  style: TextStyle(
                    fontFamily: "Allerta",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              onPressed: myFunc,
              ),

          ),
          Container(
            child: AnimatedSubscribeButton(
              animationDuration: const  Duration(milliseconds: 1000),
              initialText: "Abone Ol",
              finalText: "Abone Olundu",
              iconData: Icons.check,
              iconSize: 32,
              buttonStyle: StyleOfButton(
                primaryColor: Color(0xffF5232D),
                secondaryColor: Colors.white,
                elevation: 20,
                initialTextStyle: TextStyle(
                  fontFamily: "Allerta",
                  fontSize: 20,
                  color: Colors.white
                ),
                finalTextStyle: TextStyle(
                  color: Color(0xffF5232D),
                  fontFamily: "Allerta",
                  fontSize: 20
                ),

              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}