import 'package:flutter/material.dart';
import 'package:flutter_online_course/image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen')),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        children: List.generate(
            images.length,
            (index) => InkWell(
                  onTap: () {
                    print(images[index]);
                  },
                  child: Image.asset('${images[index]}'),
                )),
        // children: images
        //     .map((e) => InkWell(
        //         onTap: () {
        //           print(e.toString());
        //         },
        //         child: Image.asset('${e}')))
        //     .toList(),
      ),
    );
  }
}
