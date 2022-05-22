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
        leading: IconButton(
          icon: arrowBackSvg,
          onPressed: myFunc,
        ),
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


           child: const TextButton(
               child: Text("GÜNDEMDEKİLER",
             style: TextStyle(
               color: Colors.white,
               fontFamily: "Allerta",
               fontSize: 18,
             ),
           ),
           onPressed: null ),
         ),
          ],
          ),

          Wrap(
            spacing: 10,
            children: <Widget>[
              Stack(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top: 8),


                    width: (width-10)/2,
                    height: (3*safeAreaHeight/4)/2,
                    child: Image.network("https://www.webtekno.com/images/editor/default/0002/21/fe3221973f430377849d6f74a0cc897e4fc5fde7.jpeg", fit: BoxFit.cover,),
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
                    child: const TextButton(
                        child: Text("TEKNOLOJİ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Allerta",
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null),
                  ),
                ],
              ),
              Stack(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top: 8),


                    width: (width-10)/2,
                    height: (3*safeAreaHeight/4)/2,
                    child: Image.network("https://i.pinimg.com/originals/58/4c/16/584c16ceef11c635e42849598b423674.jpg",
                      fit: BoxFit.cover,
                    ),
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
                        stops: [0, 0, 0, 0.9],
                      ),
                    ),
                  ),
                  Container(
                    height: (3*safeAreaHeight/4)/2,
                    width: (width-10)/2,
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 8, top: 10),
                    child: const TextButton(
                        child: Text("SPOR",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Allerta",
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null),
                  ),
                ],
              ),
            ],
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              Stack(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top: 8),


                    width: (width-10)/2,
                    height: (3*safeAreaHeight/4)/2,
                    child: Image.network("https://cdn.iha.com.tr/Contents/store/img/834000/835925.jpg", fit: BoxFit.cover,),
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
                        stops: [0, 0, 0, 0.9],
                      ),
                    ),
                  ),
                  Container(
                    height: (3*safeAreaHeight/4)/2,
                    width: (width/2)-10,
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 8, top: 10),
                    child: const TextButton(
                        child: Text("POLİTİKA",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Allerta",
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null),
                  ),
                ],
              ),
              Stack(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top: 8),


                    width: (width-10)/2,
                    height: (3*safeAreaHeight/4)/2,
                    child: Image.network("https://www.cumhuriyet.com.tr/Archive/2022/5/16/1936469/kapak_122658.jpg",
                      fit: BoxFit.cover,
                    ),
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
                        stops: [0, 0, 0, 0.9],
                      ),
                    ),
                  ),
                  Container(
                    height: (3*safeAreaHeight/4)/2,
                    width: (width-10)/2,
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 8, top: 10),
                    child: const TextButton(
                        child: Text("SAĞLIK",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Allerta",
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null),
                  ),
                ],
              ),
            ],
          ),
          Wrap(
            spacing: 10,
            children: <Widget>[
              Stack(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top: 8),


                    width: (width-10)/2,
                    height: (3*safeAreaHeight/4)/2,
                    child: Image.network("https://www.cumhuriyet.com.tr/Archive/2022/5/16/1936670/kapak_234409.jpg", fit: BoxFit.cover,),
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
                        stops: [0, 0, 0, 0.9],
                      ),
                    ),
                  ),
                  Container(
                    height: (3*safeAreaHeight/4)/2,
                    width: (width-10)/2,
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 8, top: 10),
                    child: const TextButton(
                        child: Text("DÜNYA",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Allerta",
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null),
                  ),
                ],
              ),
              Stack(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top: 8),


                    width: (width-10)/2,
                    height: (3*safeAreaHeight/4)/2,
                    child: Image.network("https://iasbh.tmgrup.com.tr/956d80/0/0/0/0/0/0?u=https://isbh.tmgrup.com.tr/sb/album/2022/01/07/1641556856482.jpg&mw=600&l=1",
                      fit: BoxFit.cover,
                    ),
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
                        stops: [0, 0, 0, 0.9],
                      ),
                    ),
                  ),
                  Container(
                    height: (3*safeAreaHeight/4)/2,
                    width: (width-10)/2,
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 8, top: 10),
                    child: const TextButton(
                        child: Text("MAGAZİN",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Allerta",
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null
                    ),
                  ),
                ],
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