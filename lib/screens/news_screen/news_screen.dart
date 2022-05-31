import 'package:deneme2/screens/CategoryScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/screens/news_screen/news_card.dart';
import 'package:deneme2/core/coreHelper.dart';
import '../../core/helpers/requestHelpers.dart';



class NewsScreen extends StatelessWidget {


  var categoryName;
  late Future<NewsJson> newsJson;
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");

  NewsScreen(
      {this.categoryName}
      );
  void myFunc() {
    print("Hello World");
  }

  void initState() {
    newsJson = fetchJson(this.categoryName);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xff1E1E1E),
        leading: IconButton(
          icon: arrowBackSvg,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen()),
              );
            }
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
          NewsCard(categoryName: categoryName,),
          NewsCard(categoryName: categoryName,),
          NewsCard(categoryName: categoryName,),
          NewsCard(categoryName: categoryName,),
          NewsCard(categoryName: categoryName,),
          NewsCard(categoryName: categoryName,),

        ],
      ),
    );
  }
}
