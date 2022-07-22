import 'package:flutter/material.dart';
import '../screens/news_screen/news_screen.dart';

class CategoryWidget extends StatelessWidget {
  var svgDirectory,  categoryName, categoryApiKeyWord, keyword;
  CategoryWidget({this.svgDirectory,  this.categoryName, this.categoryApiKeyWord, this.keyword});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50;

    return Container(
      padding: EdgeInsets.only(top: 10),
      width: (width-10)/2,
      height: 3*safeAreaHeight/8,
      child: IconButton(
        padding: EdgeInsets.zero,

        onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewsScreen(
            categoryName: categoryName,
            categoryUrlKeyWord: categoryApiKeyWord,
          )
          ),
        );
      },
      icon: Stack(
        children:[
          Container(
            padding: const EdgeInsets.only(top: 0),
            width: (width-10)/2,
            height: 3*safeAreaHeight/8,
            child: Image.asset(svgDirectory, fit: BoxFit.cover,),
          ),
          Container(
            height: 3*safeAreaHeight/8,
            width: (width-10)/2,
            padding: const EdgeInsets.only(left:8),
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent, Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0, 0, 0.9]
              ),
            ),
          ),
          Container(
            height: 3*safeAreaHeight/8,
            width: (width/2),
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 8, bottom: 10),

                child: Text(categoryName,
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
    );
  }
}