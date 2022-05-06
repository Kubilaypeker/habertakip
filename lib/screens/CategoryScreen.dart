import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryScreen extends StatelessWidget {
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");
  final Widget politicsSvg = SvgPicture.asset("assets/svgfiles/Vector.svg");
  final Widget medicineSvg = SvgPicture.asset("assets/svgfiles/Medicine.svg");
  final Widget magazineSvg = SvgPicture.asset("assets/svgfiles/magazine.svg");
  final Widget sportsSvg = SvgPicture.asset("assets/svgfiles/sports.svg");
  final Widget earthSvg = SvgPicture.asset("assets/svgfiles/EarthSvg.svg");

  void myFunc() {
    print("Hello World");
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xff1E1E1E),
        leading: IconButton(


          icon: arrowBackSvg,
          onPressed: myFunc,
        ),

        title: Container(
          child: const Text("Kategoriler",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Allerta",
            fontSize: 20,
          ),
        ),
        ),
        actions: [
          IconButton(
            onPressed: myFunc,
            icon: settingsSvg,
            color: Colors.white,
        )
        ],
      ),
      body: ListView(children: <Widget>[
        Row(

          children: [ Container(
            padding: const EdgeInsets.only(left: 10, right: 10),

          child: SizedBox(
            child: IconButton(
              icon: earthSvg,
              onPressed: myFunc,),
            height: 100,
            width: 90,

        ),
        color: const Color(0xffFF4242),
        ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),

            child: SizedBox(
              child: IconButton(
                icon: earthSvg,
              onPressed: myFunc,),
              height: 220,
              width: 200,

            ),
            color: const Color(0xffFF4242),
          ),
        ],
        ),
      ],
      ),
    );
  }
}