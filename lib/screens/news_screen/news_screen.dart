import 'package:deneme2/Widgets/BottomBar.dart';
import 'package:deneme2/screens/CategoryScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/screens/news_screen/news_card.dart';
import 'package:sprintf/sprintf.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class NewsScreen extends StatefulWidget {
  final range;
  final categoryName;
  final categoryUrlKeyWord;
  const NewsScreen({Key? key, this.categoryName, this.range, this.categoryUrlKeyWord, }) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}
class _NewsState extends State<NewsScreen> {

  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");
  var response;

  String getApiUrl(String category) {
  String url = sprintf(
        "https://habertakipapi.herokuapp.com/news/api/%s?key=KfmH9cDCXnYXhXk7ne6MF6XtgJ7Ea7XA2", // used Bundle News API to develop this application.
        [category]);
    return url;
  }

  Future<List<dynamic>> getData() async {
    var result = await http.get(Uri.parse(getApiUrl(widget.categoryUrlKeyWord)));
    return jsonDecode(result.body)['data'];
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
          onPressed: () => Navigator.of(context).pop(),
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
      ),
      body: FutureBuilder(
        future: response,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return NewsCard(
                  newsPreview: snapshot.data[index]['news_preview_content'],
                  newsDate: snapshot.data[index]['news_date'],
                  imageUrl: snapshot.data[index]['news_photo'],
                  title: snapshot.data[index]['news_title'],
                  content: snapshot.data[index]['news_content'],
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
