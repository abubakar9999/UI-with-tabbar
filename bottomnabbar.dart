import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  @override
  State<Bottomnavbar> createState() => _MainPageState();
}

class _MainPageState extends State<Bottomnavbar> {
  var carentindex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: carentindex,
        onTap: (value) {
          setState(() {
            carentindex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: " ",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: " ",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 35,
              ),
              label: " ",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_rounded),
              label: " ",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.six__ft_apart),
              label: " ",
              backgroundColor: Colors.black),
        ]);
  }
}
