import 'package:deneme2/Widgets/BottomBar.dart';
import 'package:deneme2/screens/CategoryScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/screens/news_screen/news_card.dart';
import 'package:deneme2/core/coreHelper.dart';
import 'package:sprintf/sprintf.dart';
import '../../core/enums.dart';
import '../../core/helpers/requestHelpers.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../htmlParser.dart';




class NewsScreen extends StatefulWidget {
  final range;
  final categoryName;
  final categoryUrlKeyWord;
  const NewsScreen({Key? key, this.categoryName, this.range, this.categoryUrlKeyWord, }) : super(key: key);




  @override
  _NewsState createState() => _NewsState();
}
class _NewsState extends State<NewsScreen> {

  late Future<NewsJson> newsJson;
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");
  var response;






  String getApiUrl(String category) {
  String url = sprintf(
        "https://news-summary-service-prod.bundlenews.co/newsSummary/summary/%s?countryId=228&limit=20",
        [category]);
    return url;
  }

  Future<List<dynamic>> getData() async {
    var result = await http.get(Uri.parse(getApiUrl(widget.categoryUrlKeyWord)));
    return jsonDecode(result.body)['newsSummaryList'];
  }

  @override
  void initState() {
    response = getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 50,
        backgroundColor: const Color(0xFFFF4242),
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
          widget.categoryName,
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Allerta",
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: settingsSvg,
            color: Colors.white,
          )
        ],
      ),
      body: FutureBuilder(
        future: response,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return NewsCard(
                  //content: snapshot.data[index]['content'],
                  imageUrl: snapshot.data[index]['imageLink'],
                  title: snapshot.data[index]['title'],
                  source: snapshot.data[index]['newsChannelName'],
                  content: snapshot.data[index]['link'],
                );
              },
            );
          }
          else {
            return Center(
              child: CircularProgressIndicator(color: Colors.red),
            );
          }
        },
      ),
        bottomNavigationBar: BottomBar()
    );
  }
}
