import 'dart:async';

import 'package:flutter/material.dart';

class TweenScreen extends StatefulWidget {
  const TweenScreen({super.key});

  @override
  State<TweenScreen> createState() => _TweenScreenState();
}

class _TweenScreenState extends State<TweenScreen> {
  double fontsize = 15;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 6), (timer) {
      setState(() {
        fontsize = 30;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tween Animation'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
          child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 50, end: 200),
        duration: Duration(seconds: 2),
        builder: (context, value, child) => AnimatedContainer(
          color: Colors.red,
          duration: Duration(seconds: 4),
          height: value,
          width: value,
          child: Text(
            'My Tween Animation',
            style: TextStyle(fontSize: fontsize),
          ),
        ),
      )),
    );
  }
}
