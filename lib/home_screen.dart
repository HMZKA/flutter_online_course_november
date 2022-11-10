import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 100;
  double height = 100;
  var color = Colors.black;
  double r = 0;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        if (height == 100) {
          height = 200;
          width = 200;
          color = Colors.red;
          r = 50;
        }
        //else {
        //   height = 100;
        //   width = 100;
        //   color = Colors.black;
        //   r = 0;
        // }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Animation'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(r)),
          height: height,
          width: width,
          curve: Curves.slowMiddle,
        ),
      ),
    );
  }
}
