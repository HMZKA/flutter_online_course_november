import 'package:flutter/material.dart';

class AlignScreen extends StatefulWidget {
  const AlignScreen({super.key});

  @override
  State<AlignScreen> createState() => _AlignScreenState();
}

class _AlignScreenState extends State<AlignScreen> {
  bool align = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Align Animation'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: InkWell(
          onTap: () {
            setState(() {
              align = !align;
            });
          },
          child: Container(
            color: Colors.amber,
            child: AnimatedAlign(
              duration: Duration(seconds: 5),
              alignment: align
                  ? AlignmentDirectional.topStart
                  : AlignmentDirectional.bottomEnd,
              child: FlutterLogo(
                size: 50,
              ),
            ),
          )),
    );
  }
}
