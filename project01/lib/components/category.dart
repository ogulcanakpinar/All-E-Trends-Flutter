import 'package:flutter/material.dart';
import 'package:project01/components/bottomNavigation.dart';
import 'package:project01/components/header.dart';

import 'dart:core';

import 'package:project01/productDetail.dart';

class CategoryPage extends StatelessWidget {
  String categoryTitle;

  CategoryPage(this.categoryTitle);
  List<Map> hepsi = [
    {
      "isim": "Monster",
      "fotograf":
          "https://img-monsternotebook.mncdn.com/UPLOAD/urun-gorselleri-yeni/ABRA/A5-V17-2/thumb/Abra_A5_v17_-_NH58_TR_-_intel11_i5_medium.png",
      "fiyat": "14.699"
    },
    {
      "isim": "MacBook Air",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10983949860914.jpg/format:webp",
      "fiyat": "14.999"
    },
    {
      "isim": "MacBook PRO",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10983951073330.jpg/format:webp",
      "fiyat": "39.999"
    },
    {
      "isim": "Asus",
      "fotograf":
          "https://objects.icecat.biz/live_htmls/e0d1eddd8b8707b3a64c1d06d03e2914/media/finger1.jpg",
      "fiyat": "7.999"
    },
    {
      "isim": "Lenovo",
      "fotograf":
          "https://productimages.hepsiburada.net/s/209/550/110000185246216.jpg/format:webp",
      "fiyat": "6.195"
    },
    {
      "isim": "Casper",
      "fotograf":
          "https://productimages.hepsiburada.net/s/159/550/110000117273160.jpg/format:webp",
      "fiyat": "6.998"
    },
    {
      "isim": "Dell",
      "fotograf":
          "https://productimages.hepsiburada.net/s/208/550/110000183779432.jpg/format:webp",
      "fiyat": "13.699"
    },
    {
      "isim": "MSI",
      "fotograf":
          "https://productimages.hepsiburada.net/s/151/550/110000106632565.jpg/format:webp",
      "fiyat": "31.283"
    },
    {
      "isim": "Samsung",
      "fotograf":
          "https://n11scdn1.akamaized.net/a1/1024/09/94/04/68/IMG-3232110269850705536.jpg",
      "fiyat": "98.995"
    },
    {
      "isim": "Vestel",
      "fotograf":
          "https://productimages.hepsiburada.net/s/133/550/110000084738197.jpg/format:webp",
      "fiyat": "7.583"
    },
    {
      "isim": "Philips",
      "fotograf":
          "https://productimages.hepsiburada.net/s/124/550/110000074724118.jpg/format:webp",
      "fiyat": "9.099"
    },
    {
      "isim": "LG OLED",
      "fotograf":
          "https://productimages.hepsiburada.net/s/130/550/110000080620162.jpg/format:webp",
      "fiyat": "24.799"
    },
    {
      "isim": "Toshiba",
      "fotograf":
          "https://productimages.hepsiburada.net/s/120/550/110000069632929.jpg/format:webp",
      "fiyat": "3.399"
    },
    {
      "isim": "Apple 13 Pro",
      "fotograf":
          "https://productimages.hepsiburada.net/s/189/550/110000155170748.jpg/format:webp",
      "fiyat": "23.999"
    },
    {
      "isim": "Apple 11",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10986387243058.jpg/format:webp",
      "fiyat": "11.199"
    },
    {
      "isim": "Note 20 Ultra",
      "fotograf":
          "https://productimages.hepsiburada.net/s/41/550/10698988879922.jpg/format:webp",
      "fiyat": "13.229"
    },
    {
      "isim": "S22 Ultra",
      "fotograf":
          "https://productimages.hepsiburada.net/s/178/550/110000142781616.jpg/format:webp",
      "fiyat": "24.206"
    },
    {
      "isim": "Mi 10T Pro",
      "fotograf":
          "https://productimages.hepsiburada.net/s/48/550/10940071968818.jpg/format:webp",
      "fiyat": "11.759"
    },
    {
      "isim": "Apple SE 3",
      "fotograf":
          "https://productimages.hepsiburada.net/s/189/550/110000155170552.jpg/format:webp",
      "fiyat": "10.240"
    },
    {
      "isim": "Apple 7",
      "fotograf":
          "https://productimages.hepsiburada.net/s/31/550/10352774316082.jpg/format:webp",
      "fiyat": "6.957"
    },
    {
      "isim": "iPad Air 5",
      "fotograf":
          "https://productimages.hepsiburada.net/s/191/550/110000157838652.jpg/format:webp",
      "fiyat": "10.699"
    },
    {
      "isim": "iPad Mini",
      "fotograf":
          "https://productimages.hepsiburada.net/s/120/550/110000069409330.jpg/format:webp",
      "fiyat": "9.099"
    },
    {
      "isim": "MatePad 11",
      "fotograf":
          "https://productimages.hepsiburada.net/s/131/550/110000082084677.jpg/format:webp",
      "fiyat": "4.100"
    },
    {
      "isim": "Tab S7 Plus",
      "fotograf":
          "https://productimages.hepsiburada.net/s/41/550/10698886185010.jpg/format:webp",
      "fiyat": "10.479"
    },
    {
      "isim": "Mi Pad 5",
      "fotograf":
          "https://productimages.hepsiburada.net/s/126/550/110000076497634.jpg/format:webp",
      "fiyat": "5.499"
    },
    {
      "isim": "Lenovo Tab P11",
      "fotograf":
          "https://productimages.hepsiburada.net/s/111/550/110000058616306.jpg/format:webp",
      "fiyat": "3.789"
    },
    {
      "isim": "AirPods Pro",
      "fotograf":
          "https://productimages.hepsiburada.net/s/136/550/110000088116931.jpg/format:webp",
      "fiyat": "3.258"
    },
    {
      "isim": "Lenovo LP1",
      "fotograf":
          "https://productimages.hepsiburada.net/s/43/550/10761920086066.jpg/format:webp",
      "fiyat": "185"
    },
    {
      "isim": "JBL Tune 510BT",
      "fotograf":
          "https://productimages.hepsiburada.net/s/106/550/110000049531558.jpg/format:webp",
      "fiyat": "575"
    },
    {
      "isim": "Baseus w04 PRO",
      "fotograf":
          "https://productimages.hepsiburada.net/s/37/550/10547315933234.jpg/format:webp",
      "fiyat": "419"
    },
    {
      "isim": "Apple Lightning",
      "fotograf":
          "https://productimages.hepsiburada.net/s/37/550/10557458645042.jpg/format:webp",
      "fiyat": "199"
    },
    {
      "isim": "Apple 3,5mm",
      "fotograf":
          "https://productimages.hepsiburada.net/s/32/550/10367422595122.jpg/format:webp",
      "fiyat": "182"
    },
    {
      "isim": "20w USB-C",
      "fotograf":
          "https://productimages.hepsiburada.net/s/48/550/10940080029746.jpg/format:webp",
      "fiyat": "219"
    },
    {
      "isim": "Apple MagSafe",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10978355413042.jpg/format:webp",
      "fiyat": "485"
    },
    {
      "isim": "Apple 5w",
      "fotograf":
          "https://productimages.hepsiburada.net/s/22/550/9971934527538.jpg/format:webp",
      "fiyat": "213"
    },
    {
      "isim": "USB-C Lightning",
      "fotograf":
          "https://productimages.hepsiburada.net/s/84/550/110000026443336.jpg/format:webp",
      "fiyat": "297"
    },
    {
      "isim": "Baseus Type-C",
      "fotograf":
          "https://productimages.hepsiburada.net/s/37/550/10564652924978.jpg/format:webp",
      "fiyat": "42"
    },
    {
      "isim": "Syrox Micro USB",
      "fotograf":
          "https://productimages.hepsiburada.net/s/51/550/11056065118258.jpg/format:webp",
      "fiyat": "17"
    },
    {
      "isim": "iPhone 11 Şeffaf Kılıf",
      "fotograf":
          "https://productimages.hepsiburada.net/s/36/550/10509198524466.jpg/format:webp",
      "fiyat": "13"
    },
    {
      "isim": "13 Pro Siyah Kılıf",
      "fotograf":
          "https://productimages.hepsiburada.net/s/198/550/110000168416959.jpg/format:webp",
      "fiyat": "55"
    },
    {
      "isim": "11 PRO MAX Prizma",
      "fotograf":
          "https://productimages.hepsiburada.net/s/205/550/110000180568224.jpg/format:webp",
      "fiyat": "59"
    },
    {
      "isim": "7 Plus Figürlü",
      "fotograf":
          "https://productimages.hepsiburada.net/s/190/550/110000157400467.jpg/format:webp",
      "fiyat": "109.99"
    },
    {
      "isim": "S10 View Cover",
      "fotograf":
          "https://productimages.hepsiburada.net/s/25/550/10108133965874.jpg/format:webp",
      "fiyat": "100"
    },
    {
      "isim": "Mi 11T Pro Kılıf",
      "fotograf":
          "https://productimages.hepsiburada.net/s/165/550/110000127064521.jpg/format:webp",
      "fiyat": "90"
    },
    {
      "isim": "Redmi 9T Mat",
      "fotograf":
          "https://productimages.hepsiburada.net/s/101/550/110000043670856.jpg/format:webp",
      "fiyat": "27.50"
    },
    {
      "isim": "Dyson Süpürge",
      "fotograf":
          "https://productimages.hepsiburada.net/s/55/550/11226865598514.jpg/format:webp",
      "fiyat": "6.499"
    },
    {
      "isim": "Mi Robot Vacumm",
      "fotograf":
          "https://productimages.hepsiburada.net/s/42/550/10722393686066.jpg/format:webp",
      "fiyat": "2.899"
    },
    {
      "isim": "PerfectCare Ütü",
      "fotograf":
          "https://productimages.hepsiburada.net/s/21/550/9924564647986.jpg/format:webp",
      "fiyat": "2.499"
    },
    {
      "isim": "Hava Temizleme",
      "fotograf":
          "https://productimages.hepsiburada.net/s/50/550/11021391331378.jpg/format:webp",
      "fiyat": "5.000"
    },
    {
      "isim": "Philips MG3720",
      "fotograf":
          "https://productimages.hepsiburada.net/s/19/550/9847831986226.jpg/format:webp",
      "fiyat": "289"
    },
    {
      "isim": "Dyson Airwrap",
      "fotograf":
          "https://productimages.hepsiburada.net/s/128/550/110000078526233.jpg/format:webp",
      "fiyat": "6.299"
    },
    {
      "isim": "Singer Dikiş Makinesi",
      "fotograf":
          "https://productimages.hepsiburada.net/s/54/550/11172031758386.jpg/format:webp",
      "fiyat": "1.599"
    },
    {
      "isim": "iPhone11 Hayalet",
      "fotograf":
          "https://productimages.hepsiburada.net/s/42/550/10731930976306.jpg/format:webp",
      "fiyat": "25"
    },
    {
      "isim": "iPhone12",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10970742259762.jpg/format:webp",
      "fiyat": "35"
    },
    {
      "isim": "iPhone13",
      "fotograf":
          "https://productimages.hepsiburada.net/s/144/550/110000098349947.jpg/format:webp",
      "fiyat": "60"
    },
    {
      "isim": "Note9 Kavisli",
      "fotograf":
          "https://productimages.hepsiburada.net/s/21/550/9939433324594.jpg/format:webp",
      "fiyat": "40"
    },
    {
      "isim": "A32 Hayalet",
      "fotograf":
          "https://productimages.hepsiburada.net/s/91/550/110000033946917.jpg/format:webp",
      "fiyat": "44.91"
    },
    {
      "isim": "HP DeskJet 2710",
      "fotograf":
          "https://productimages.hepsiburada.net/s/43/550/10764967084082.jpg/format:webp",
      "fiyat": "829"
    },
    {
      "isim": "Mürekkep Püskürtmeli",
      "fotograf":
          "https://productimages.hepsiburada.net/s/138/550/110000091049485.jpg/format:webp",
      "fiyat": "2.298"
    },
    {
      "isim": "iSensy Lazer",
      "fotograf":
          "https://productimages.hepsiburada.net/s/35/550/10463853707314.jpg/format:webp",
      "fiyat": "6.699"
    },
    {
      "isim": "3D Yazıcı",
      "fotograf":
          "https://productimages.hepsiburada.net/s/129/550/110000079642801.jpg/format:webp",
      "fiyat": "32.550"
    },
    {
      "isim": "Barkod Yazıcı",
      "fotograf":
          "https://productimages.hepsiburada.net/s/205/550/110000180791788.jpg/format:webp",
      "fiyat": "14.500"
    },
    {
      "isim": "Grundig 580 LT",
      "fotograf":
          "https://productimages.hepsiburada.net/s/70/550/110000011599931.jpg/format:webp",
      "fiyat": "16.999"
    },
    {
      "isim": "Samsung 10.5 KG",
      "fotograf":
          "https://productimages.hepsiburada.net/s/198/550/110000168627964.jpg/format:webp",
      "fiyat": "7.498"
    },
    {
      "isim": "Bosch 10 KG",
      "fotograf":
          "https://productimages.hepsiburada.net/s/155/550/110000111100524.jpg/format:webp",
      "fiyat": "7.498"
    },
    {
      "isim": "Siemens 7 Programlı",
      "fotograf":
          "https://productimages.hepsiburada.net/s/154/550/110000111118335.jpg/format:webp",
      "fiyat": "10.042"
    },
    {
      "isim": "Bosch Ankastre",
      "fotograf":
          "https://productimages.hepsiburada.net/s/62/550/110000004095320.jpg/format:webp",
      "fiyat": "4.191"
    },
    {
      "isim": "Samsung Mikrodalga",
      "fotograf":
          "https://productimages.hepsiburada.net/s/21/550/9926748667954.jpg/format:webp",
      "fiyat": "1.699"
    },
    {
      "isim": "Profilo Siyah Ocak",
      "fotograf":
          "https://productimages.hepsiburada.net/s/48/550/10966077079602.jpg/format:webp",
      "fiyat": "1.947"
    },
    {
      "isim": "Canon EOS 5D Mark",
      "fotograf":
          "https://productimages.hepsiburada.net/s/27/550/10184193146930.jpg/format:webp",
      "fiyat": "53.785"
    },
    {
      "isim": "Panasonic HC-X2000",
      "fotograf":
          "https://productimages.hepsiburada.net/s/160/550/110000117839665.jpg/format:webp",
      "fiyat": "47.940"
    },
    {
      "isim": "Sony FDR-AX700",
      "fotograf":
          "https://productimages.hepsiburada.net/s/22/550/9986464579634.jpg/format:webp",
      "fiyat": "25.849"
    },
    {
      "isim": "Canon IXUS 185",
      "fotograf":
          "https://productimages.hepsiburada.net/s/90/550/110000033268710.jpg/format:webp",
      "fiyat": "2.255"
    },
    {
      "isim": "Çocuk Kamera Mavi",
      "fotograf":
          "https://productimages.hepsiburada.net/s/182/550/110000146317190.jpg/format:webp",
      "fiyat": "309"
    },
    {
      "isim": "Çocuk Kamera Pembe",
      "fotograf":
          "https://productimages.hepsiburada.net/s/193/550/110000160548333.jpg/format:webp",
      "fiyat": "281"
    },
  ];

