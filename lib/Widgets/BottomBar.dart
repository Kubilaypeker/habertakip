import 'package:deneme2/screens/CategoryScreen.dart';
import 'package:deneme2/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final Widget profileIconSvg = SvgPicture.asset("assets/svgfiles/profileSvg.svg");
  final Widget newsIconSvg = SvgPicture.asset("assets/svgfiles/newsSvg.svg");
  final Widget categoryIconSvg = SvgPicture.asset("assets/svgfiles/categoryIconSvg.svg");


    return SizedBox(
  height: 80,
  child: BottomNavigationBar(
  backgroundColor: const Color(0xff1E1E1E),
  selectedItemColor: const Color(0xffFF4242),
  items: [
  BottomNavigationBarItem(
  icon: Container(
  child: IconButton(icon: categoryIconSvg,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoryScreen()),
    );
  },
  ),//categoryIconSvg,
  ),
  label: "",
  ),
  BottomNavigationBarItem(
  icon: Container(
  child: newsIconSvg,
  ),
  label: "",
  ),
  BottomNavigationBarItem(
  icon: Container(
  child: IconButton( icon: profileIconSvg,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  },),
  ),
  label: "",
  ),
  ]
  ),
  );
}
}