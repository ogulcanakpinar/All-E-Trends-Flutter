import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project01/home.dart';

void main() {
  runApp(const Project01());
}

class Project01 extends StatelessWidget {
  const Project01({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
