import 'package:flutter/material.dart';
import 'package:technews/screen/discover_screen.dart';
import 'package:technews/screen/home_screen.dart';
import 'package:technews/screen/profile_screen.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black.withAlpha(100),
        items: [
      BottomNavigationBarItem(
        icon: Container(
          margin: const EdgeInsets.only(left: 50),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            icon: const Icon(Icons.home),
          ),
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, DiscoverScreen.routeName);
          },
          icon: const Icon(Icons.search),
        ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Container(
          margin: const EdgeInsets.only(right: 50),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            icon: const Icon(Icons.person),
          ),
        ),
        label: 'Profile',
      ),
         
      ],
    );
  }
}