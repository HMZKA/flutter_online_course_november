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
          body: Container(
            color: Colors.orange,
            width: double.infinity,
            padding: EdgeInsets.only(top: 12, left: 8),
            margin: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1+1+1+1=4
                // 1/4
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black,
                    child: Text(
                      'My First Text',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.amber,
                          // backgroundColor: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Text(
                      'My Second Text',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey,
                          // backgroundColor: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueAccent,
                    child: Text(
                      'My Third Text',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          // backgroundColor: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                    child: Text(
                      'My Fourth Text',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.teal,
                          // backgroundColor: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
