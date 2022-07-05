import 'package:deneme2/Widgets/CategoryWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/Widgets/BottomBar.dart';
import 'news_screen/news_screen.dart';

class CategoryScreen extends StatelessWidget {
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50; // 50 for appBar of Scaffold. Height (without status and toolbar)

    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xFFFF4242),
        title: const Text(
          "Kategoriler",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Allerta",
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.black26,
        child:ListView(
        children: <Widget>[
          Stack(
            children:[
          Container(
            padding: EdgeInsets.zero,
          width: width,
          height: safeAreaHeight/3,
          child: Image.network("https://i.dunya.com/storage/old/files/2018/9/17/427826/427826.jpg", fit: BoxFit.cover,),
      ),
            Container(
              height: safeAreaHeight/3,
              width: width,
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent, Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0, 0, 0.9],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8),
              height: safeAreaHeight/3,
              width: width,
           alignment: Alignment.bottomLeft,
           child: TextButton(
               child: Text("GÜNDEMDEKİLER",
             style: TextStyle(
               color: Colors.white,
               fontFamily: "Allerta",
               fontSize: 15,
               fontWeight: FontWeight.bold,
             ),
           ),
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => NewsScreen(
                 categoryName: "GÜNDEMDEKİLER",
                 categoryUrlKeyWord: "breakingNews",
               )
               ),
             );
           },
           ),
         ),
          ],
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              CategoryWidget(
                categoryApiKeyWord: "technology",
                categoryName: "TEKNOLOJİ",
                categorySvgUrl: "https://www.independentturkish.com/sites/default/files/styles/1368x911/public/article/main_image/2022/02/15/866341-1518543616.jpg?itok=fi-TbFeQ",
              ),
              CategoryWidget(
                categoryApiKeyWord: "sport",
                categoryName: "SPOR",
                categorySvgUrl: "https://i.pinimg.com/originals/58/4c/16/584c16ceef11c635e42849598b423674.jpg",
              )
            ],
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              CategoryWidget(
                categoryApiKeyWord: "lifestyle",
                categoryName: "YAŞAM",
                categorySvgUrl: "https://filmdaily.co/wp-content/uploads/2021/02/lifestyle-lede-1300x975.jpg",
              ),
              CategoryWidget(
                categoryApiKeyWord: "finance",
                categoryName: "BORSA",
                categorySvgUrl: "https://i.cnnturk.com/i/cnnturk/75/740x416/6285dea1214ed8209039547f.jpg",
              ),
            ],
          ),
        ],
      ),
    ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}