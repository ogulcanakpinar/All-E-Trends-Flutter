import 'package:flutter/material.dart';

Widget bottomNavigationBar(String page) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -3),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
          ),
        ],
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavicon(iconData: Icons.home_outlined, active: page == "home"),
          buildNavicon(iconData: Icons.apps_rounded, active: page == "search"),
          buildNavicon(iconData: Icons.shopping_bag, active: page == "cart"),
          buildNavicon(iconData: Icons.person_sharp, active: page == "profile"),
        ],
      ),
    ),
  );
}

Widget buildNavicon({required IconData iconData, required bool active}) {
  return Icon(iconData,
      size: 25, color: Color(active ? 0XFF0001FC : 0XFF0A1034));
}
