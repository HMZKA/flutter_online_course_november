import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        title: Text('Explore'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        backgroundColor: Colors.yellow[800],
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Khushi Gupta',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text('Good evening, let\'s start exploring places')
                  ],
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/moon.jpg'),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.teal.shade200)),
                      hintText: 'search here',
                      prefixIcon: Icon(CupertinoIcons.search)),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hot Searches',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    itemBuilder: (context, index) => buildHotSearch(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 15,
                    ),
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recomnded for you',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        clipBehavior: Clip.antiAlias,
                        elevation: 15,
                        child: Column(children: [
                          Image.asset(
                            'images/nature.jpg',
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Aleppo,Syria',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          Image.asset(
                            'images/lake.jpg',
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Baghdad,Iraq',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          )
                        ]),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildHotSearch() {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('images/route.jpg'),
        ),
        Text(
          'Assam',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
