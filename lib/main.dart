import 'package:flutter/material.dart';
import 'package:flutter_online_course/align_screen.dart';
import 'package:flutter_online_course/tween_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlignScreen(),
    );
  }
}
