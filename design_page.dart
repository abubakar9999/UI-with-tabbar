import 'package:examui/model.dart';
import 'package:examui/tabbar.dart';
import 'package:flutter/material.dart';

import 'bottomnabbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              "live",
              style: TextStyle(color: Colors.amber[300]),
            ),
            CircleAvatar(
              radius: 3,
              backgroundColor: Colors.white,
            ),
          ],
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications_outlined),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(left: 16),
        child: ListView(children: [
          const Text(
            'Stories',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 125,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 100,
                              color: Colors.black45,
                            ),
                            Positioned(
                                bottom: 10,
                                child: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundImage: NetworkImage(
                                          "https://wallpapercave.com/wp/wp5618747.jpg"),
                                    ),
                                    Text(
                                      "Add your Story",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 10,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.red[300],
                                        size: 15,
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        )
                      : Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: Colors.white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    data[index].img.toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 100,
                              color: Colors.black54,
                              child: Center(
                                  child: Text(
                                data[index].title.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                          ],
                        );
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Container(height: double.maxFinite, child: SecondPage())
        ]),
      ),
      bottomNavigationBar: Bottomnavbar(),
    );
  }
}
