import 'package:flutter/material.dart';

import 'main.dart';

class WatchPage extends StatefulWidget {
  @override
  _WatchPageState createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Container(
          height: 300.0,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
              "https://miro.medium.com/max/2560/1*1orxIbVfgZa4mB_qEL17Yg.jpeg"),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Youtube title',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('view', style: TextStyle(fontSize: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          Text('116K', style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.thumb_down_alt_outlined),
                          Text('10', style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share),
                          Text('share', style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.download_sharp),
                          Text('Download', style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.save_alt),
                          Text('Save', style: TextStyle(color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                  Row(
                    //crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Text('C'),
                        backgroundColor: Colors.red,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //  mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Text('Channel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text(
                            'Subscriber',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Text("SUBSCRIBE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 15)),
                    ],
                  ),
                ],
              );
            } else {
              return title(context);
            }
          }
          // Text('Youtube Title',style:TextStyle(fontWeight:FontWeight.bold))
          ,
        )),
      ]),
    ));
  }
}
