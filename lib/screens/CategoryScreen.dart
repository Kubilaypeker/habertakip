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
  final Widget techSvg = SvgPicture.asset("assets/svgfiles/tech.svg");
  final Widget profileIconSvg =
      SvgPicture.asset("assets/svgfiles/profileSvg.svg");
  final Widget newsIconSvg = SvgPicture.asset("assets/svgfiles/newsSvg.svg");
  final Widget categoryIconSvg =
      SvgPicture.asset("assets/svgfiles/categoryIconSvg.svg");

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
        title: const Text(
          "Kategoriler",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Allerta",
            fontSize: 20,
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
      body: ListView(
        children: <Widget>[
          Wrap(
            spacing: 18,
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                        left: 11.0, top: 40.0, right: 4.0, bottom: 4.0),
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xffFF4242),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                      icon: politicsSvg,
                      onPressed: myFunc,
                    ),
                  ),
                  Container(
                    child: const Text(
                      "POLİTİKA",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Allerta",
                        color: Colors.white,
                      ),
                    ),
                    padding: const EdgeInsets.only(top: 120, left: 50),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    margin: const EdgeInsets.only(
                        left: 4.0, top: 40.0, right: 15.0, bottom: 4.0),
                    decoration: BoxDecoration(
                      color: const Color(0xffFF4242),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                      icon: medicineSvg,
                      onPressed: myFunc,
                    ),
                  ),
                  Container(
                    child: const Text(
                      "SAĞLIK",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Allerta",
                        color: Colors.white,
                      ),
                    ),
                    padding: const EdgeInsets.only(top: 110, left: 50),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Wrap(
              spacing: 18,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                          left: 11.0, top: 10.0, right: 4.0, bottom: 4.0),
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        color: const Color(0xffFF4242),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        icon: techSvg,
                        onPressed: myFunc,
                      ),
                    ),
                    Container(
                      child: const Text(
                        "TEKNOLOJİ",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Allerta",
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.only(top: 70, left: 40),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                          left: 4.0, top: 10.0, right: 15.0, bottom: 4.0),
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        color: const Color(0xffFF4242),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        icon: sportsSvg,
                        onPressed: myFunc,
                      ),
                    ),
                    Container(
                      child: const Text(
                        "SPOR",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Allerta",
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.only(top: 70, left: 60),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Wrap(
              spacing: 18,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10.0, top: 10.0, right: 4.0, bottom: 4.0),
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        color: const Color(0xffFF4242),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        icon: magazineSvg,
                        onPressed: myFunc,
                      ),
                    ),
                    Container(
                      child: const Text(
                        "MAGAZİN",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Allerta",
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.only(top: 70, left: 40),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                          left: 4.0, top: 10.0, right: 15.0, bottom: 4.0),
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        color: const Color(0xffFF4242),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        icon: earthSvg,
                        onPressed: myFunc,
                      ),
                    ),
                    Container(
                      child: const Text(
                        "DÜNYA",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Allerta",
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.only(top: 70, left: 50),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            backgroundColor: const Color(0xff1E1E1E),
            selectedItemColor: const Color(0xffFF4242),
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  child: categoryIconSvg,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: newsIconSvg,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: profileIconSvg,
                ),
                label: "",
              ),
            ]),
      ),
    );
  }
}
