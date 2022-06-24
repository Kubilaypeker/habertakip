import 'package:deneme2/htmlParser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/Widgets/BottomBar.dart';

class NewsReadingScreen extends StatelessWidget {
  var newsImage,newsTitle, newsContent, newsSource,categoryName;
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");
  final Widget politicsSvg = SvgPicture.asset("assets/svgfiles/Vector.svg");
  final Widget medicineSvg = SvgPicture.asset("assets/svgfiles/Medicine.svg");
  final Widget magazineSvg = SvgPicture.asset("assets/svgfiles/magazine.svg");
  final Widget sportsSvg = SvgPicture.asset("assets/svgfiles/sports.svg");
  final Widget earthSvg = SvgPicture.asset("assets/svgfiles/EarthSvg.svg");
  final Widget techSvg = SvgPicture.asset("assets/svgfiles/tech.svg");
  final Widget sendSvg = SvgPicture.asset("assets/svgfiles/Send.svg");
  final Widget bookMarkSvg = SvgPicture.asset("assets/svgfiles/Bookmark.svg");
  final Widget profileIconSvg = SvgPicture.asset("assets/svgfiles/profileSvg.svg");
  final Widget newsIconSvg = SvgPicture.asset("assets/svgfiles/newsSvg.svg");
  final Widget categoryIconSvg =
      SvgPicture.asset("assets/svgfiles/categoryIconSvg.svg");

NewsReadingScreen(
  {this.newsImage,this.newsTitle,this.newsContent, this.newsSource}
    );

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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xFFFF4242),
        leading: IconButton(
          icon: arrowBackSvg,
          color: Colors.white,
          onPressed: myFunc,
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
          Container(
            padding: EdgeInsets.only(top: 20,bottom: 10,left: 10,right: 10),
            alignment: Alignment.center,
            child: Text(
              newsTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Allerta",
                fontSize: 20,
                color: Colors.white60,
              ),
            ),
          ),
           ClipRRect(
            child: Image.network(
              newsImage,
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "\t\t" + parseData(newsContent),
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Allerta",
                fontSize: 13,

              ),
              textAlign: TextAlign.left,
            ),
          ),




        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
