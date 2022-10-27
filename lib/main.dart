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
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            elevation: 17,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            title: Text('Flutter Course'),
            centerTitle: true,
            // titleSpacing: 100,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              Icon(Icons.call)
            ],
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  // color: Colors.green[600],
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.black, Colors.amber],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)
                  // shape: BoxShape.circle
                  ),
              width: 250,
              height: 200,
              child: Center(
                child: Text(
                  'My First Project',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.amber,
                      // backgroundColor: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
