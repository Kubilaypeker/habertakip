import 'package:deneme2/screens/news_reading_screen/newsReadingScreen.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  var title, imageUrl, content, source, author, newsUrl;
  NewsCard(
      {this.title,this.imageUrl, this.content, this.source, this.author, this.newsUrl}
      );

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;

    double safeAreaHeight = height - padding.top - kToolbarHeight- 50;

    return IconButton(
      iconSize: safeAreaHeight/3,
      icon: Container(
        color: Color(0xff282727),
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
              newsLink: content,
              newsImage: imageUrl,
              newsSource: source,
            )
            ),
          );
        },
    );
  }
}
