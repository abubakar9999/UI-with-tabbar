// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.grey[500],
              automaticIndicatorColorAdjustment: true,
              labelColor: Colors.black54,
              unselectedLabelStyle: TextStyle(color: Colors.white),
              tabs: [
                Container(
                  width: 120,
                  height: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Tab(
                      child: Text("For you"),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 40,
                  child: Card(
                    color: Colors.white30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Tab(
                      child: Text(
                        "Trending",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 40,
                  child: Card(
                    color: Colors.white30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Tab(
                      child: Text(
                        "Discover",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //  floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

            Expanded(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(
                  children: [
                    Container(
                        child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://wallpapercave.com/wp/wp5618747.jpg')),
                          title: Text(
                            "Mariam Rurua",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "3 min ago",
                            style: TextStyle(color: Colors.white30),
                          ),
                          trailing: Text(
                            "See All",
                            style: TextStyle(color: Colors.amber[400]),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 45, 41, 41),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.network(
                                            "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111-1500x1000.jpg",
                                          ),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Travel Switzerland,Lake Thun! \nHave fun with you....See more",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Enjoy yourself",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 184, 179, 179)),
                                              ),
                                              Divider(
                                                color: Color.fromARGB(
                                                    255, 85, 77, 77),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "21 posts",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "321 Fowlloars",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "4 Comments",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://techcrunch.com/wp-content/uploads/2021/01/GettyImages-1229901940.jpg?w=730&crop=1')),
                          title: Text(
                            "Elon Musk",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "41 min ago",
                            style: TextStyle(color: Colors.white30),
                          ),
                          trailing: Text(
                            "See All",
                            style: TextStyle(color: Colors.amber[400]),
                          ),
                        ),
                      ],
                    )),
                    Text(
                      "For you",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "For you",
                      style: TextStyle(color: Colors.white),
                    ),
                    //Container(child: const Icon(Icons.directions_bike)),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
