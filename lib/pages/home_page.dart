import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(
          onPressed: () {},
          color: Colors.white,
            icon: Icon(FeatherIcons.camera),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Instagram"
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(FeatherIcons.tv),),
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(FeatherIcons.send),),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home, size: 26,),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(FeatherIcons.search),
          ),
          BottomNavigationBarItem(
            label: "Content",
            icon: Icon(FeatherIcons.plusSquare),
          ),
          BottomNavigationBarItem(
            label: "Likes",
            icon: Icon(FeatherIcons.heart),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(FeatherIcons.user),
          ),
        ],
      ),
    );
  }
}
