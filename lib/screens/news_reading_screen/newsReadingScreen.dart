import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deneme2/Widgets/BottomBar.dart';

class NewsReadingScreen extends StatelessWidget {
  final Widget arrowBackSvg = SvgPicture.asset("assets/svgfiles/arrowback.svg");
  final Widget settingsSvg = SvgPicture.asset("assets/svgfiles/settings.svg");
  final Widget politicsSvg = SvgPicture.asset("assets/svgfiles/Vector.svg");
  final Widget medicineSvg = SvgPicture.asset("assets/svgfiles/Medicine.svg");
  final Widget magazineSvg = SvgPicture.asset("assets/svgfiles/magazine.svg");
  final Widget sportsSvg = SvgPicture.asset("assets/svgfiles/sports.svg");
  final Widget earthSvg = SvgPicture.asset("assets/svgfiles/EarthSvg.svg");
  final Widget techSvg = SvgPicture.asset("assets/svgfiles/tech.svg");
  final Widget sendSvg = SvgPicture.asset("assets/svgfiles/Send.svg");
  final Widget bookMarkSvg = SvgPicture.asset("assets/svgfiles/Bookmark.svg");
  final Widget profileIconSvg =
      SvgPicture.asset("assets/svgfiles/profileSvg.svg");
  final Widget newsIconSvg = SvgPicture.asset("assets/svgfiles/newsSvg.svg");
  final Widget categoryIconSvg =
      SvgPicture.asset("assets/svgfiles/categoryIconSvg.svg");

