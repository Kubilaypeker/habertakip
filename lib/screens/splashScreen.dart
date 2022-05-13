import 'package:deneme2/screens/CategoryScreen.dart';
import 'package:deneme2/screens/loginScreen.dart';
import 'package:deneme2/screens/news_screen/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohomepage();
  }

  _navigatetohomepage()async{
    await Future.delayed(Duration(seconds: 1), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CategoryScreen()));
  }


  @override
  Widget build(BuildContext context) {
    final Widget svgLogo = SvgPicture.asset('assets/svgfiles/HaberTakip_Logo.svg');
    final Widget sloganSvg = SvgPicture.asset('assets/svgfiles/Slogan.svg');
    return Scaffold(
      body: Center(child:  ListView( padding: EdgeInsets.only(top: 300),
          children: <Widget>[
            Container(
              child: svgLogo,
              alignment: Alignment.center,),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 2),
              child: sloganSvg,
            ),

          ]
      ),
      ),
    );
  }
}