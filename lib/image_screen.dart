import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImageScreen')),
      body: Center(
        child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            width: 250,
            height: 250,
            clipBehavior: Clip.antiAlias,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.5b403ecb10252db258a803907ce029c2?rik=ItoQqyEkVBOmvg&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f01%2f86372-flowers-dahlias-pink_flowers.jpg&ehk=tqH5fhQQ3rk3ju7FO0Ur%2bSDR%2bfEkqItEFg7xKsTi8eE%3d&risl=&pid=ImgRaw&r=0'),
            ),
          ),
          Text(
            'Flower',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                backgroundColor: Colors.black45),
          ),
          Icon(
            Icons.follow_the_signs,
            size: 30,
            color: Colors.red,
          )
        ]),
      ),
    );
  }
}
