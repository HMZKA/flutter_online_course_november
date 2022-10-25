import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// statlesswidget
// statfulwidget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          elevation: 17,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text('Flutter Course'),
          centerTitle: true,
          // titleSpacing: 100,
          actions: [Icon(Icons.notifications), Icon(Icons.call)],
        ),
      ),
    );
  }
}