  List<Map> laptop = [
    {
      "isim": "Monster",
      "fotograf":
          "https://img-monsternotebook.mncdn.com/UPLOAD/urun-gorselleri-yeni/ABRA/A5-V17-2/thumb/Abra_A5_v17_-_NH58_TR_-_intel11_i5_medium.png",
      "fiyat": "14.699"
    },
    {
      "isim": "MacBook Air",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10983949860914.jpg/format:webp",
      "fiyat": "14.999"
    },
    {
      "isim": "MacBook PRO",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10983951073330.jpg/format:webp",
      "fiyat": "39.999"
    },
    {
      "isim": "Asus",
      "fotograf":
          "https://objects.icecat.biz/live_htmls/e0d1eddd8b8707b3a64c1d06d03e2914/media/finger1.jpg",
      "fiyat": "7.999"
    },
    {
      "isim": "Lenovo",
      "fotograf":
          "https://productimages.hepsiburada.net/s/209/550/110000185246216.jpg/format:webp",
      "fiyat": "6.195"
    },
    {
      "isim": "Casper",
      "fotograf":
          "https://productimages.hepsiburada.net/s/159/550/110000117273160.jpg/format:webp",
      "fiyat": "6.998"
    },
    {
      "isim": "Dell",
      "fotograf":
          "https://productimages.hepsiburada.net/s/208/550/110000183779432.jpg/format:webp",
      "fiyat": "13.699"
    },
    {
      "isim": "MSI",
      "fotograf":
          "https://productimages.hepsiburada.net/s/151/550/110000106632565.jpg/format:webp",
      "fiyat": "31.283"
    },
  ];