  void myFunc() {
    print("Hello World");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xff1E1E1E),
        leading: IconButton(
          icon: arrowBackSvg,
          onPressed: myFunc,
        ),
        title: const Text(
          "Kategori İsmi",
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
          Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: const Color(0xff1E1E1E),
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(65.0, 10.0, 0.0, 0.0),
                  child: Wrap(
                    spacing: 15,
                    children:  <Widget>[
                     const  Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 10.0),
                        child: Text(
                          "Haber Türk",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: "Allerta",
                          ),
                        ),
                      ),
                      IconButton(onPressed: myFunc, icon: sendSvg,padding: EdgeInsets.only(left: 70.0,bottom: 50.0)),
                      IconButton(onPressed: myFunc, icon: bookMarkSvg, padding: EdgeInsets.only(left: 0.0,bottom: 50.0))

                    ],
                  ),
                  width: 10,
                  height: 30,
                  margin: const EdgeInsets.fromLTRB(2.0, 20.0, 0.0, 0.0),
                  decoration:  const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                    ),
                      image: DecorationImage(
                    image: true
                        ? NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/tr/0/03/Haberturk.com_logo.jpg?20200829233248')
                        : AssetImage('assets/images/noImageAvailable.png')
                            as ImageProvider,
                    alignment: Alignment.centerLeft,
                  )),
                ),
              )),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: const Text(
              "Pompacı Mutlu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: "Allerta",
                  color: Colors.white),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 190,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
                image: DecorationImage(
                    image: true
                        ? NetworkImage('https://picsum.photos/500')
                        : AssetImage('assets/images/noImageAvailable.png')
                            as ImageProvider,
                    fit: BoxFit.fill)),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 24),
            child: const Text(
              "Motorcu Dostu Aytemiz İstasyonlarında, motosiklet kullanıcılarına özel park alanları ve bu alanın önünde kask, mont ve eldiven gibi eşyalarını bırakabilecekleri kişiye özel kilitli dolaplar, marketlerde kitleye özel ürünler yer alacak. Ayrıca yakıt alımı sırasında oluşabilecek kazaları engellemek amacı ile motosikletlilere özel hazırlanan pompaların önünde, kaymaz bir zemin olacak. Tüm bu hizmetlere ek olarak, motosiklet kullanıcılarının hayatını kolaylaştıracak, kask ve eldivenlerini çıkartmadan pompada ödeme yapabilecekleri “Aytemiz motordan öde” hizmeti de kısa bir süre sonra anlaşmalı Aytemiz istasyonlarında uygulanmaya başlanacak. Türkiye’nin en hızlı büyüyen akaryakıt şirketi Aytemiz, sektörde bir ilke imza atarak “Motorcu Dostu İstasyon” projesini hayata geçiriyor. Motosiklet kullanıcılarının istek ve taleplerini tespit eden Aytemiz, Motorcu Dostu İstasyon projesi ile hizmet konusunda fark yaratan yepyeni bir çalışmaya imza atıyor. Tespit edilen ihtiyaçlar doğrultusunda motosiklet kullanıcılarının hayatını kolaylaştırmayı hedefleyen Motorcu Dostu İstasyon projesi, motosiklet kullanıcılarının desteği ile Türkiye geneline yayılarak büyümesini sürdürecek. Motosiklet kullanıcılarının trafikteki algısını yükseltmek, emniyetlerine katkıda bulunmak ve hayatlarını kolaylaştırmak hedefiyle geliştirilen Motorcu Dostu İstasyon projesi, bir dizi yeniliği de beraberinde getiriyor. MOTORCUNUN TÜM İHTİYAÇLARINI KARŞILAYACAK Bu kapsamda projede yer alan Aytemiz istasyonları, istasyon girişlerine yerleştirilecek ‘Motorcu Dostu İstasyon’ tabelaları ile farklılaşacak. Bu istasyonlarda, motosiklet kullanıcılarına özel park alanları ve bu alanın önünde kask, mont ve eldiven gibi eşyalarını bırakabilecekleri kişiye özel kilitli dolaplar yer alacak. Ayrıca yakıt alımı sırasında oluşabilecek kazaları engellemek amacı ile motosikletlilere özel hazırlanan pompaların önüne, özel kaymaz bir zemin yer alacak. Farklı tekerlek tiplerine uygun lastik şişirme uçları da motosiklet kullanıcıların hizmetine sunulacak.Öte yandan motosikletlere yakıt dolumu yapacak personeller demotosikletlere özel hizmet sunmak üzere bir eğitimden geçecek. Aytemiz Motorcu Dostu İstasyonlardaki marketlerde,motosiklet kullanıcılarına özel, Castrol madeni yağları, kask içi ve dışı temizleme spreyi, buğu önleyici, motosiklet temizleme ve cilalama spreyi ile zincir temizleme spreyi gibi bakım malzemelerine de yer verilecek.Hem yağ değişimini hem de zincir yağlamayı kolaylaştıran motosiklet sehpası da bu istasyonlarda yer alacak. Tüm bu hizmetlere ek olarak, motosiklet kullanıcılarının hayatını kolaylaştıracak,kask ve eldivenlerini çıkartmadan pompada ödeme yapabilecekleri“Aytemiz motordan öde” hizmeti de kısa bir süre sonra anlaşmalıAytemiz istasyonlarında uygulanmaya başlanacak. MOTOSİKLET KULLANICISININ DA ‘HİZMETİNDEYİZ’ Aytemiz olarak her türlü taşıt kullanıcısına “hizmetinizdeyiz” dediklerini ve bunu sonuna kadar uyguladıkları bir yaklaşıma sahip olduklarını söyleyen Aytemiz Genel Müdürü Ahmet Eke, “Biz bu sloganı geliştirirken, tüm motorlu araçları hedefleyerek yola çıkmıştık. Bugün bizce geleceğin parlayan yıldızı olmaya aday olan motosiklet dünyasına dokunma ve onların hayatlarını kolaylaştırma zamanının geldiğini düşünüyoruz” dedi. Gerek satın alma ve gerekse kullanım açısından son derece ekonomik olan motosikletlerin özellikle büyük kentlerde yaşanan trafik probleminin en pratik çözümlerinden biri olduğunu anlatan Ahmet Eke, “Bugün Türkiye’de trafiğe kayıtlı 3 milyon motosiklet bulunuyor. Bizim hedefimiz bu 3 milyon kullanıcının tamamına ulaşmak. Onların ne tip ihtiyaçları olduğunu iyi biliyoruz ve motosiklet kullanıcılar için hem istasyonlarımızda, hem de trafikte bir farkındalık yaratmayı amaçlıyoruz” diye konuştu.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Allerta',
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
