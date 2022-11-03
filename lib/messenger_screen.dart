import 'package:flutter/material.dart';

class MessngerScreen extends StatelessWidget {
  var now = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/syndicate.jpg'),
            ),
            SizedBox(
              width: 5,
            ),
            Text('Chats')
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 18,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
          ),
          SizedBox(
            width: 7.5,
          ),
          CircleAvatar(
            radius: 18,
            child: Icon(
              Icons.edit,
              size: 20,
            ),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[400],
              ),
              child: Row(children: [
                Icon(Icons.search),
                SizedBox(
                  width: 7,
                ),
                Text('Search')
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  buildStoryItem(),
                  buildStoryItem(),
                  buildStoryItem(),
                  buildStoryItem(),
                  buildStoryItem(),
                  buildStoryItem(),
                  buildStoryItem(),
                  buildStoryItem(),
                  buildStoryItem(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('images/syndicate.jpg'),
                    ),
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.green,
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmad Ahmad Ahmad AhmadAhmad AhmadAhmad AhmadAhmad Ahmad',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'My name is Ahmad My name is AhmadMy name is AhmadMy name is AhmadMy name is Ahmad',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            '${now.format(context)}',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStoryItem() {
    return SizedBox(
      width: 66,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 33,
                backgroundImage: AssetImage('images/syndicate.jpg'),
              ),
              CircleAvatar(
                radius: 9,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.green,
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Ahmad Ahmad Ahmad AhmadAhmad AhmadAhmad AhmadAhmad Ahmad',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