  List<Map> televizyon = [
    {
      "isim": "Samsung",
      "fotograf":
          "https://n11scdn1.akamaized.net/a1/1024/09/94/04/68/IMG-3232110269850705536.jpg",
      "fiyat": "98.995"
    },
    {
      "isim": "Vestel",
      "fotograf":
          "https://productimages.hepsiburada.net/s/133/550/110000084738197.jpg/format:webp",
      "fiyat": "7.583"
    },
    {
      "isim": "Philips",
      "fotograf":
          "https://productimages.hepsiburada.net/s/124/550/110000074724118.jpg/format:webp",
      "fiyat": "9.099"
    },
    {
      "isim": "LG OLED",
      "fotograf":
          "https://productimages.hepsiburada.net/s/130/550/110000080620162.jpg/format:webp",
      "fiyat": "24.799"
    },
    {
      "isim": "Toshiba",
      "fotograf":
          "https://productimages.hepsiburada.net/s/120/550/110000069632929.jpg/format:webp",
      "fiyat": "3.399"
    },
  ];
  List<Map> telefon = [
    {
      "isim": "Apple 13 Pro",
      "fotograf":
          "https://productimages.hepsiburada.net/s/189/550/110000155170748.jpg/format:webp",
      "fiyat": "23.999"
    },
    {
      "isim": "Apple 11",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10986387243058.jpg/format:webp",
      "fiyat": "11.199"
    },
    {
      "isim": "Note 20 Ultra",
      "fotograf":
          "https://productimages.hepsiburada.net/s/41/550/10698988879922.jpg/format:webp",
      "fiyat": "13.229"
    },
    {
      "isim": "S22 Ultra",
      "fotograf":
          "https://productimages.hepsiburada.net/s/178/550/110000142781616.jpg/format:webp",
      "fiyat": "24.206"
    },
    {
      "isim": "Mi 10T Pro",
      "fotograf":
          "https://productimages.hepsiburada.net/s/48/550/10940071968818.jpg/format:webp",
      "fiyat": "11.759"
    },
    {
      "isim": "Apple SE 3",
      "fotograf":
          "https://productimages.hepsiburada.net/s/189/550/110000155170552.jpg/format:webp",
      "fiyat": "10.240"
    },
    {
      "isim": "Apple 7",
      "fotograf":
          "https://productimages.hepsiburada.net/s/31/550/10352774316082.jpg/format:webp",
      "fiyat": "6.957"
    },
  ];
  List<Map> tablet = [
    {
      "isim": "iPad Air 5",
      "fotograf":
          "https://productimages.hepsiburada.net/s/191/550/110000157838652.jpg/format:webp",
      "fiyat": "10.699"
    },
    {
      "isim": "iPad Mini",
      "fotograf":
          "https://productimages.hepsiburada.net/s/120/550/110000069409330.jpg/format:webp",
      "fiyat": "9.099"
    },
    {
      "isim": "MatePad 11",
      "fotograf":
          "https://productimages.hepsiburada.net/s/131/550/110000082084677.jpg/format:webp",
      "fiyat": "4.100"
    },
    {
      "isim": "Tab S7 Plus",
      "fotograf":
          "https://productimages.hepsiburada.net/s/41/550/10698886185010.jpg/format:webp",
      "fiyat": "10.479"
    },
    {
      "isim": "Mi Pad 5",
      "fotograf":
          "https://productimages.hepsiburada.net/s/126/550/110000076497634.jpg/format:webp",
      "fiyat": "5.499"
    },
    {
      "isim": "Lenovo Tab P11",
      "fotograf":
          "https://productimages.hepsiburada.net/s/111/550/110000058616306.jpg/format:webp",
      "fiyat": "3.789"
    },
  ];
  List<Map> kulaklik = [
    {
      "isim": "AirPods Pro",
      "fotograf":
          "https://productimages.hepsiburada.net/s/136/550/110000088116931.jpg/format:webp",
      "fiyat": "3.258"
    },
    {
      "isim": "Lenovo LP1",
      "fotograf":
          "https://productimages.hepsiburada.net/s/43/550/10761920086066.jpg/format:webp",
      "fiyat": "185"
    },
    {
      "isim": "JBL Tune 510BT",
      "fotograf":
          "https://productimages.hepsiburada.net/s/106/550/110000049531558.jpg/format:webp",
      "fiyat": "575"
    },
    {
      "isim": "Baseus w04 PRO",
      "fotograf":
          "https://productimages.hepsiburada.net/s/37/550/10547315933234.jpg/format:webp",
      "fiyat": "419"
    },
    {
      "isim": "Apple Lightning",
      "fotograf":
          "https://productimages.hepsiburada.net/s/37/550/10557458645042.jpg/format:webp",
      "fiyat": "199"
    },
    {
      "isim": "Apple 3,5mm",
      "fotograf":
          "https://productimages.hepsiburada.net/s/32/550/10367422595122.jpg/format:webp",
      "fiyat": "182"
    },
  ];
  List<Map> sarj = [
    {
      "isim": "20w USB-C",
      "fotograf":
          "https://productimages.hepsiburada.net/s/48/550/10940080029746.jpg/format:webp",
      "fiyat": "219"
    },
    {
      "isim": "Apple MagSafe",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10978355413042.jpg/format:webp",
      "fiyat": "485"
    },
    {
      "isim": "Apple 5w",
      "fotograf":
          "https://productimages.hepsiburada.net/s/22/550/9971934527538.jpg/format:webp",
      "fiyat": "213"
    },
    {
      "isim": "USB-C Lightning",
      "fotograf":
          "https://productimages.hepsiburada.net/s/84/550/110000026443336.jpg/format:webp",
      "fiyat": "297"
    },
    {
      "isim": "Baseus Type-C",
      "fotograf":
          "https://productimages.hepsiburada.net/s/37/550/10564652924978.jpg/format:webp",
      "fiyat": "42"
    },
    {
      "isim": "Syrox Micro USB",
      "fotograf":
          "https://productimages.hepsiburada.net/s/51/550/11056065118258.jpg/format:webp",
      "fiyat": "17"
    },
  ];
  List<Map> kilif = [
    {
      "isim": "iPhone11 Şeffaf",
      "fotograf":
          "https://productimages.hepsiburada.net/s/36/550/10509198524466.jpg/format:webp",
      "fiyat": "13"
    },
    {
      "isim": "13 Pro Siyah Kılıf",
      "fotograf":
          "https://productimages.hepsiburada.net/s/198/550/110000168416959.jpg/format:webp",
      "fiyat": "55"
    },
    {
      "isim": "11 PRO MAX Prizma",
      "fotograf":
          "https://productimages.hepsiburada.net/s/205/550/110000180568224.jpg/format:webp",
      "fiyat": "59"
    },
    {
      "isim": "7 Plus Figürlü",
      "fotograf":
          "https://productimages.hepsiburada.net/s/190/550/110000157400467.jpg/format:webp",
      "fiyat": "109.99"
    },
    {
      "isim": "S10 View Cover",
      "fotograf":
          "https://productimages.hepsiburada.net/s/25/550/10108133965874.jpg/format:webp",
      "fiyat": "100"
    },
    {
      "isim": "Mi 11T Pro Kılıf",
      "fotograf":
          "https://productimages.hepsiburada.net/s/165/550/110000127064521.jpg/format:webp",
      "fiyat": "90"
    },
    {
      "isim": "Redmi 9T Mat",
      "fotograf":
          "https://productimages.hepsiburada.net/s/101/550/110000043670856.jpg/format:webp",
      "fiyat": "27.50"
    },
  ];
  List<Map> elektriklievalet = [
    {
      "isim": "Dyson Süpürge",
      "fotograf":
          "https://productimages.hepsiburada.net/s/55/550/11226865598514.jpg/format:webp",
      "fiyat": "6.499"
    },
    {
      "isim": "Mi Robot Vacumm",
      "fotograf":
          "https://productimages.hepsiburada.net/s/42/550/10722393686066.jpg/format:webp",
      "fiyat": "2.899"
    },
    {
      "isim": "PerfectCare Ütü",
      "fotograf":
          "https://productimages.hepsiburada.net/s/21/550/9924564647986.jpg/format:webp",
      "fiyat": "2.499"
    },
    {
      "isim": "Hava Temizleme",
      "fotograf":
          "https://productimages.hepsiburada.net/s/50/550/11021391331378.jpg/format:webp",
      "fiyat": "5.000"
    },
    {
      "isim": "Singer Dikiş Makinesi",
      "fotograf":
          "https://productimages.hepsiburada.net/s/54/550/11172031758386.jpg/format:webp",
      "fiyat": "1.599"
    },
    {
      "isim": "Singer Dikiş Makinesi",
      "fotograf":
          "https://productimages.hepsiburada.net/s/54/550/11172031758386.jpg/format:webp",
      "fiyat": "1.599"
    },
    {
      "isim": "Philips MG3720",
      "fotograf":
          "https://productimages.hepsiburada.net/s/19/550/9847831986226.jpg/format:webp",
      "fiyat": "289"
    },
    {
      "isim": "Dyson Airwrap",
      "fotograf":
          "https://productimages.hepsiburada.net/s/128/550/110000078526233.jpg/format:webp",
      "fiyat": "6.299"
    },
  ];
  List<Map> ekrankoruyucu = [
    {
      "isim": "iPhone11 Hayalet",
      "fotograf":
          "https://productimages.hepsiburada.net/s/42/550/10731930976306.jpg/format:webp",
      "fiyat": "25"
    },
    {
      "isim": "iPhone12",
      "fotograf":
          "https://productimages.hepsiburada.net/s/49/550/10970742259762.jpg/format:webp",
      "fiyat": "35"
    },
    {
      "isim": "iPhone13",
      "fotograf":
          "https://productimages.hepsiburada.net/s/144/550/110000098349947.jpg/format:webp",
      "fiyat": "60"
    },
    {
      "isim": "Note9 Kavisli",
      "fotograf":
          "https://productimages.hepsiburada.net/s/21/550/9939433324594.jpg/format:webp",
      "fiyat": "40"
    },
    {
      "isim": "A32 Hayalet",
      "fotograf":
          "https://productimages.hepsiburada.net/s/91/550/110000033946917.jpg/format:webp",
      "fiyat": "44.91"
    },
  ];
  List<Map> yazici = [
    {
      "isim": "HP DeskJet 2710",
      "fotograf":
          "https://productimages.hepsiburada.net/s/43/550/10764967084082.jpg/format:webp",
      "fiyat": "829"
    },
    {
      "isim": "Mürekkep Püskürtmeli",
      "fotograf":
          "https://productimages.hepsiburada.net/s/138/550/110000091049485.jpg/format:webp",
      "fiyat": "2.298"
    },
    {
      "isim": "iSensy Lazer",
      "fotograf":
          "https://productimages.hepsiburada.net/s/35/550/10463853707314.jpg/format:webp",
      "fiyat": "6.699"
    },
    {
      "isim": "3D Yazıcı",
      "fotograf":
          "https://productimages.hepsiburada.net/s/129/550/110000079642801.jpg/format:webp",
      "fiyat": "32.550"
    },
    {
      "isim": "Barkod Yazıcı",
      "fotograf":
          "https://productimages.hepsiburada.net/s/205/550/110000180791788.jpg/format:webp",
      "fiyat": "14.500"
    },
  ];
  List<Map> beyazesya = [
    {
      "isim": "Grundig 580 LT",
      "fotograf":
          "https://productimages.hepsiburada.net/s/70/550/110000011599931.jpg/format:webp",
      "fiyat": "16.999"
    },
    {
      "isim": "Samsung 10.5 KG",
      "fotograf":
          "https://productimages.hepsiburada.net/s/198/550/110000168627964.jpg/format:webp",
      "fiyat": "7.498"
    },
    {
      "isim": "Bosch 10 KG",
      "fotograf":
          "https://productimages.hepsiburada.net/s/155/550/110000111100524.jpg/format:webp",
      "fiyat": "7.498"
    },
    {
      "isim": "Siemens 7 Programlı",
      "fotograf":
          "https://productimages.hepsiburada.net/s/154/550/110000111118335.jpg/format:webp",
      "fiyat": "10.042"
    },
    {
      "isim": "Bosch Ankastre",
      "fotograf":
          "https://productimages.hepsiburada.net/s/62/550/110000004095320.jpg/format:webp",
      "fiyat": "4.191"
    },
    {
      "isim": "Samsung Mikrodalga",
      "fotograf":
          "https://productimages.hepsiburada.net/s/21/550/9926748667954.jpg/format:webp",
      "fiyat": "1.699"
    },
    {
      "isim": "Profilo Siyah Ocak",
      "fotograf":
          "https://productimages.hepsiburada.net/s/48/550/10966077079602.jpg/format:webp",
      "fiyat": "1.947"
    },
  ];
  List<Map> fotografmakine = [
    {
      "isim": "Canon EOS 5D Mark",
      "fotograf":
          "https://productimages.hepsiburada.net/s/27/550/10184193146930.jpg/format:webp",
      "fiyat": "53.785"
    },
    {
      "isim": "Panasonic HC-X2000",
      "fotograf":
          "https://productimages.hepsiburada.net/s/160/550/110000117839665.jpg/format:webp",
      "fiyat": "47.940"
    },
    {
      "isim": "Sony FDR-AX700",
      "fotograf":
          "https://productimages.hepsiburada.net/s/22/550/9986464579634.jpg/format:webp",
      "fiyat": "25.849"
    },
    {
      "isim": "Canon IXUS 185",
      "fotograf":
          "https://productimages.hepsiburada.net/s/90/550/110000033268710.jpg/format:webp",
      "fiyat": "2.255"
    },
    {
      "isim": "Çocuk Kamera Mavi",
      "fotograf":
          "https://productimages.hepsiburada.net/s/182/550/110000146317190.jpg/format:webp",
      "fiyat": "309"
    },
    {
      "isim": "Çocuk Kamera Pembe",
      "fotograf":
          "https://productimages.hepsiburada.net/s/193/550/110000160548333.jpg/format:webp",
      "fiyat": "281"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //header
          header(categoryTitle, context),
          SizedBox(height: 32),

          //içerikler

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: hepsi.map((Map urun) {
                return buildContent(
                    urun["isim"], urun["fotograf"], urun["fiyat"], context);
              }).toList(),
            ),
          ),

          SizedBox(height: 50),
        ]),
      ),

      //bottom nav
      bottomNavigationBar("search"),
    ])));
  }
}

Widget buildContent(String title, String fotograf, String price, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return ProductDetailPage(title);
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 24,
            offset: Offset(0, 16),
          ),
        ],
      ),
      child: Column(
        children: [
          //SizedBox(height: 16),
          Image(
            image: NetworkImage(fotograf),
            height: 100,
            width: 100,
          ),
          //SizedBox(height: 22),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16),
              ),
              Text(
                "$price TL",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
