import 'package:flutter/material.dart';
import 'package:mobilefilmticket/screens/Layout/appbarLayout.dart';
import 'package:mobilefilmticket/screens/Layout/drawer_layout.dart';
import 'package:mobilefilmticket/screens/ProfilePage/profile.dart';

import '../FavoritePage/favorite.dart';
import '../FilmListPage/film.dart';
import '../HomePage/home.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _BottomLayoutState();
}

class _BottomLayoutState extends State<MainLayout> {
  int myCurrentIndex = 0;
  List pages = const [
    HomePage(),
    FilmPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 35, 35, 1),
      appBar: const AppbarLayout(), // AppBar
      drawer: const DrawerLayout(), // Gắn Drawer vào Scaffold
      body: Stack(
        children: [
          pages[myCurrentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
              height: 85,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(18, 19, 20, 1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                selectedItemColor: const Color.fromRGBO(223, 80, 33, 1),
                unselectedItemColor: Colors.grey,
                elevation: 0,
                currentIndex: myCurrentIndex,
                onTap: (index) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.home, size: 30),
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.live_tv, size: 30),
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.favorite, size: 30),
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.person, size: 30),
                      ),
                      label: ""),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}