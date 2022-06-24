import 'package:deneme2/screens/news_reading_screen/newsReadingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsCard extends StatelessWidget {
  var title, imageUrl, content, source, author;
  NewsCard(
      {this.title,this.imageUrl, this.content, this.source, this.author}
      );

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    double height2 = height - padding.top;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50; // 50 for appBar of Scaffold.
    int safeAreaHeightInt = safeAreaHeight.toInt();



    return IconButton(
      iconSize: safeAreaHeight/3,
      icon: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff282727),
        elevation: 6,
        child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            width: width,
            height: safeAreaHeight/4,
            child: Image.network(imageUrl, fit: BoxFit.fitWidth),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
                fontSize: 14,
                fontFamily: "Allerta",
              ),
            ),
          ),
        ],
      ),
      ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewsReadingScreen(
              newsTitle: title,
              newsImage: imageUrl,
              newsContent: content,
              newsSource: source,
            )
            ),
          );
        },
    );
  }
}
