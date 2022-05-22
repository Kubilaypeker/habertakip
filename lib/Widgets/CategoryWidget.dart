import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io';



class CategoryWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

// Height (without SafeArea)
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

// Height (without status bar)
    double height2 = height - padding.top;

// Height (without status and toolbar)
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50; // 50 for appBar of Scaffold.


    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
                left: 4.0, top: 10.0, bottom: 5.0),
            height: (safeAreaHeight-50)/6,
            width: width,
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
            padding: EdgeInsets.only(top: 80),
            child: const Text(
              "DÜNYA",
              style: TextStyle(
                fontSize: 40,
                fontFamily: "Allerta",
                color: Colors.white,

              ),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}