import 'package:flutter/material.dart';
import 'pages/profile.dart';
import 'pages/search_pages.dart';
import 'pages/beranda_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPage(),
    );
  }
}

