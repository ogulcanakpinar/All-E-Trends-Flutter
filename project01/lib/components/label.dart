import 'package:flutter/material.dart';

Widget label(String text) {
  return Container(
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Color.fromARGB(183, 67, 145, 209)),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
    ),
  );
}
