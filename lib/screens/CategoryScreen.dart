import 'package:deneme2/Widgets/CategoryWidget.dart';
import 'package:deneme2/screens/ProfileScreen.dart';
import 'package:deneme2/screens/news_screen/news_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/Widgets/BottomBar.dart';


class CategoryScreen extends StatelessWidget {
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");
  final Widget politicsSvg = SvgPicture.asset("assets/svgfiles/Vector.svg");
  final Widget medicineSvg = SvgPicture.asset("assets/svgfiles/Medicine.svg");
  final Widget magazineSvg = SvgPicture.asset("assets/svgfiles/magazine.svg");
  final Widget sportsSvg = SvgPicture.asset("assets/svgfiles/sports.svg");
  final Widget earthSvg = SvgPicture.asset("assets/svgfiles/EarthSvg.svg");
  final Widget techSvg = SvgPicture.asset("assets/svgfiles/tech.svg");
  final Widget profileIconSvg = SvgPicture.asset("assets/svgfiles/profileSvg.svg");
  final Widget newsIconSvg = SvgPicture.asset("assets/svgfiles/newsSvg.svg");
  final Widget categoryIconSvg = SvgPicture.asset("assets/svgfiles/categoryIconSvg.svg");

  void myFunc() {
    print("Hello World");
  }



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

    int safeAreaHeightInt = safeAreaHeight.toInt();


    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xff1E1E1E),
        title: const Text(
          "Kategoriler",
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
          ),
        ],
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
          child: Image.network("https://static.dw.com/image/59527518_101.jpeg", fit: BoxFit.cover,),

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
               fontSize: 18,
             ),
           ),
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => NewsScreen(
                 categoryName: "GÜNDEMDEKİLER",
               )
               ),
             );
           }
           ),
         ),
          ],
          ),

          Wrap(
            spacing: 10,
            children: <Widget>[
              CategoryWidget(
                categoryName: "TEKNOLOJİ",
                categorySvgUrl: "https://www.independentturkish.com/sites/default/files/styles/1368x911/public/article/main_image/2022/02/15/866341-1518543616.jpg?itok=fi-TbFeQ",
                function: myFunc,
              ),
              CategoryWidget(
                categoryName: "SPOR",
                categorySvgUrl: "https://i.pinimg.com/originals/58/4c/16/584c16ceef11c635e42849598b423674.jpg",
                function: myFunc,
              )
            ],
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              CategoryWidget(
                categoryName: "POLİTİKA",
                categorySvgUrl: "https://cdnuploads.aa.com.tr/uploads/Contents/2019/10/06/thumbs_b_c_621ba3bd2059bdfce3e3b5776de85bcb.jpg",
                function: myFunc,
              ),
              CategoryWidget(
                categoryName: "SAĞLIK",
                categorySvgUrl: "https://cdnuploads.aa.com.tr/uploads/Contents/2020/03/11/thumbs_b_c_7588639e01803faa29b4961cdde7409d.jpg",
                function: myFunc,
              ),
            ],
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              CategoryWidget(
                categoryName: "DÜNYA",
                categorySvgUrl: "https://www.theparliamentmagazine.eu/siteimg/share/ugc-1/fullnews/news/22595/21857_original.jpg",
                function: myFunc,
              ),
              CategoryWidget(
                categoryName: "MAGAZİN",
                categorySvgUrl: "https://i.haberglobal.com.tr/rcman/Cw800h450q95gm/storage/files/images/2022/03/09/gulsen-yine-olay-yaratti-lolipoplu-sarki-kapagiyla-gundem-oldu-zHG6.png",
                function: myFunc,
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