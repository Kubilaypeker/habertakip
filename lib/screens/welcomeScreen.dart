import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
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
      ),),
    );
  }
}