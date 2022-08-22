import 'package:deneme2/Widgets/CategoryWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/Widgets/BottomBar.dart';
import 'news_screen/news_screen.dart';

class CategoryScreen extends StatelessWidget {
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50; // 50 for appBar of Scaffold. Height (without status and toolbar)

    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xFFFF4242),
        title: const Text(
          "Kategoriler",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Allerta",
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.black26,
        child:ListView(
        children: <Widget>[
          Container(
            width: width,
            height: safeAreaHeight/3,
          child: IconButton(
            padding: EdgeInsets.zero,
          onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NewsScreen(
        categoryName: "GÜNDEMDEKİLER",
        categoryUrlKeyWord: "latest",
        )
        ),
        );
        },
          icon: Stack(
            children:[
          Container(
            padding: EdgeInsets.zero,
          width: width,
          height: safeAreaHeight/3,
          child: Image.asset("assets/jpgfiles/breakingNews.jpg",fit: BoxFit.fill,)
          ),
            Container(
              height: safeAreaHeight/3,
              width: width,
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent, Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0, 0, 0.9],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8, bottom: 8),
              height: safeAreaHeight/3,
              width: width,
           alignment: Alignment.bottomLeft,
               child: Text("GÜNDEMDEKİLER",
             style: TextStyle(
               color: Colors.white,
               fontFamily: "Allerta",
               fontSize: 15,
               fontWeight: FontWeight.bold,
             ),
           ),
         ),
          ],
          ),
          ),
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              CategoryWidget(
                categoryApiKeyWord: "politic",
                categoryName: "POLİTİKA",
                svgDirectory: "assets/jpgfiles/politicNews.jpg",
              ),
              CategoryWidget(
                categoryApiKeyWord: "economy",
                categoryName: "EKONOMİ",
                svgDirectory: "assets/jpgfiles/finance.jpg",
              )
            ],
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              CategoryWidget(
                categoryApiKeyWord: "tech",
                categoryName: "TEKNOLOJİ",
              svgDirectory: "assets/jpgfiles/tech.jpg",
              ),
              CategoryWidget(
                categoryApiKeyWord: "sport",
                categoryName: "SPOR",
                    svgDirectory: "assets/jpgfiles/sport.jpg",
              )
            ],
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              CategoryWidget(
                categoryApiKeyWord: "world",
                categoryName: "DÜNYA",
                svgDirectory: "assets/jpgfiles/worldNews.jpg",
              ),
              CategoryWidget(
                categoryApiKeyWord: "magazine",
                categoryName: "MAGAZİN",
                svgDirectory: "assets/jpgfiles/magazineNews.jpg",
              ),
            ],
          ),
        ],
      ),
    ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}