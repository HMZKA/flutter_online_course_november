import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My HomeScreen'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.account_circle_rounded,
            size: 35,
          ),
          Icon(
            CupertinoIcons.ant_fill,
            size: 35,
          ),
          Icon(
            Icons.add_alert,
            size: 35,
          )
        ],
      ),
    );
  }
}
