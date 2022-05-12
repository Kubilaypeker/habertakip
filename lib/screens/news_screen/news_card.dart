import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      color: const Color(0xff4A4848),
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          height: 70,
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
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: const Text(
                  "Today, we cannot imagine an app or a website without media contents like images or a video. Displaying images has become a more basic or fundamental feature of an app or a website like never before.",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  textAlign: TextAlign.right,
                ),
              )),
        ),
      ),
    );
  }
}
