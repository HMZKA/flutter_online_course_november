import 'package:flutter/material.dart';
import 'package:flutter_online_course/webview_screen.dart';

buildNewsItem(model, context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => WebViewScreen(model.url),
      ));
    },
    child: Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(
              '${model.urlToImage ?? 'https://th.bing.com/th/id/OIP.DdXxhZk2RacuDvlptNWprgHaFK?w=285&h=198&c=7&r=0&o=5&dpr=1.25&pid=1.7'}'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${model.title ?? 'no title'}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ),
  );
}
