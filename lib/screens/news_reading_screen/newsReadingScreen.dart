import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/Widgets/BottomBar.dart';
import 'package:webview_flutter/webview_flutter.dart';


class NewsReadingScreen extends StatelessWidget {
  var newsLink,newsTitle, newsContent, newsSource,categoryName, newsImage;
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");

NewsReadingScreen(
  {this.newsLink,this.newsTitle,this.newsContent, this.newsSource, this.newsImage}
    );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double safeAreaHeight = height - padding.top - kToolbarHeight- 50;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xFFFF4242),
        leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: arrowBackSvg,
      ),
      ),
      body: WebView(
          initialUrl: newsLink,
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
