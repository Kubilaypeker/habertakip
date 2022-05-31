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
  {this.newsImage,this.newsTitle,this.newsContent, this.categoryName, this.newsSource}
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
        backgroundColor: const Color(0xff1E1E1E),
        leading: IconButton(
          icon: arrowBackSvg,
          onPressed: myFunc,
        ),
        title: Text(
          categoryName,
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
          Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: const Color(0xff1E1E1E),
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(65.0, 10.0, 0.0, 0.0),
                  child: Wrap(
                    spacing: 15,
                    children:  <Widget>[
                       Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 10.0),
                        child: Text(
                          newsSource,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: "Allerta",
                          ),
                        ),
                      ),
                      IconButton(onPressed: myFunc, icon: sendSvg,padding: EdgeInsets.only(left: 70.0,bottom: 50.0)),
                      IconButton(onPressed: myFunc, icon: bookMarkSvg, padding: EdgeInsets.only(left: 0.0,bottom: 50.0))

                    ],
                  ),
                  width: 10,
                  height: 30,
                  margin: const EdgeInsets.fromLTRB(2.0, 20.0, 0.0, 0.0),
                  decoration:   BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                    ),
                      image: DecorationImage(
                    image: true
                        ? NetworkImage(
                            newsImage)
                        : AssetImage('assets/images/noImageAvailable.png')
                            as ImageProvider,
                    alignment: Alignment.centerLeft,
                  )),
                ),
              )),
          Container(
            margin: const EdgeInsets.all(20.0),
            child:  Text(
              newsTitle,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: "Allerta",
                  color: Colors.white),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: safeAreaHeight/6,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
                image: DecorationImage(
                    image: true
                        ? NetworkImage('https://picsum.photos/500')
                        : AssetImage('assets/images/noImageAvailable.png')
                            as ImageProvider,
                    fit: BoxFit.fill)),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 24),
            child: Text(
              newsContent,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Allerta',
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
