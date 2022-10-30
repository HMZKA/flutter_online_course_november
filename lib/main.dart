import 'package:flutter/material.dart';
import 'package:flutter_online_course/home_screen.dart';
import 'package:flutter_online_course/image_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageScreen(),
    );
  }
}
