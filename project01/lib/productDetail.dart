import 'package:flutter/material.dart';
import 'package:project01/components/bottomNavigation.dart';
import 'package:project01/components/header.dart';

class ProductDetailPage extends StatefulWidget {
  String produtTitle;

  ProductDetailPage(this.produtTitle);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  Color? selectedColor = Colors.blueGrey;
  int? selectedCapacity = 512;

  List<Color> colors = [
    Colors.blueGrey,
    Colors.blue,
    Colors.red,
    Colors.purple,
  ];
  List<int> capacities = [
    64,
    128,
    256,
    512,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //header
                    header(widget.produtTitle, context),
                    SizedBox(height: 32),

                    //Yeni Ürün Etiketi
                    //label("Yeni Ürün !"),
                    //Ürün Fotoğrafı
                    Image(
                      image: NetworkImage(
                        'https://productimages.hepsiburada.net/s/49/550/10983949860914.jpg/format:webp',
                      ),
                      width: 250,
                      height: 250,
                    ),

                    Text(
                      "Fiyat: 14.999 TL",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Renk Seçenekleri :",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey),
                    ),
                    SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: colors
                          .map((Color color) => colorOption(
                              color: color,
                              selected: selectedColor == color,
                              onTap: () {
                                setState(() {
                                  selectedColor = color;
                                });
                              }))
                          .toList(),
                    ),

                    //Kapasite
                    SizedBox(height: 20),
                    Text(
                      "Kapasite",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: selectedColor),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: capacities
                          .map((int number) => capacityOption(
                              capacity: number,
                              selected: selectedCapacity == number,
                              onTap: () {
                                setState(() {
                                  selectedCapacity = number;
                                });
                              }))
                          .toList(),
                    ),
                    SizedBox(height: 32),
                    //Sepete Ekle Butonu
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromARGB(255, 67, 145, 209)),
                      child: Text(
                        "Sepete Ekle",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            bottomNavigationBar("search"),
          ],
        ),
      ),
    );
  }
}

Widget colorOption({
  required Color color,
  required bool selected,
  required Function onTap,
}) {
  return GestureDetector(
    //onTap: onTap(),
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: Colors.black, width: 2),
      ),
      width: 23,
      height: 23,
    ),
  );
}

Widget capacityOption(
    {required int capacity, required bool selected, required Function onTap}) {
  return GestureDetector(
    //onTap: onTap(),
    child: Container(
      margin: EdgeInsets.only(right: 23),
      child: Text(
        "$capacity GB",
        style: TextStyle(
          color: Color(selected ? 0xFF2196F3 : 0XFFA7A9BE),
          fontSize: 16,
        ),
      ),
    ),
  );
}
