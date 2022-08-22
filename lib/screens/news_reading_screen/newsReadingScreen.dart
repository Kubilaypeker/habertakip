import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/Widgets/BottomBar.dart';
import 'package:webview_flutter/webview_flutter.dart';


class NewsReadingScreen extends StatelessWidget {
  var newsTitle, newsContent,  newsDate ,categoryName, newsImage, newsPreview;
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");

NewsReadingScreen(
  {this.newsTitle,this.newsContent, this.newsDate , this.newsImage, this.newsPreview}
    );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xFFFF4242),
        leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: arrowBackSvg,
      ),
      ),
      body: ListView(
          children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10,left: 10,right: 10, bottom: 5),
          child: Text(
            newsTitle,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Oswald",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
          child: Text(
            newsDate,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white60,
              fontFamily: "Oswald"
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 15),
          child: Image.network(
            newsImage,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            newsPreview,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "RobotoSlab"
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            newsContent,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              //fontWeight: FontWeight.bold,
              fontFamily: "RobotoSlab"
            ),
          ),
        ),
      ]
    ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
