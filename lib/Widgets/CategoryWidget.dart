import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io';

import '../screens/news_screen/news_screen.dart';


class CategoryWidget extends StatelessWidget {
  var categorySvgUrl, function, categoryName;
  CategoryWidget({this.categorySvgUrl, this.function, this.categoryName});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    double height2 = height - padding.top;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50; // 50 for appBar of Scaffold.

    return Container(
      child: Stack(
        children:[
          Container(
            padding: const EdgeInsets.only(top: 8),
            width: (width-10)/2,
            height: (3*safeAreaHeight/4)/2,
            child: Image.network(categorySvgUrl, fit: BoxFit.cover,),
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
            height: (3*safeAreaHeight/4)/2,
            width: (width/2)-10,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 8, top: 10),
            child: TextButton(
                child: Text(categoryName,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Allerta",
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsScreen(
                      categoryName: categoryName,
                    )
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}