import 'package:flutter/material.dart';
import 'package:project01/categories.dart';
import 'package:project01/components/bottomNavigation.dart';
import 'package:project01/components/label.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  //Başlık
                  buildBaslik(),
                  //Buton (kategori, En çok satanlar,..)
                  buildBanner(),

                  Padding(
                    padding: EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildNavigation(
                          text: "Kategoriler",
                          icon: Icons.menu,
                          widget: CategoriesPage(),
                          context: context,
                        ),
                        buildNavigation(
                          text: "Favoriler",
                          icon: Icons.stars,
                          widget: buildBaslik(),
                          context: context,
                        ),
                        buildNavigation(
                          text: "Hediyeler",
                          icon: Icons.card_giftcard,
                          widget: buildBaslik(),
                          context: context,
                        ),
                        buildNavigation(
                          text: "Çok Satanlar",
                          icon: Icons.people,
                          widget: buildBaslik(),
                          context: context,
                        ),
                      ],
                    ),
                  ),
                  //Satış Başlığı
                  SizedBox(height: 40),
                  Text(
                    "Çok Tercih Edilen Ürünler",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.blue),
                  ),
                  SizedBox(height: 16),

                  //Tercih Edilne Ürünler
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItems(
                        text: "iPhone 13 PRO",
                        photoURL:
                            "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/apple/thumb/bas-liksi-6_large.jpg",
                        discount: '-25%',
                        screenWidth: screenWidth,
                      ),
                      buildSalesItems(
                        text: "Asus Zenbook OLED",
                        photoURL:
                            "https://productimages.hepsiburada.net/s/120/550/110000069824156.jpg/format:webp",
                        discount: '-50%',
                        screenWidth: screenWidth,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItems(
                        text: "iPad Air",
                        photoURL:
                            "https://productimages.hepsiburada.net/s/120/550/110000069409329.jpg/format:webp",
                        discount: '-15%',
                        screenWidth: screenWidth,
                      ),
                      buildSalesItems(
                        text: "JBL Kulaklık",
                        photoURL:
                            "https://www.tchibo.com.tr/newmedia/art_img/MAIN-CENSHARE/5a4ee2b72459da86/.jpg",
                        discount: '-35%',
                        screenWidth: screenWidth,
                      ),
                    ],
                  ),
                  SizedBox(height: 70),
                ],
              ),
            ),
            //Navigation BAR (ALT)
            bottomNavigationBar("home"),
          ],
        ),
      ),
    );
  }
}

Widget buildBaslik() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "Ana Ekran",
      style: TextStyle(
          fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: EdgeInsets.only(top: 24),
    child: Container(
      padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ALL E-TRENDS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4),
              Text(
                "       TECHNOLOGY",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Text(
                  "#producted by THXC",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Image(
            image: NetworkImage(
              'https://images.pexels.com/photos/3345882/pexels-photo-3345882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
            ),
            height: 160,
            width: 160,
          ),
        ],
      ),
    ),
  );
}

Widget buildNavigation({
  required String text,
  required IconData icon,
  required Widget widget,
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Icon(
            icon,
            color: Colors.blue,
            size: 22,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget buildSalesItems({
  required String text,
  required String photoURL,
  required String discount,
  required double screenWidth,
}) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 21),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //indirim
        label(discount),
        SizedBox(height: 11),

        //resim
        Image(
          image: NetworkImage(photoURL),
          height: 220,
          width: 220,
        ),
        SizedBox(height: 11),

        //isim

        Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: Colors.blue),
          ),
        ),
      ],
    ),
  );
}
