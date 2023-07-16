import 'package:baara_app/views/layouts/layout_home.dart';
import 'package:baara_app/views/layouts/layout_profile.dart';
import 'package:baara_app/views/layouts/layout_savedservices.dart';
import 'package:baara_app/views/layouts/layout_search.dart';
import 'package:flutter/material.dart';

import '../layouts/layout_inbox.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> layout = [
    InboxLayout(),
    SearchLayout(),
    HomeLayout(),
    SavedServicesLayout(),
    ProfileLayout(),
  ];
  int myIndex = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: layout[myIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          currentIndex: myIndex,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline_sharp),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,semanticLabel: "profile",),
              label: 'Person',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
