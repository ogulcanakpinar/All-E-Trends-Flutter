import 'package:flutter/material.dart';
import 'package:project01/components/bottomNavigation.dart';
import 'package:project01/components/category.dart';
import 'package:project01/components/header.dart';

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    "Tüm Ürünler",
    "Laptop",
    "Televizyon",
    "Akıllı Telefon",
    "Tablet",
    "Kulaklık",
    "Şarj Aleti",
    "Kılıf",
    "Elektrikli Ev Aletleri",
    "Ekran Koruyucu",
    "Yazıcı",
    "Beyaz Eşya",
    "Fotoğraf Makinesi",
    "Klima",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Header
                  header("Kategoriler", context),
                  SizedBox(height: 16),

                  //Kategoriler

                  Expanded(
                    child: ListView(
                        children: categories
                            .map(
                                (String title) => buildCategory(title, context))
                            .toList()),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            bottomNavigationBar("search"),
          ],
        ),
      ),
    );
  }
}

Widget buildCategory(String title, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return CategoryPage(title);
      }));
    },
    child: Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ]),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    ),
  );
}
