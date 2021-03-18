import 'package:flutter/material.dart';

import 'WatchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Youtube",
      home: Youtube(),
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      routes: {
        '/watch': (context) => WatchPage(),
      },
    );
  }
}

class Youtube extends StatefulWidget {
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  int id = 0;

  final tabs = <Widget>[
    homePage(),
    Center(child: Text('Explore')),
    Center(child: Text('Add')),
    Center(child: Text('Subscriptions')),
    Center(child: Text('Library')),
  ];

  final bottomNavigationBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
    BottomNavigationBarItem(icon: Icon(Icons.add, size: 50), label: ""),
    BottomNavigationBarItem(
        icon: Icon(Icons.subscriptions), label: "Subscriptions"),
    BottomNavigationBarItem(icon: Icon(Icons.video_library), label: "Library"),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBar = BottomNavigationBar(
      items: bottomNavigationBarItems,
      currentIndex: id,
      type: BottomNavigationBarType.fixed,
      onTap: (int value) {
        setState(() {
          id = value;
        });
      },
    );
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Youtube',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(
              Icons.cast,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          CircleAvatar(
            child: Text('A'),
            backgroundColor: Colors.red,
          )
        ],
      ),
      body: tabs[id],
      bottomNavigationBar: bottomNavigationBar,
    ));
  }
}

Widget title(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed('/watch');
    },
    child: Container(
        height: 300.0,
        //width: MediaQuery.of(context).size.width,
        child: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      "https://miro.medium.com/max/2560/1*1orxIbVfgZa4mB_qEL17Yg.jpeg"),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text("Y"),
                        backgroundColor: Colors.green,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Youtube title",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25)),
                          Text("Youtube name ad details",
                              style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                  //Devider(),
                ]))),
  );
}

Widget homePage() {
  return ListView.builder(
    itemCount: 20,
    itemBuilder: (context, index) {
      return title(context);
    },
  );
}
