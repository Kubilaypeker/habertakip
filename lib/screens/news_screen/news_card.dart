import 'package:deneme2/screens/news_reading_screen/newsReadingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsCard extends StatelessWidget {
  var categoryName;
  NewsCard(
      {this.categoryName}
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
      iconSize: safeAreaHeight/5,
      icon: Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: const Color(0xff4A4848),
      margin: const EdgeInsets.only(bottom: 0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: width,
          height: safeAreaHeight/6,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: true
                    ? NetworkImage('https://picsum.photos/400')
                    : AssetImage('assets/images/noImageAvailable.png')
                as ImageProvider,
                alignment: Alignment.centerLeft,
              )),
          child: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(bottom: 0),
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 136.0, 5.0),
                    child: const Text(
                      " Header Was Here ",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffAAAAAA)),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
                    child: const Text(
                      "Today, we cannot imagine an app or a website without media "
                          "contents like images or a video. Displaying images has"
                          " become a more basic or fundamental feature of an app"
                          " or a website like never before.",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              )),
        ),
      ),
    ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewsReadingScreen(
              newsTitle: "Pompacı mutlu",
              newsImage: "blob:https://web.whatsapp.com/ec65217b-d1d1-450a-a3ac-3df07752a900",
              categoryName: categoryName,
              newsContent: "afasfa",
              newsSource: "HaberTürk",


            )
            ),
          );
        },
    );
  }
}
