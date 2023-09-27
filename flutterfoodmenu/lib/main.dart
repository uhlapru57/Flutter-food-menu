import 'package:flutter/material.dart';
import 'package:flutterfoodmenu/homepage.dart';


void main() {
  runApp(FoodMenuApp());
}

class FoodMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}

