
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manga_reader/pages/my_home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
  
}